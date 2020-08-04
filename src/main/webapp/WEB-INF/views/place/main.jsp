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
                        <span class="subText__distance">10km</span>
                    </p>
                </div>
            </div>
            <div class="main__options">
                <div class="main__showPlacesOption">
                    <input type="checkbox" name="" id="allPlaces">
                    <label for="allPlaces">모든 관광지 보기</label>
                    <!-- <input type="checkbox" name="" id="availablePlaces">
                    <label for="availablePlaces">입장가능 관광지 보기</label> -->
                </div>
                <div class="main__orderOption">

                </div>
            </div>
            <div class="places">
                <c:forEach var="place" items="${tourList }">
                    <div class="places__place">
                        <img class="place__image" src={place.imageUrl} alt=${place.title}>
                        <div class="place__detail">
                            <div style="float: left; margin-left: 1vw;">${place.title}</div>
                            <div style="float: right; margin-right: 1vw;">유성구 덕명동</div>
                            <div style="clear: both;"></div>
                        </div>
                    </div>
                </c:forEach>

                <%-- <div class="places__place">
                    <img class="place__image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Seoul_National_Cemetery_26th_Sanctuary.JPG/300px-Seoul_National_Cemetery_26th_Sanctuary.JPG"
                        alt="">
                    <div class="place__detail">
                        <div style="float: left; margin-left: 1vw;">주소를 여기에</div>
                        <div style="float: right; margin-right: 1vw;">개장시간 여기에</div>
                        <div style="clear: both;"></div>
                    </div>
                </div> --%>
            </div>
        </div>

        <div class="footer">
            <p style="margin: 7px;">Copyright 2019. 공수래공수거. ALL RIGTHS RESERVED.</p>
        </div>
    </div>
</body>

</html>
