<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Awesome Place</title>
    <link rel="stylesheet" href="resources/css/main.css">
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
            <div class="mainImage__container">
                <img class="mainImage__image"
                    src="https://images.unsplash.com/photo-1530789253388-582c481c54b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
                    alt="mainImage" style="width: 100%;">
                <div class="mainImage__text">
                    <p class="mainImage__mainText">명현님을 위한 특별한 장소</p>
                    <p class="mainImage__subText">
                        <span class="subText__location">덕명동</span>
                        근처
                        <span class="subText__distance">${distance }km</span>
                    </p>
                    <button id="open">다른 위치에서 알아보기</button>
                </div>
            </div>
            <div class="modal-wrapper" style="display: none;">
                <div class="modal">
                    <div class="modal-title">
                        다른 위치에서 알아보기
                    </div>
                    <form>
                        <div class="setLocation">

                        </div>
                        <div class="setDistance">
                            <p id="rangeValue">5</p>
                            <input id="range" type="range" name="distance" min="1" max="10" step="1" value="5" onchange="getRangeValue(value)">
                        </div>
                        <div class="close-wrapper">
                            <input type="submit" value="검색">
                            <button id="close">취소</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="main__options">
                <div class="main__showPlacesOption">
                    <input type="checkbox" name="" id="allPlaces">
                    <label for="allPlaces">모든 관광지 보기</label>
                </div>
                <div class="main__orderOption">

                </div>
            </div>
            <div class="places">
                <c:forEach var="place" items="${tourList }">
                    <div class="places__place">
                	<c:if test="${place.image ne '' }">
                        <div
                        	class="place__image"
                        	style="background-image: url('${place.image}')"
                    	></div>
                        <div class="place__content1">
                        	<h3 style="margin: 0;">${place.title }</h3>
                        	<p style="margin: 0;">${place.address }</p>
                    	</div>
                    </c:if>
                	<c:if test="${place.image eq '' }">
                    	<div
                        	class="place__image"
                        	style="background-image: url('http://www.owlenergy.biz/images/owl_img/slide/nopicture.jpg')"
                    	></div>
                        <div class="place__content2">
                        	<p style="margin: 0;">${place.title }</p>
                        	<p style="margin: 0;">${place.address }</p>
                    	</div>
                    </c:if>                        
                    </div>
                </c:forEach>
            </div>
        </div>

        <div class="footer">
            <p style="margin: 7px;">Copyright 2019. 공수래공수거. ALL RIGTHS RESERVED.</p>
        </div>
    </div>

    <script>
        const open = document.getElementById("open");
        const close = document.getElementById("close");
        const modal = document.querySelector(".modal-wrapper");

        open.onclick = () => {
            modal.style.display = "flex";
        };
        close.onclick = () => {
            modal.style.display = "none";
        };

        getRangeValue = (value) => {
            const rangeValue = document.getElementById("rangeValue");
            rangeValue.innerHTML = value;
        }
    </script>
</body>

</html>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
<<<<<<< HEAD
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Awesome Place</title>
    <link rel="stylesheet" href="resources/css/main.css">

    <link rel="stylesheet" href="resources/css/map.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
=======
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Awesome Place</title>
	<link rel="stylesheet" href="resources/css/main.css">

	<link rel="stylesheet" href="resources/css/map.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<<<<<<< HEAD
>>>>>>> 17a85c6... 유창오| main.jsp 필터링 버튼 디자인 수정
=======
	<script src="https://kit.fontawesome.com/573aa2aa9b.js"></script>
>>>>>>> 26cabbf... 유창오| 헤더 오류해결 및 디자인 수정, 메인페이지 디자인 수정
</head>

<body>
    <div class="wrapper__main">
<<<<<<< HEAD
        <ul class="nav">
            <li>
                <a href="main.do" class="header__logo">
                    Awesome Place
                </a>
            </li>

            <li class="header__dropdown">
                <a href="javascript:void(0)" class="header__button">Menu</a>
                <div class="header__content">
                    <a href="loginForm.do">SignIn</a>
                    <a href="signUpForm.do">SignUp</a>
                </div>
            </li>
        </ul>
