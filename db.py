import pprint
import pymysql
import requests
import webbrowser
from bs4 import BeautifulSoup as bs
from selenium import webdriver

tabledict = {12 :'tourplace', 14 : 'culture' , 15 :'festival', 25 : 'course', 28 : 'leports' , 32 : 'lodgment', 38 : 'shopping', 39 : 'restaurant'}
URL = 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=gAgIdPkL9wh55d59ACpjljEduRtTrvBooU9ZLJJmtESF%2Fyfe3i1F65XlDslHoWTjN10OxyuoRJXavvQpnJRLZw%3D%3D&contentTypeId=&areaCode=&sigunguCode=&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=A&numOfRows=30000&pageNo=1&_type=json'
res = requests.get(URL)
respon = res.json()
for i in range(25344):
    print('i = {}'.format(i))
    temp = respon['response']['body']['items']['item'][i+25344]
    if "addr1" in temp:
        add = temp['addr1']
        if "addr2" in temp:
            address = add + ' ' + str(temp['addr2'])
        else :
            address = add
    else:
        address= ''
    if "areacode" in temp : areacode = temp['areacode']
    else : areacode = 0
    contentid = temp['contentid']
    contenttypeid = temp['contenttypeid']
    # 공통정보에서 overview 가지고 오기 ( 웹 크롤링)
    commonurl = 'http://api.visitkorea.or.kr/guide/tourDetail.do?contentId={}&langtype=KOR&typeid={}&oper=area&burl=&contentTypeId=&areaCode=&sigunguCode=&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=A&numOfRows=12&pageNo=1'.format(contentid, contenttypeid)
    path = "C:/chromedriver"
    chrome_options = webdriver.ChromeOptions()
    chrome_options.add_argument('headless')
    driver = webdriver.Chrome(path, chrome_options=chrome_options)
    driver.get(commonurl)
    html = driver.page_source
    soup = bs(html,'html.parser')
    table2 = soup.find('div',class_="summary")
    overview = str(table2.find("p").get_text()).strip()
    tempdict = {}
    table2 = soup.find("div",class_="txtData none").find("ul").select('li')

    conn = pymysql.connect(host='localhost', port=3306, user='root', password='123123',
                           db='mydb', charset='utf8')

    image,mapx,mapy,title,tel,zipcode,sigungu = '', 0.0, 0.0, '','','',0
    if "firstimage" in temp : image = temp['firstimage']
    if "mapx" in temp : mapx = temp['mapx']
    if "mapy" in temp : mapy = temp['mapy']
    if "title" in temp : title = temp['title']
    title = "'{}'".format(title)
    if "tel" in temp : tel = str(temp['tel'])
    if "zipcode" in temp : zipcode = temp['zipcode']
    if "sigungucode" in temp : sigungu = temp['sigungucode']

    sql = "INSERT INTO place (contentid,contenttypeid,mapx,mapy,tel,title,zipcode,areacode,sigunguCode,address,image,overview) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
    val = (int(contentid),int(contenttypeid),float(mapx),float(mapy),str(tel),str(title),str(zipcode),int(areacode),int(sigungu),str(address),str(image),str(overview))
    curs = conn.cursor()
    curs.execute(sql,val)
    print("finish place")

    infocenter, accomcount, chkbabycarriage, chkcreditcard, chkpet,parking,restdate = '','','','','','',''
    for element in table2:
        tempstr = str(element)
        catag = str(element.find("strong").get_text().rstrip(' :'))
        print(catag)
        if catag == '예약 안내':
            leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
            cutting = leftcut.rstrip('</li>')
            infocenter = cutting
        if catag == '문의 및 안내':
            leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
            cutting = leftcut.rstrip('</li>')
            infocenter = cutting
        if catag == '수용인원':
            leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
            cutting = leftcut.rstrip('</li>')
            accomcount = cutting
        if catag == '유모차 대여 여부':
            leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
            cutting = leftcut.rstrip('</li>')
            chkbabycarriage = cutting
        if catag == '신용카드 가능 여부':
            leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
            cutting = leftcut.rstrip('</li>')
            chkcreditcard = cutting
        if catag == '애완동물 동반 가능 여부':
            leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
            cutting = leftcut.rstrip('</li>')
            chkpet = cutting
        if catag == '주차시설':
            leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
            cutting = leftcut.rstrip('</li>')
            parking = cutting
        if catag == '쉬는날':
            leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
            cutting = leftcut.rstrip('</li>')
            restdate = cutting
        if catag == '쉬는 날':
            leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
            cutting = leftcut.rstrip('</li>')
            restdate = cutting
    commonsql = "INSERT INTO samething (accomcount,chkbabycarriage,chkcreditcard,chkpet,infocenter,parking,restdate,place_contentid) VALUES (%s,%s,%s,%s,%s,%s,%s,%s)"
    commonvalue = (
    str(accomcount), str(chkbabycarriage), str(chkcreditcard), str(chkpet), str(infocenter), str(parking),str(restdate), int(contentid))
    commoncurs = conn.cursor().execute(commonsql, commonvalue)
    print("finish common")

    imagetable = soup.find('div',class_="imgGallery")
    if imagetable :
        visited = []
        tmp = imagetable.find('div', class_ = "bx-wrapper").find_all('li')
        length = len(tmp)
        for z in tmp :
            if (len(visited) != 0 ) :
                if (visited[0] == z.find('img').get('alt')) :
                    break
                else :
                    visited.append(z.find('img').get('alt'))
            else :
                visited.append(z.find('img').get('alt'))

            imagesql = "INSERT INTO image (contentid, originimgurl) VALUES (%s,%s)"
            imageval = (int(contentid), str(z.find('img').get('src')))
            curs = conn.cursor()
            curs.execute(imagesql, imageval)

    print("finish image")

    expagerange, expguide, usetime = '', '', ''
    parkingfee, usefee, usetimeculture = '', '', ''
    agelimit, bookingplace, discountinfofestival, eventenddate, eventplace, eventstartdate, placeinfo, playtime, program, sponsor1, sponsor2, sponsor1tel, sponsor2tel, subevent, usetimefestival, spendtimefestival = '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
    distance, taketime = '', ''
    openperiod, parkingfeeleports, reservation, usefeeleports, usetimeleports = '', '', '', '', ''
    barbecue, campfire, checkintime, checkouttime, chkcooking, foodplace, pickup, publicbath, reservationlodgin, reservationurl, roomcount, roomtype, subfacility = '', '', '', '', '', '', '', '', '', '', '', '', ''
    opentime, saleitem, shopguide = '', '', ''
    firstmenu, kidsfacility, opentimefood, packing, reservationfood, smoking, treatmenu = '', '', '', '', '', '', ''

    print(contenttypeid)
    print(contentid)
    if contenttypeid == 12:
        for element in table2:
            catag = str(element.find("strong").get_text().rstrip(' :')).strip()
            tempstr = str(element)
            if catag == '체험가능연령' :
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                expagerange = cutting
                continue
            if catag == '체험안내':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                expguide  = cutting
                continue
            if catag == '이용시간':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                usetime  = cutting
                continue
        toursql = "INSERT INTO tourplace (contentid,  expagerange, expguide ,usetime) VALUES (%s,%s,%s,%s)"
        tourval = (int(contentid), str(expagerange),str(expguide),str(usetime))
        curs = conn.cursor()
        curs.execute(toursql, tourval)

    if contenttypeid == 14 :
        print(catag)
        for element in table2:
            catag = str(element.find("strong").get_text().rstrip(' :')).strip()
            tempstr = str(element)
            if catag == '주차요금':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                parkingfee  = cutting
                continue
            if catag == '관람료':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                usefee = cutting
                continue
            if catag == '이용요금':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                usefee = cutting
                continue
            if catag == '이용시간':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                usetimeculture = cutting
                continue
        culturesql = "INSERT INTO cultural (contentid, parkingfee, usefee, usetimeculture) VALUES (%s,%s,%s,%s)"
        cultureval = (int(contentid), str(parkingfee),str(usefee),str(usetimeculture))
        curs = conn.cursor()
        curs.execute(culturesql, cultureval)

    if contenttypeid == 15 :
        for element in table2:
            catag = str(element.find("strong").get_text().rstrip(' :')).strip()
            tempstr = str(element)
            if catag == '관람가능연령':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                agelimit = cutting
                continue
            if catag == '예매처':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                bookingplace = cutting
                continue
            if catag == '할인정보':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                discountinfofestival = cutting
                continue
            if catag == '행사종료일':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                eventenddate = cutting
                continue
            if catag == '행사장소':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                eventplace = cutting
                continue
            if catag == '행사시작일':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                eventstartdate = cutting
                continue
            if catag == '행사장 위치안내':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                placeinfo = cutting
                continue
            if catag == '공연시간':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                playtime = cutting
                continue
            if catag == '프로그램':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                program = cutting
                continue
            if catag == '주최자 정보':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                sponsor1 = cutting
                continue
            if catag == '주관자 정보':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                sponsor2 = cutting
                continue
            if catag == '주최자 연락처':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                sponsor1tel = cutting
                continue
            if catag == '주관자 연락처':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                sponsor2tel = cutting
                continue
            if catag == '부대행사':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                subevent = cutting
                continue
            if catag == '이용요금':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                usetimefestival = cutting
                continue
            if catag == '관람소요시간':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                spendtimefestival = cutting
                continue
        festivalsql = "INSERT INTO festival (contentid, agelimit, bookingplace, discountinfofestival, eventenddate, eventplace, eventstartdate, placeinfo, playtime, program, sponsor1, sponsor2, sponsor1tel, sponsor2tel, subevent, usetimefestival, spendtimefestival) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
        festivalval = (int(contentid), str(agelimit),str(bookingplace),str(discountinfofestival),str(eventenddate),str(eventplace),str(eventstartdate),str(placeinfo),str(playtime),str(program),str(sponsor1),str(sponsor2),str(sponsor1tel),str(sponsor2tel),str(subevent),str(usetimefestival),str(spendtimefestival))
        curs = conn.cursor()
        curs.execute(festivalsql, festivalval)

    if contenttypeid == 25:
        for element in table2:
            catag = str(element.find("strong").get_text().rstrip(' :')).strip()
            tempstr = str(element)
            if catag == '총 거리':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                distance = cutting
                continue
            if catag == '관람소요시간' or '소요시간':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                taketime = cutting
                continue
        coursesql = "INSERT INTO course (contentid, distance, taketime) VALUES (%s,%s,%s)"
        courseval = (int(contentid), str(distance),str(taketime))
        curs = conn.cursor()
        curs.execute(coursesql, courseval)


    if contenttypeid == 28 :
        for element in table2:
            catag = str(element.find("strong").get_text().rstrip(' :')).strip()
            tempstr = str(element)
            if catag == '개장시간':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                openperiod = cutting
                continue
            if catag == '주차요금':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                parkingfeeleports = cutting
                continue
            if catag == '예약안내':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                reservation = cutting
                continue
            if catag == '이용요금':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                usefeeleports = cutting
                continue
            if catag == '이용시간':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                usetimeleports = cutting
                continue
        leportssql = "INSERT INTO leports (contentid, openperiod, parkingfeeleports, reservation, usefeeleports, usetimeleports) VALUES (%s,%s,%s,%s,%s,%s)"
        leportsval = (int(contentid), str(openperiod), str(parkingfeeleports), str(reservation), str(usefeeleports), str(usetimeleports))
        curs = conn.cursor()
        curs.execute(leportssql, leportsval)

    if contenttypeid == 32 :
        for element in table2:
            catag = str(element.find("strong").get_text().rstrip(' :')).strip()
            tempstr = str(element)
            if catag == '바베큐장':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                barbecue = cutting
                continue
            if catag == '캠프파이어':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                campfire = cutting
                continue
            if catag == '체크인':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                checkintime = cutting
                continue
            if catag == '체크아웃':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                checkouttime = cutting
                continue
            if catag == '조리 가능':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                chkcooking = cutting
                continue
            if catag == '식음료장':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                foodplace = cutting
                continue
            if catag == '픽업서비스':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                pickup = cutting
                continue
            if catag == '공용샤워실':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                publicbath = cutting
                continue
            if catag == '예약 안내':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                reservationlodgin = cutting
                continue
            if catag == '예약안내 홈페이지':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                reservationurl = cutting
                continue
            if catag == '객실 수':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                roomcount = cutting
                continue
            if catag == '객실 유형':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                roomtype = cutting
                continue
            if catag == '부대 시설':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                subfacility = cutting
                continue
        lodgesql= "INSERT INTO lodgment (contentid,barbecue, campfire, checkintime, checkouttime, chkcooking, foodplace, pickup, publicbath, reservationlodgin, reservationurl, roomcount, roomtype, subfacility) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
        lodgeval = (int(contentid), str(barbecue), str(campfire), str(checkintime), str(checkouttime), str(chkcooking), str(foodplace), str(pickup), str(publicbath), str(reservationlodgin), str(reservationurl), str(roomcount), str(roomtype), str(subfacility))
        curs = conn.cursor()
        curs.execute(lodgesql, lodgeval)

    if contenttypeid == 38 :
        for element in table2:
            catag = str(element.find("strong").get_text().rstrip(' :')).strip()
            tempstr = str(element)
            if catag == '영업시간':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                opentime = cutting
                continue
            if catag == '판매품목':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                saleitem = cutting
                continue
            if catag == '매장안내':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                shopguide = cutting
                continue
        shoppingsql = "INSERT INTO shopping (contentid ,opentime, saleitem, shopguide) VALUES (%s,%s,%s,%s)"
        shoppingval = (int(contentid), str(opentime), str(saleitem), str(shopguide))
        curs = conn.cursor()
        curs.execute(shoppingsql, shoppingval)

    if contenttypeid == 39 :
        for element in table2:
            catag = str(element.find("strong").get_text().rstrip(' :')).strip()
            tempstr = str(element)
            if catag == '대표 메뉴':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                firstmenu = cutting
                continue
            if catag == '어린이놀이방':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                kidsfacility = cutting
                continue
            if catag == '영업 시간':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                opentimefood = cutting
                continue
            if catag == '포장 가능':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                packing = cutting
                continue
            if catag == '예약안내':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                reservationfood = cutting
                continue
            if catag == '금연/흡연':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                smoking = cutting
                continue
            if catag == '취급 메뉴':
                leftcut = tempstr.lstrip("<li><strong>{} : </strong>".format(catag))
                cutting = leftcut.rstrip('</li>')
                treatmenu = cutting
                continue
        restaurantsql = "INSERT INTO restaurant (contentid ,firstmenu, kidsfacility, opentimefood, packing, reservationfood, smoking, treatmenu) VALUES (%s,%s,%s,%s,%s,%s,%s,%s)"
        restaurantval = (int(contentid), str(firstmenu), str(kidsfacility), str(opentimefood), str(packing), str(reservationfood), str(smoking), str(treatmenu))
        curs = conn.cursor()
        curs.execute(restaurantsql, restaurantval)

    conn.commit()

conn.close()