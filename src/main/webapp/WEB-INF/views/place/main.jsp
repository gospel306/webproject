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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Awesome Place</title>
    <link rel="stylesheet" href="resources/css/main.css">

    <link rel="stylesheet" href="resources/css/map.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>

<body>
    <div class="wrapper__main">
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

        <div class="footer">
            <p style="margin: 7px;">Copyright 2019. 공수래공수거. ALL RIGTHS RESERVED.</p>
        </div>
    </div>

    <script>
        const open = document.getElementById("open");
        const close = document.getElementById("close"); u7c
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
            // event.preventDefault();
            const temp1 = document.getElementById('noImage')
            // const temp = document.querySelector('.noImage').parentNode;
            console.log(temp1)
            temp1.style.display = "none";
            // console.log(temp);
            const noImages = temp.map((place) => {
                console.log(place);
            })
        }
    </script>
</body>

</html>
>>>>>>> 58a8b90... 유창오| main 세부디자인 사소한변경 및 이미지 없는 장소는 안보이게 하기 작업중