=======
        
>>>>>>> cadb329... 유창오| createReview 페이지 생성, 디자인 일부 수정

<<<<<<< HEAD
        <div class="main">
            <div class="mainImage__container">
                <img class="mainImage__image"
                    src="https://images.unsplash.com/photo-1530789253388-582c481c54b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
                    alt="mainImage" style="width: 100%;">
                <div class="mainImage__text">
                    <p class="mainImage__mainText">명현님을 위한 특별한 장소</p>
                    <p class="mainImage__subText">
                        <span class="subText__location">덕명동</span>
                        근처
                        <span class="subText__distance">${distance }km</span>
                    </p>

<<<<<<< HEAD
                    <button id="open">다른 위치에서 알아보기</button>
                </div>
            </div>
            <div class="modal-wrapper" style="display: none;">
                <div class="modal">
                    <div class="modal-title">
                        다른 위치에서 알아보기
                    </div>
                    <form>
                        <div class="setLocation">
=======
			<li class="header__dropdown">
				<c:if test="${sessionScope.memberType eq 'admin'}">
					<a href="javascript:void(0)" class="header__button" style="padding: 15px 10px 15px 65px;">
						Menu
					</a>
				</c:if>
				<c:if test="${sessionScope.memberType ne 'admin'}">
					<a href="javascript:void(0)" class="header__button" style="padding: 15px 10px 15px 28px;">
						Menu
					</a>
				</c:if>

				<c:if test="${sessionScope.ID eq null}">
					<div class="header__content">
						<a href="loginForm.do">SignIn</a>
						<a href="signUpForm.do">SignUp</a>
					</div>
				</c:if>
				<c:if test="${sessionScope.ID ne null}">
					<div class="header__content">
						<a href="logout.do">Signout</a>
						<a href="myinfo.do">MyInfo</a>
						<c:if test="${sessionScope.memberType eq 'admin'}">
<<<<<<< HEAD
							<a href="memberlist.do">MemberList</a>
							<a href="insertplace.do">InsertPlace</a>
=======
							<a href="memberlist.do">AdminPage</a>
>>>>>>> 1ebebab... 유창오| 헤더 메뉴 리스트 수정, 메인페이지 관광지 border-radius값 수정
						</c:if>
					</div>
				</c:if>
			</li>
		</ul>
>>>>>>> 17a85c6... 유창오| main.jsp 필터링 버튼 디자인 수정

                        </div>
                        <div class="setDistance">
                            <p id="rangeValue">5</p>
                            <input id="range" type="range" name="distance" min="1" max="10" step="1" value="5"
                                onchange="getRangeValue(value)">
                        </div>
                        <div class="close-wrapper">
                            <input type="submit" value="검색">
                            <button id="close">취소</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="map_wrap">
                <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
=======
		<div class="main">
			<div class="mainImage__container">
				<img class="mainImage__image"
					src="https://images.unsplash.com/photo-1530789253388-582c481c54b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
					alt="mainImage" style="width: 100%;">
				<div class="mainImage__text">
					<c:if test="${not empty ID}">
						<p class="mainImage__mainText">
							<strong>${name}</strong>님을 위한 특별한 장소
						</p>
					</c:if>
					<c:if test="${empty ID}">
						<p class="mainImage__mainText">당신을 위한 특별한 장소</p>
					</c:if>

					<p class="mainImage__subText">
						<span class="subText__location">${address}
						</span>근처<br>

						<span class="subText__distance">${distance }km</span>
					</p>
					<button id="open"
						style="border-radius: 5px; border: 1px solid black; background: darkcyan; padding: 7px; color: white; font-family: 'Song Myung'; font-size: 16px;">다른
						위치에서 검색 <span style="margin-top: 3px;"><i class="fas fa-search"></i></span></button>
				</div>
			</div>
			<div class="modal-wrapper" style="display: none;">
				<div class="modal">
					<div class="modal-title" style="padding: 10px; text-align: center;">다른 위치에서 알아보기</div>
					<div class="map_wrap">
