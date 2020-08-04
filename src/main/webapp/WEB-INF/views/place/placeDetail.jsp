<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Awesome Place</title>
<link rel="stylesheet" href="resources/css/detail.css">


<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>

<body>
    <div class="wrapper__main">
        <ul class="nav">
            <li>
                <a href="#" class="header__logo">
                    Awesome Place
                </a>
            </li>

            <li class="header__dropdown">
                <a href="javascript:void(0)" class="header__button">Menu</a>
                <div class="header__content">
                    <a href="">SignIn</a>
                    <a href="">SignUp</a>
                </div>
            </li>
        </ul>

        <div class="main">
            <div class="place">
                <img class="image" src="${tourInfo.image}">
                <div class="place__detail">
                    <div class="mainHeader__left">
                        <h1>${tourInfo.title }</h1>
                    </div>
                    <div class="mainHeader__right rate">
                        <h1>4.1</h1>
                    </div>
                    <div style="clear: both;"></div>
                </div>
            </div>
            <div class="icon">
                <div>
                    <a>
                        <i class="fas fa-thumbs-up"></i>
                        <span class="icon_text">추천해요</span>
                    </a>
                </div>

                <div>
                    <a>
                        <i class="far fa-heart"></i>
                        <span class="icon_text">가고싶어요</span>
                    </a>
                </div>

                <div>
                    <a>
                        <i class="far fa-edit"></i>
                        <span class="icon_text">후기작성</span>
                    </a>
                </div>

                <div>
                    <a>
                        <i class="fas fa-share-alt-square"></i>
                        <span class="icon_text">공유하기</span>
                    </a>
                </div>
            </div>


            <div>
                <div class="info_header">
                    <div class="header__left">
                        <span>일반정보</span>
                    </div>
                    <div class="header__right">
                        <span><i class="far fa-question-circle"></i></span>
                    </div>
                </div>
                <div style="clear:both;"></div>

                <div class="normal_info">
                	<!-- 관광지 -->
                	<c:if test="${typeId eq 12}">
                		<p class="info_name">체험 가능 연령</p>
                		<c:if test="${detail.expAgeRange eq ''}">
	                		<p>전연령 가능</p>
                		</c:if>
                		<c:if test="${detail.expAgeRange ne ''}">
	                		<p>${detail.expAgeRange }</p>
                		</c:if>
                		<p class="info_name">체험 안내</p>
                		<c:if test="${detail.expGuide eq ''}">
	                		<p>현장문의</p>
                		</c:if>
                		<c:if test="${detail.expGuide ne ''}">
	                		<p>${detail.expAgeRange }</p>
                		</c:if>
                		<p class="info_name">이용 시간</p>
                		<c:if test="${detail.useTime eq ''}">
	                		<p>현장문의</p>
                		</c:if>
                		<c:if test="${detail.useTime ne ''}">
	                		<p>${detail.useTime }</p>
                		</c:if>
                	</c:if>
                	<!-- 문화 시설 -->
                	<c:if test="${typeId eq 14}">
                		<p class="info_name">주차 요금</p>
                		<c:if test="${detail.parkingFee eq ''}">
	                		<p>현장 문의</p>
                		</c:if>
                		<c:if test="${detail.parkingFee ne ''}">
	                		<p>${detail.parkingFee }</p>
                		</c:if>
                		<p class="info_name">이용 요금</p>
                		<c:if test="${detail.useFee eq ''}">
	                		<p>현장문의</p>
                		</c:if>
                		<c:if test="${detail.useFee ne ''}">
	                		<p>${detail.useFee }</p>
                		</c:if>
                		<p class="info_name">이용 시간</p>
                		<c:if test="${detail.useTimeCulture eq ''}">
	                		<p>현장문의</p>
                		</c:if>
                		<c:if test="${detail.useTimeCulture ne ''}">
	                		<p>${detail.useTimeCulture }</p>
                		</c:if>
                	</c:if>
                	<!-- 페스티벌 -->
                	<c:if test="${typeId eq 15}">
                		<p class="info_name">관람 가능 연령</p>
                		<c:if test="${detail.agelimit eq ''}">
	                		<p>현장 문의</p>
                		</c:if>
                		<c:if test="${detail.agelimit ne ''}">
	                		<p>${detail.agelimit }</p>
                		</c:if>
                		<p class="info_name">행사 시작일</p>
                		<c:if test="${detail.eventStartDate eq ''}">
	                		<p>현장문의</p>
                		</c:if>
                		<c:if test="${detail.eventStartDate ne ''}">
	                		<p>${detail.eventStartDate }</p>
                		</c:if>
                		<p class="info_name">행사 종료일</p>
                		<c:if test="${detail.eventEndDate eq ''}">
	                		<p>현장문의</p>
                		</c:if>
                		<c:if test="${detail.eventEndDate ne ''}">
	                		<p>${detail.eventEndDate }</p>
                		</c:if>
                		<p class="info_name">이용요금</p>
                		<c:if test="${detail.usetimeFestival eq ''}">
	                		<p>현장문의</p>
                		</c:if>
                		<c:if test="${detail.usetimeFestival ne ''}">
	                		<p>${detail.usetimeFestival }</p>
                		</c:if>
                	</c:if>
                	<!-- 코스여행 -->
                	<c:if test="${typeId eq 25}">
                		<p class="info_name">총 거리</p>
                		<c:if test="${detail.distance eq ''}">
	                		<p>현장 문의</p>
                		</c:if>
                		<c:if test="${detail.distance ne ''}">
	                		<p>${detail.distance }</p>
                		</c:if>
                		<p class="info_name">소요 시간</p>
                		<c:if test="${detail.takeTime eq ''}">
	                		<p>현장문의</p>
                		</c:if>
                		<c:if test="${detail.takeTime ne ''}">
	                		<p>${detail.takeTime }</p>
                		</c:if>
                	</c:if>
                	<!-- 레포츠 -->
                	<c:if test="${typeId eq 28}">
                		<c:if test="${detail.openPeriod ne ''}">
	                		<p class="info_name">개장 시간</p>
	                		<p>${detail.openPeriod }</p>
                		</c:if>
                		<p class="info_name">주차 요금</p>
                		<c:if test="${detail.parkingFeeLeports eq ''}">
	                		<p class="info_name">현장문의</p>
                		</c:if>
                		<c:if test="${detail.parkingFeeLeports ne ''}">
	                		<p>${detail.parkingFeeLeports }</p>
                		</c:if>
                		<c:if test="${detail.reservation ne ''}">
	                		<p class="info_name">예약 안내</p>
	                		<p>${detail.reservation }</p>
                		</c:if>
                		<c:if test="${detail.useFeeLeports ne ''}">
	                		<p class="info_name">이용요금</p>
	                		<p>${detail.useFeeLeports }</p>
                		</c:if>
                		<c:if test="${detail.useTimeLeports ne ''}">
	                		<p class="info_name">이용시간</p>
	                		<p>${detail.useTimeLeports }</p>
                		</c:if>
                	</c:if>
               		<!-- 숙박 -->
                	<c:if test="${typeId eq 32}">
                	
                		<p class="info_name">바베큐장</p>
                		<c:if test="${detail.barbecue eq ''}">
	                		<p>현장 문의</p>
                		</c:if>
                		<c:if test="${detail.barbecue ne ''}">
	                		<p>${detail.barbecue }</p>
                		</c:if>
                		
                		<p class="info_name">체크인</p>
                		<c:if test="${detail.checkinTime eq ''}">
	                		<p>현장문의</p>
                		</c:if>
                		<c:if test="${detail.checkinTime ne ''}">
	                		<p>${detail.checkinTime }</p>
                		</c:if>
                		
                		<p class="info_name">체크아웃</p>
                		<c:if test="${detail.checkoutTime eq ''}">
	                		<p>현장문의</p>
                		</c:if>
                		<c:if test="${detail.checkoutTime ne ''}">
	                		<p>${detail.checkoutTime }</p>
                		</c:if>
                		
                		<c:if test="${detail.reservationUrl ne ''}">
	                		<p class="info_name">예약 하기</p>
		                	<p>${detail.reservationUrl }</p>
                		</c:if>
                		
                		<c:if test="${detail.subfacility ne ''}">
	                		<p class="info_name">부대시설</p>
		                	<p>${detail.subfacility }</p>
                		</c:if>
                	</c:if>
                	<!-- 쇼핑 -->
                	<c:if test="${typeId eq 38}">
                		<c:if test="${detail.openTime ne ''}">
                			<p class="info_name">개장 시간</p>
	                		<p>${detail.openTime }</p>
                		</c:if>

                		<c:if test="${detail.saleItem ne ''}">
	                		<p class="info_name">판매 품목</p>
	                		<p>${detail.saleItem }</p>
                		</c:if>

                		<c:if test="${detail.shopGuide ne ''}">
	                		<p class="info_name">매장 안내</p>
	                		<p>${detail.shopGuide }</p>
                		</c:if>
                	</c:if>
                	<!-- 음식점 -->
                	<c:if test="${typeId eq 39}">
                		<c:if test="${detail.firstMenu ne ''}">
                			<p class="info_name">대표 메뉴</p>
	                		<p>${detail.firstMenu }</p>
                		</c:if>

                		<c:if test="${detail.openTimeFood ne ''}">
	                		<p class="info_name">영업 시간</p>
	                		<p>${detail.openTimeFood }</p>
                		</c:if>

                		<c:if test="${detail.treatMenu ne ''}">
	                		<p class="info_name">취급 메뉴</p>
	                		<p>${detail.treatMenu }</p>
                		</c:if>
                	</c:if>
                </div>
            </div>

            <div>
                <div class="info_header">
                    <div class="header__left">
                        <span>소개</span>
                    </div>
                </div>
                <div style="clear:both;"></div>

                <div class="info_text">
                    <span style="margin: 5px;">${tourInfo.overview }</span>
                </div>
            </div>

            <div>
                <div class="info_header">
                    <div class="header__left">
                        <span>위치</span>
                    </div>
                </div>
                <div style="clear:both;"></div>

				<div id="map" style="width: 100%; height: 300px;"></div>
				<script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0128abab124ce04ae17c622f465a5647&libraries=services,clusterer"></script>
				<script>
				var infowindow = new kakao.maps.InfoWindow({zIndex:1});
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng("${tourInfo.mapy}","${tourInfo.mapx}"),
			level: 6
		};
		var map = new kakao.maps.Map(container, options);
		 var clusterer = new kakao.maps.MarkerClusterer({
		        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
		        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
		        minLevel: 10 // 클러스터 할 최소 지도 레벨 
		    });
		 var marker = new kakao.maps.Marker({
			    position: new kakao.maps.LatLng("${tourInfo.mapy}", "${tourInfo.mapx}" )
			});
		 
			clusterer.addMarker(marker);
		        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
		        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + "${tourInfo.title}" + '</div>');
		        infowindow.open(map, marker);
			
	</script>

			</div>
		</div>
		<div class="footer"></div>
	</div>
</body>

</html>