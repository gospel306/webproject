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
</body>

</html>