<<<<<<< HEAD
<<<<<<< HEAD
						<div id="map"
							style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
>>>>>>> 59946f9... 유창오| main 메인텍스트 디자인 수정, memberlist 테이블 및 pagination 디자인 수정
=======
						<div id="map" style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
>>>>>>> 17a85c6... 유창오| main.jsp 필터링 버튼 디자인 수정

<<<<<<< HEAD
                <div id="menu_wrap" class="bg_white">
                    <div class="option">
                        <div>
                            <form onsubmit="searchPlaces(); return false;">
                                키워드 : <input type="text" value="" id="keyword" size="15">
                                <button type="submit">검색하기</button>
                            </form>
                        </div>
                    </div>
                    <hr>
                    <ul id="placesList"></ul>
                    <div id="pagination"></div>
                </div>
            </div>
            <script type="text/javascript"
                src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0128abab124ce04ae17c622f465a5647&libraries=services,clusterer"></script>
            <script src="resources/js/map.js"></script>
            <script>
                setMarker("${mapy}", "${mapx}")
            </script>

            <div class="main__options">
                <div class="main__showPlacesOption">
<<<<<<< HEAD
                    <input type="checkbox" name="" id="allPlaces">
                    <label for="allPlaces">모든 관광지 보기</label>
=======
                    <form id="filterOptions">
                        <input
                            class="filter__input"
                            type="checkbox" 
                            id="allPlaces" 
                            name="allPlaces"
                        >
                        <label class="filter__label" for="allPlaces">모든 관광지 보기</label>

                        <input
                             class="filter__input"
                             type="checkbox"
                             id="myLocation"
                             name="myLocation"
                             onclick="setMyRealLocaion()"
                        >
                        <label class="filter__label" for="myLocation" onclick="setMyRealLocaion()">내 위치 켜기</label>

                        <button type="button" onclick="deleteNoPhoto()">사진 없는거 없애자</button>
                    </form>
>>>>>>> 58a8b90... 유창오| main 세부디자인 사소한변경 및 이미지 없는 장소는 안보이게 하기 작업중
                </div>
                <div class="main__orderOption">
=======
						<div id="menu_wrap" class="bg_white">
=======
						<div id="map" style="width: 100%; height: 300px; position: relative; overflow: hidden;"></div>

						<div id="menu_wrap" class="bg_white" style="margin: 10px;">
>>>>>>> 26cabbf... 유창오| 헤더 오류해결 및 디자인 수정, 메인페이지 디자인 수정
							<div class="option">
								<form onsubmit="searchPlaces(); return false;">
									<div style="font-family: 'Song Myung';">
										<input type="text" value="" id="keyword" size="20" placeholder="원하는 지역을 입력하세요."
											style="margin: 5px 0; padding: 3px; font-family: 'Noto Serif KR';">
										<button type="submit"
											style="background: white; border: 1px solid black; padding: 5px; border-radius: 5px; margin-left: 0;">검색</button>
									</div>
								</form>
								<form onsubmit="return changeLocation()">
									<div class="setLocation"></div>
									<div class="setDistance">
										<p id="rangeValue">${distance}km반경</p>
										<input id="range" type="range" name="distance" min="1" max="10" step="1"
											value="${distance}" onchange="getRangeValue(value)" />
									</div>
									<div class="close-wrapper">
										<input type="submit" value="적용"
											style="background: white; border: 1px solid black; padding: 5px; border-radius: 5px;">
										<button id="close"
											style="background: white; border: 1px solid black; padding: 5px; border-radius: 5px; margin-left: 0;">취소</button>
									</div>
								</form>
							</div>
						</div>
					</div>
					<script type="text/javascript"
						src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0128abab124ce04ae17c622f465a5647&libraries=services,clusterer"></script>
					<script src="resources/js/map.js"></script>
					<script>
						setMarker("${mapy}", "${mapx}", "${distance}")
						var tmp = "${address}"
						if (tmp == "") {
							//location.reload();
						}
					</script>
				</div>
			</div>

			<div class="main__options">
				<button type="button" onclick="setMyRealLocaion()">현재위치에서 검색</button>
				<button id="showPhoto" type="button" onclick="deleteNoPhoto()">사진 있는 정보만 보기</button>
				<select id="showOption" style="display: inline;" onchange="changeSelect()">
					<option value=0 selected="selected">전체</option>
					<option value=12>관광지</option>
					<option value=14>문화</option>
					<option value=15>축제</option>
					<option value=39>식당</option>
					<option value=38>쇼핑</option>
					<option value=32>숙박</option>
					<option value=28>레포츠</option>
				</select>
			</div>
			<div class="main__orderOption"></div>
		</div>
		<div class="places">
			<c:forEach var="place" items="${tourList }">
				<div class="placeType${place.contentTypeId}">
					<div class="places__place"
						onclick="location.href='placeDetail.do?id=${place.contentId}&type=${place.contentTypeId}'">
						<c:if test="${place.image ne '' }">
							<div class="place__image" style="background-image: url('${place.image}')"></div>
							<div class="place__content1">
								<h3 style="margin: 0;">${place.title }</h3>
								<p style="margin: 0;">${place.address }</p>
							</div>
						</c:if>
						<c:if test="${place.image eq '' }">
							<div id="noImage" class="place__image"
								style="background-image: url('http://www.owlenergy.biz/images/owl_img/slide/nopicture.jpg')">
							</div>
							<div class="place__content2">
								<p style="margin: 0;">${place.title }</p>
								<p style="margin: 0;">${place.address }</p>
							</div>
						</c:if>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
