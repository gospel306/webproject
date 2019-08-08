<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Awesome Place - 후기 작성</title>
    <link rel="stylesheet" href="resources/css/reviewCreate.css">
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
                <c:if test="${sessionScope.ID eq null}">
	                <div class="header__content">
	                    <a href="loginForm.do">SignIn</a>
	                    <a href="signUpForm.do">SignUp</a>
	                </div>
                </c:if>
                <c:if test="${sessionScope.ID ne null}">
	                <div class="header__content">
	                    <a href="logout.do">logout</a>
	                    <a href="signUpForm.do">MyInfo</a>
		                <c:if test="${sessionScope.memberType eq 'admin'}">
	                    <a href="memberlist.do">memberlist</a>
        		        </c:if>
	                </div>
                </c:if>
            </li>
        </ul>
        <div class="bg__image"></div>
        <div class="main"></div>

        <div class="footer">
            <p style="margin: 7px;">Copyright 2019. 공수래공수거. ALL RIGTHS RESERVED.</p>
        </div>
    </div>
</body>
</html>