>>>>>>> f6a0b94... 유창오| 메인 페이지 필터링 옵션 버튼화, 리뷰 작성 페이지 star rating border  설정

                </div>
            </div>
            <div class="places">
                <c:forEach var="place" items="${tourList }">
                    <div class="places__place"
                        onclick="location.href='placeDetail.do?id=${place.contentId}&type=${place.contentTypeId}'">
                        <c:if test="${place.image ne '' }">
                            <div class="place__image" style="background-image: url('${place.image}')"></div>
                            <div class="place__content1">
                                <p style="margin: 0; font-weight: bold;">${place.title }</p>
                                <p style="margin: 0;">${place.address }</p>
                            </div>
                        </c:if>
                        <c:if test="${place.image eq '' }">
                            <div id="noImage" class="place__image"
                                style="background-image: url('http://www.owlenergy.biz/images/owl_img/slide/nopicture.jpg')">
                            </div>
                            <div class="place__content2">
                                <p style="margin: 0;">${place.title }</p>
                                <p style="margin: 0;">${place.address }</p>
                            </div>
                        </c:if>
                    </div>
                </c:forEach>
            </div>
        </div>

<<<<<<< HEAD
        <div class="footer">
            <p style="margin: 7px;">Copyright 2019. 공수래공수거. ALL RIGTHS RESERVED.</p>
        </div>
    </div>

    <script>
        const open = document.getElementById("open");
        const close = document.getElementById("close"); u7c
        const modal = document.querySelector(".modal-wrapper");
=======
	<script>
		const open = document.getElementById("open");
		const close = document.getElementById("close");
		const modal = document.querySelector(".modal-wrapper");
>>>>>>> 17a85c6... 유창오| main.jsp 필터링 버튼 디자인 수정

		open.onclick = () => {
			modal.style.display = "flex";
		};
		close.onclick = () => {
			modal.style.display = "none";
		};

<<<<<<< HEAD
        getRangeValue = (value) => {
            const rangeValue = document.getElementById("rangeValue");
            rangeValue.innerHTML = value;
        }
    </script>
<<<<<<< HEAD
</body>

</html>
>>>>>>> e1e11f6... 유창오| main.jsp, placeDetail.jsp 상세디자인 변경
=======

    <script type="text/javascript">
        function setMyRealLocaion() {
            if ($("#checkbox").prop("checked") == true) {
                if (navigator.geolocation) {
                    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
                    navigator.geolocation.getCurrentPosition(function (position) {
                        var lat = position.coords.latitude, // 위도

                            lon = position.coords.longitude; // 경도

                        var form_data = {
                            lat: lat,
                            lon: lon
                        };
                        $.ajax({
                            type: "POST",
                            url: "setLocation.do",
                            data: form_data,
                            success: function (data) {
                                if (data.chk == 1) {
                                    alert("현재 위치를 사용할 수 없습니다.");
                                } else if (data.check != 1) {
                                    location.href = "main.do";
                                }
                            },
                            error: function (error) {
                                alert("error");
                            }
                        });
                    });

                } else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
                    message = 'geolocation을 사용할수 없어요..'
                }
            }
        }

        deleteNoPhoto = (event) => {
            const noImages = document.querySelectorAll('#noImage');
            console.log(noImages);
            for (let i = 0; i < noImages.length; i++) {
                let noImage = noImages[i].parentNode;
                noImage.style.display = "none";
            }
        }
    </script>
</body>

</html>
>>>>>>> 58a8b90... 유창오| main 세부디자인 사소한변경 및 이미지 없는 장소는 안보이게 하기 작업중
=======
		getRangeValue = (value) => {
			const rangeValue = document.getElementById("rangeValue");
			setRadius(value);
			rangeValue.innerHTML = value + "km 반경";
		}
	</script>

	<script type="text/javascript">
		function setMyRealLocaion() {
			if (navigator.geolocation) {
				// GeoLocation을 이용해서 접속 위치를 얻어옵니다
				navigator.geolocation.getCurrentPosition(function (position) {
					var lat = position.coords.latitude, // 위도

						lon = position.coords.longitude; // 경도

					var form_data = {
						lat: lat,
						lon: lon
					};
					$.ajax({
						type: "POST",
						url: "setLocation.do",
						data: form_data,
						success: function (data) {
							if (data.chk == 1) {
								alert("현재 위치를 사용할 수 없습니다.");
							} else if (data.check != 1) {
								var latlng = new kakao.maps.LatLng(lat, lon);
								searchDetailAddrFromCoords(latlng, function (result, status) {
									var tmp_address = result[0].address.address_name;


									var form_data = {
										address: tmp_address
									};
									$.ajax({
										type: "POST",
										url: "setAddress.do",
										data: form_data,
										success: function (data) {
											//alert(data);
											location.href = "main.do";
										},
										error: function (error) {
											alert("주소 표시 에러가 발생했습니다.");
										}
									});



								});
							}
						},
						error: function (error) {
							alert("error");
						}
					});
				});

			} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
				message = 'geolocation을 사용할수 없어요..'
			}
		}

		deleteNoPhoto = (event) => {
			const noImages = document.querySelectorAll('#noImage');
			console.log(noImages);
			for (let i = 0; i < noImages.length; i++) {
				let noImage = noImages[i].parentNode;
				noImage.style.display = "none";
			}
		}
	</script>
	<script type="text/javascript">
		window.onload = changeSelect();
		function changeSelect() {
			var select = document.getElementById("showOption");
			var selectValue = select.options[select.selectedIndex].value;
			//alert(document.getElementsByClassName("placeType"+selectValue)[0].value);
			var num = [12, 14, 15, 39, 38, 25, 32, 28];
			for (var i = 0; i < num.length; i++) {
				var elements = document.getElementsByClassName("placeType" + num[i]);
				for (var j = 0; j < elements.length; j++) {
					elements[j].style.display = "block";
				}
			}
			if (selectValue != 0) {
				for (var i = 0; i < num.length; i++) {
					if (num[i] != selectValue) {
						var elements = document.getElementsByClassName("placeType" + num[i]);
						for (var j = 0; j < elements.length; j++) {
							elements[j].style.display = "none";
						}
					}
				}
			}
		}
	</script>
<<<<<<< HEAD
=======


>>>>>>> 26cabbf... 유창오| 헤더 오류해결 및 디자인 수정, 메인페이지 디자인 수정
</body>

</html>
>>>>>>> 17a85c6... 유창오| main.jsp 필터링 버튼 디자인 수정
