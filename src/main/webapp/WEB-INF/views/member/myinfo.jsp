<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Awesome Place</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<link rel="stylesheet" href="resources/css/myActive.css">
	<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
<div class="wrapper__main">
		<div class="wrapper__main">
		<ul class="nav">
			<li><a href="main.do" class="header__logo"> Awesome Place </a></li>

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
							<a href="memberlist.do">AdminPage</a>
						</c:if>
					</div>
				</c:if>
			</li>
		</ul>
		
		<div class="main">
			<div class="my__info">
				<p style="font-family: 'Song Myung';">반갑습니다 <strong>${member.name }</strong>님</p>
				<img  onclick="location.href='infoPassCheck.do'"  src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4IiB2aWV3Qm94PSIwIDAgMjY4LjgzMiAyNjguODMyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCAyNjguODMyIDI2OC44MzI7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPGc+Cgk8cGF0aCBkPSJNMjY1LjE3MSwxMjUuNTc3bC04MC04MGMtNC44ODEtNC44ODEtMTIuNzk3LTQuODgxLTE3LjY3OCwwYy00Ljg4Miw0Ljg4Mi00Ljg4MiwxMi43OTYsMCwxNy42NzhsNTguNjYxLDU4LjY2MUgxMi41ICAgYy02LjkwMywwLTEyLjUsNS41OTctMTIuNSwxMi41YzAsNi45MDIsNS41OTcsMTIuNSwxMi41LDEyLjVoMjEzLjY1NGwtNTguNjU5LDU4LjY2MWMtNC44ODIsNC44ODItNC44ODIsMTIuNzk2LDAsMTcuNjc4ICAgYzIuNDQsMi40MzksNS42NCwzLjY2MSw4LjgzOSwzLjY2MXM2LjM5OC0xLjIyMiw4LjgzOS0zLjY2MWw3OS45OTgtODBDMjcwLjA1MywxMzguMzczLDI3MC4wNTMsMTMwLjQ1OSwyNjUuMTcxLDEyNS41Nzd6IiBmaWxsPSIjMDAwMDAwIi8+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==" />
			</div>
			
			<div>
				<div class="my__active">
					<div class="tab">
						<div class="my__icon tablinks active" onclick="openMenu(event, 'MyLike')">
							<img class="my__img"src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTI7IiB4bWw6c3BhY2U9InByZXNlcnZlIiB3aWR0aD0iNTEycHgiIGhlaWdodD0iNTEycHgiPgo8cGF0aCBzdHlsZT0iZmlsbDojRUM1NTY5OyIgZD0iTTQwNy4yNTIsOC4yNDFIMTAzLjYyM2MtNTAuNTI3LDAtOTEuNDg3LDQwLjk2MS05MS40ODcsOTEuNDg3djE5OS4xNDQgIGMwLDUwLjUyOCw0MC45NjEsOTEuNDg3LDkxLjQ4Nyw5MS40ODdoNDMuNTc1YzIuMDczLDAsMy43NTMsMS42ODEsMy43NTMsMy43NTN2OTguMjMzYzAsMTEuNjE1LDE0LjIwNywxNy4yNDYsMjIuMTYzLDguNzg0ICBsMTAzLjA2Ny0xMDkuNTljMC43MS0wLjc1NSwxLjY5OS0xLjE4MiwyLjczNS0xLjE4MmgxMjguMzM1YzUwLjUyOCwwLDkxLjQ4Ny00MC45NjEsOTEuNDg3LTkxLjQ4N1Y5OS43MjkgIEM0OTguNzQxLDQ5LjIwMSw0NTcuNzgsOC4yNDEsNDA3LjI1Miw4LjI0MXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0U2Mzk1MDsiIGQ9Ik0xODkuNDQyLDM1Ni4yMTVjMC0yLjE4My0xLjYyNy0zLjk1Mi0zLjYzNC0zLjk1MmgtNDIuMTg1Yy00OC45MTUsMC04OC41NjktNDMuMTMzLTg4LjU2OS05Ni4zNDEgIFY0Ni4yMTVjMC05LjAwMywxLjEzOS0xNy43MTYsMy4yNjMtMjUuOTgzQzMwLjczMSwzNS45ODgsMTIuMTM1LDY1LjY4NiwxMi4xMzUsOTkuNzI5djE5OS4xNDQgIGMwLDUwLjUyNyw0MC45NjEsOTEuNDg3LDkxLjQ4Nyw5MS40ODdoNDMuNTc1YzIuMDczLDAsMy43NTMsMS42ODEsMy43NTMsMy43NTN2OTguMjMzYzAsMTEuNjE1LDE0LjIwNywxNy4yNDYsMjIuMTYzLDguNzg0ICBsMTYuMzI1LTE3LjM1OVYzNTYuMjE1SDE4OS40NDJ6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiNFQzU1Njk7IiBkPSJNMzU4LjIzNSwxMjYuOTcyTDM1OC4yMzUsMTI2Ljk3MmMtMjMuMjI4LTIzLjIyOC02MC44ODgtMjMuMjI4LTg0LjExNiwwbC0xMy4xMjEsMTMuMTIxICBjLTMuMTI4LDMuMTI4LTguMjAxLDMuMTI4LTExLjMzLDBsLTEyLjkxMS0xMi45MTFjLTIzLjIyOC0yMy4yMjgtNjAuODg4LTIzLjIyOC04NC4xMTYsMGwwLDAgIGMtMjMuMjI4LDIzLjIyOC0yMy4yMjgsNjAuODg4LDAsODQuMTE2bDk3LjAzNSw5Ny4wMzVjMy4xMjgsMy4xMjgsOC4yMDEsMy4xMjgsMTEuMzMsMGw5Ny4yMjktOTcuMjQ1ICBDMzgxLjQ2MywxODcuODYsMzgxLjQ2MywxNTAuMiwzNTguMjM1LDEyNi45NzJ6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiNGRkY1RjU7IiBkPSJNMzU4LjIzNSwxMjYuOTcyTDM1OC4yMzUsMTI2Ljk3MmMtMjMuMjI4LTIzLjIyOC02MC44ODgtMjMuMjI4LTg0LjExNiwwbC0xMy4xMjEsMTMuMTIxICBjLTMuMTI4LDMuMTI4LTguMjAxLDMuMTI4LTExLjMzLDBsLTEyLjkxMS0xMi45MTFjLTIzLjIyOC0yMy4yMjgtNjAuODg4LTIzLjIyOC04NC4xMTYsMGwwLDAgIGMtMjMuMjI4LDIzLjIyOC0yMy4yMjgsNjAuODg4LDAsODQuMTE2bDk3LjAzNSw5Ny4wMzVjMy4xMjgsMy4xMjgsOC4yMDEsMy4xMjgsMTEuMzMsMGw5Ny4yMjktOTcuMjQ1ICBDMzgxLjQ2MywxODcuODYsMzgxLjQ2MywxNTAuMiwzNTguMjM1LDEyNi45NzJ6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiNEQ0U2RUI7IiBkPSJNMTgzLjc1NSwyMTEuMjk4Yy0yMy4yMjgtMjMuMjI4LTIzLjIyOC02MC44ODgsMC04NC4xMTZsMCwwICBjNy42MTktNy42MTksMTYuNzk1LTEyLjcyMywyNi41MDEtMTUuMzQzYy0xOS44ODQtNS4zNjktNDIuMDA2LTAuMjY2LTU3LjYxNCwxNS4zNDNsMCwwYy0yMy4yMjgsMjMuMjI4LTIzLjIyOCw2MC44ODgsMCw4NC4xMTYgIGw5Ny4wMzUsOTcuMDM1YzMuMTI4LDMuMTI4LDguMjAxLDMuMTI4LDExLjMzLDBsOS44OS05Ljg5MkwxODMuNzU1LDIxMS4yOTh6Ii8+CjxwYXRoIGQ9Ik00MDcuODE1LDBoLTMwMy42M2MtMjEuMzc5LDAtNDEuNzM2LDYuNzA3LTU4Ljg3LDE5LjM5NGMtMy4zNDEsMi40NzQtNC4wNDMsNy4xODgtMS41NywxMC41MjkgIGMyLjQ3NCwzLjM0MSw3LjE4OCw0LjA0MiwxMC41MjksMS41N2MxNC41MjItMTAuNzU0LDMxLjc4MS0xNi40MzksNDkuOTExLTE2LjQzOWgzMDMuNjI5YzQ2LjI5NiwwLDgzLjk2LDM3LjY2NSw4My45Niw4My45NiAgdjE5OS4xNDRjMCw0Ni4yOTYtMzcuNjY1LDgzLjk2LTgzLjk2LDgzLjk2SDI3OS40OGMtMy4xMDEsMC02LjA5NywxLjI5Ni04LjIxNywzLjU1M2wtMTAzLjA2OCwxMDkuNTkgIGMtMi4yMjUsMi4zNjQtNC44MDUsMS42OTMtNS44MSwxLjI5NmMtMS4wMDYtMC4zOTgtMy4zNDUtMS42NzYtMy4zNDUtNC45MjRWMzkzLjRjMC02LjIyLTUuMDYtMTEuMjgtMTEuMjgtMTEuMjhoLTQzLjU3NSAgYy00Ni4yOTYsMC04My45NjEtMzcuNjY1LTgzLjk2MS04My45NlY5OS4wMTRjMC0xNy4wMzIsNS4wNjktMzMuNDI5LDE0LjY2LTQ3LjQxN2MyLjM1LTMuNDI5LDEuNDc3LTguMTEzLTEuOTUxLTEwLjQ2NCAgYy0zLjQyNy0yLjM1MS04LjExNC0xLjQ3Ni0xMC40NjQsMS45NTFDMTEuMTUzLDU5LjU5LDUuMTcxLDc4LjkzLDUuMTcxLDk5LjAxNHYxOTkuMTQ0YzAsNTQuNTk2LDQ0LjQxOCw5OS4wMTQsOTkuMDE1LDk5LjAxNCAgaDM5LjgwMXY5NC40NjFjMCw4LjM5OCw1LjA0NCwxNS44MjQsMTIuODUxLDE4LjkxOGMyLjQ2MSwwLjk3NSw1LjAxNywxLjQ0OSw3LjU0MywxLjQ0OWM1LjQ4OSwwLDEwLjg0LTIuMjM3LDE0Ljc4LTYuNDI1ICBsMTAxLjk1LTEwOC40MDJoMTI2LjcwNGM1NC41OTYsMCw5OS4wMTQtNDQuNDE4LDk5LjAxNC05OS4wMTRWOTkuMDE0QzUwNi44MjksNDQuNDE4LDQ2Mi40MTIsMCw0MDcuODE1LDB6Ii8+CjxwYXRoIGQ9Ik0zMzEuMDAxLDIyNy41MjljLTIuOTQsMi45NC0yLjk0LDcuNzA2LDAuMDAxLDEwLjY0NGMyLjk0LDIuOTM5LDcuNzA2LDIuOTQsMTAuNjQ0LTAuMDAxbDIyLjQ3My0yMi40NzYgIGMyNi4xMjQtMjYuMTI1LDI2LjEyNC02OC42MzYtMC4wMDEtOTQuNzYxYy0yNi4xMjQtMjYuMTI1LTY4LjYzNS0yNi4xMjMtOTQuNzYxLDBsLTEzLjExOSwxMy4xMiAgYy0wLjAzNSwwLjAzNS0wLjE0NCwwLjE0My0wLjM0NCwwLjE0M2MtMC4yLDAtMC4zMDctMC4xMDYtMC4zNDItMC4xNDNsLTEyLjkxMS0xMi45MWMtMjYuMTI1LTI2LjEyNS02OC42MzUtMjYuMTI0LTk0Ljc2LDAgIGMtMjYuMTI1LDI2LjEyNS0yNi4xMjUsNjguNjM2LDAsOTQuNzYxbDk3LjAzNSw5Ny4wMzVjMi45MzQsMi45MzUsNi44MzcsNC41NTEsMTAuOTg3LDQuNTUxYzQuMTUsMCw4LjA1My0xLjYxNywxMC45ODctNC41NTIgIGw1My4zMjUtNTMuMzM0YzIuOTQtMi45NCwyLjk0LTcuNzA2LTAuMDAxLTEwLjY0NGMtMi45NC0yLjkzOS03LjcwNy0yLjk0LTEwLjY0NCwwLjAwMWwtNTMuMzI1LDUzLjMzNCAgYy0wLjAzNSwwLjAzNS0wLjE0MywwLjE0Mi0wLjM0MiwwLjE0MmMtMC4yMDEsMC0wLjMwOC0wLjEwNi0wLjM0My0wLjE0M2wtOTcuMDM1LTk3LjAzNWMtMjAuMjU2LTIwLjI1Ni0yMC4yNTYtNTMuMjE1LDAtNzMuNDcyICBzNTMuMjE1LTIwLjI1NSw3My40NzEsMGwxMi45MSwxMi45MWMyLjkzNCwyLjkzNiw2LjgzNyw0LjU1MiwxMC45ODcsNC41NTJjNC4xNTEsMCw4LjA1Mi0xLjYxNiwxMC45ODgtNC41NTFsMTMuMTItMTMuMTIgIGMyMC4yNi0yMC4yNTUsNTMuMjE2LTIwLjI1NCw3My40NzIsMGMyMC4yNTYsMjAuMjU2LDIwLjI1Niw1My4yMTQsMCw3My40NzJMMzMxLjAwMSwyMjcuNTI5eiIvPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />
							<p>찜한 내역</p>
						</div>
					</div>
					<div class="tab">
						<div class="my__icon tablinks" onclick="openMenu(event, 'MyReview')">
							<img class="my__img" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUxMS45OTkgNTExLjk5OSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNTExLjk5OSA1MTEuOTk5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPGc+Cgk8cGF0aCBzdHlsZT0iZmlsbDojRkZCQzUzOyIgZD0iTTQ0NC4yNjcsMTMuODA5bDE0LjQ0MiwyOS4yNDJjMC45OTYsMi4wMTcsMi45MjEsMy40MTUsNS4xNDgsMy43MzhsMzIuMjc2LDQuNjgxICAgYzUuNjA3LDAuODEzLDcuODQ3LDcuNzAzLDMuNzkxLDExLjY1OEw0NzYuNTc2LDg1LjljLTEuNjExLDEuNTcxLTIuMzQ1LDMuODM0LTEuOTY0LDYuMDUxbDUuNTIyLDMyLjE0MyAgIGMwLjk1OSw1LjU4NC00LjkwMSw5Ljg0My05LjkxNiw3LjIwOGwtMjguODcyLTE1LjE2OWMtMS45OTItMS4wNDYtNC4zNzEtMS4wNDYtNi4zNjIsMC4wMDJsLTI4Ljg2NCwxNS4xODQgICBjLTUuMDE0LDIuNjM4LTEwLjg3Ni0xLjYxOS05LjkyLTcuMjAzbDUuNTA1LTMyLjE0NmMwLjM4LTIuMjE3LTAuMzU2LTQuNDgtMS45NjctNi4wNWwtMjMuMzYtMjIuNzU5ICAgYy00LjA1OC0zLjk1My0xLjgyMS0xMC44NDQsMy43ODUtMTEuNjZsMzIuMjc0LTQuNjk4YzIuMjI2LTAuMzI0LDQuMTUxLTEuNzIzLDUuMTQ2LTMuNzQxbDE0LjQyNi0yOS4yNSAgIEM0MzQuNTE0LDguNzMxLDQ0MS43NTksOC43MjksNDQ0LjI2NywxMy44MDl6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojRkZCQzUzOyIgZD0iTTI2Mi4xMTcsMTMuODA5bDE0LjQ0MiwyOS4yNDJjMC45OTYsMi4wMTcsMi45MjEsMy40MTUsNS4xNDgsMy43MzhsMzIuMjc2LDQuNjgxICAgYzUuNjA3LDAuODEzLDcuODQ3LDcuNzAzLDMuNzkxLDExLjY1OEwyOTQuNDI1LDg1LjljLTEuNjExLDEuNTcxLTIuMzQ1LDMuODM0LTEuOTY0LDYuMDUxbDUuNTIyLDMyLjE0MyAgIGMwLjk1OSw1LjU4NC00LjkwMSw5Ljg0My05LjkxNiw3LjIwOGwtMjguODcyLTE1LjE2OWMtMS45OTItMS4wNDYtNC4zNzEtMS4wNDYtNi4zNjIsMC4wMDJsLTI4Ljg2NCwxNS4xODQgICBjLTUuMDE0LDIuNjM4LTEwLjg3Ni0xLjYxOS05LjkyLTcuMjAzbDUuNTA1LTMyLjE0NmMwLjM4LTIuMjE3LTAuMzU2LTQuNDgtMS45NjctNi4wNWwtMjMuMzYtMjIuNzU5ICAgYy00LjA1OC0zLjk1My0xLjgyMS0xMC44NDQsMy43ODUtMTEuNjZsMzIuMjc0LTQuNjk4YzIuMjI2LTAuMzI0LDQuMTUxLTEuNzIzLDUuMTQ2LTMuNzQxbDE0LjQyNi0yOS4yNSAgIEMyNTIuMzYzLDguNzMxLDI1OS42MDgsOC43MjksMjYyLjExNywxMy44MDl6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojRkZCQzUzOyIgZD0iTTc5Ljk2NywxMy44MDlsMTQuNDQyLDI5LjI0MmMwLjk5NiwyLjAxNywyLjkyMSwzLjQxNSw1LjE0OCwzLjczOGwzMi4yNzYsNC42ODEgICBjNS42MDcsMC44MTMsNy44NDcsNy43MDMsMy43OTEsMTEuNjU4TDExMi4yNzQsODUuOWMtMS42MTEsMS41NzEtMi4zNDUsMy44MzQtMS45NjQsNi4wNTFsNS41MjIsMzIuMTQzICAgYzAuOTU5LDUuNTg0LTQuOTAxLDkuODQzLTkuOTE2LDcuMjA4bC0yOC44NzItMTUuMTY5Yy0xLjk5Mi0xLjA0Ni00LjM3MS0xLjA0Ni02LjM2MiwwLjAwMmwtMjguODY0LDE1LjE4NCAgIGMtNS4wMTQsMi42MzgtMTAuODc2LTEuNjE5LTkuOTItNy4yMDNsNS41MDUtMzIuMTQ2YzAuMzgtMi4yMTctMC4zNTYtNC40OC0xLjk2Ny02LjA1bC0yMy4zNi0yMi43NTkgICBjLTQuMDU4LTMuOTUzLTEuODIxLTEwLjg0NCwzLjc4NS0xMS42NmwzMi4yNzQtNC42OThjMi4yMjYtMC4zMjQsNC4xNTEtMS43MjMsNS4xNDYtMy43NDFsMTQuNDI2LTI5LjI1ICAgQzcwLjIxNCw4LjczMSw3Ny40NTgsOC43MjksNzkuOTY3LDEzLjgwOXoiLz4KPC9nPgo8cGF0aCBzdHlsZT0iZmlsbDojRkZDREFDOyIgZD0iTTM3NS41NjcsNTAxLjk5NmwxNC4xMDYtNDQuOTgyYzcuMDI0LTIyLjM5OSwxMC41OTgtNDUuNzM3LDEwLjU5OC02OS4yMXYtODQuMzc5ICBjMC0xMy4yOC0xMC43NjUtMjQuMDQ1LTI0LjA0NS0yNC4wNDVsMCwwYy0xMy4yOCwwLTI0LjA0NSwxMC43NjUtMjQuMDQ1LDI0LjA0NXYyOS4zNDl2LTM1LjY3NXYtMTEuMzkyICBjMC0xMy4yOC0xMC43NjUtMjQuMDQ1LTI0LjA0NS0yNC4wNDVsMCwwYy0xMy4yOCwwLTI0LjA0NSwxMC43NjUtMjQuMDQ1LDI0LjA0NXY4LjU5NXYzOC40NzJ2LTYyLjI5NyAgYzAtMTMuMjgtMTAuNzY1LTI0LjA0NS0yNC4wNDUtMjQuMDQ1bDAsMGMtMTMuMjgsMC0yNC4wNDUsMTAuNzY1LTI0LjA0NSwyNC4wNDV2NjIuMjk3VjE5MS42NjYgIGMwLTEzLjI4LTEwLjc2NS0yNC4wNDUtMjQuMDQ1LTI0LjA0NWwwLDBjLTEzLjI4LDAtMjQuMDQ1LDEwLjc2NS0yNC4wNDUsMjQuMDQ1djE3NC4yODlsLTI4LjIzOS01Mi4yOSAgYy02LjUyMy0xMi4wNzktMjEuNDc0LTE2Ljc3My0zMy43My0xMC41OWwwLDBjLTEwLjUxLDUuMzAyLTE1Ljk4OSwxNy4xNDEtMTMuMjI4LDI4LjU4NWwxOC4zMDcsNzUuODgyICBjMy45NDgsMTYuMzY1LDExLjA5NCwzMS43ODcsMjEuMDI2LDQ1LjM3OWwzNS44NjIsNDkuMDc2SDM3NS41Njd6Ii8+CjxwYXRoIGQ9Ik0yMDcuOTExLDI3OS42MDNjLTUuNTIzLDAtMTAsNC40NzgtMTAsMTB2MzYuNzlsLTkuNDQtMTcuNDhjLTkuMTYyLTE2Ljk2My0yOS44MjMtMjMuNDUyLTQ3LjAzMy0xNC43NjYgIGMtMTQuNzI5LDcuNDMxLTIyLjMxNCwyMy44MjEtMTguNDQ1LDM5Ljg1OGwxOC4zMDcsNzUuODgxYzQuMjc5LDE3LjczOCwxMS45MDgsMzQuMjAyLDIyLjY3NCw0OC45MzVsMzUuODY0LDQ5LjA3NyAgYzEuOTU4LDIuNjgsNC45OTksNC4xMDEsOC4wODIsNC4xMDFjMi4wNDcsMCw0LjExMy0wLjYyNyw1Ljg5Mi0xLjkyN2M0LjQ1OS0zLjI1OSw1LjQzMy05LjUxNiwyLjE3NC0xMy45NzVsLTM1Ljg2NC00OS4wNzcgIGMtOS4yMDItMTIuNTkyLTE1LjcyMi0yNi42NjMtMTkuMzc5LTQxLjgyNGwtMTguMzA3LTc1Ljg4MmMtMS42ODEtNi45NjUsMS42MTQtMTQuMDgzLDguMDExLTE3LjMxMSAgYzcuNDc2LTMuNzcyLDE2LjQ0OC0wLjk1NSwyMC40MjcsNi40MTNsMjguMjM5LDUyLjI5YzIuMTc2LDQuMDI5LDYuODExLDYuMDYzLDExLjI1LDQuOTQzYzQuNDM5LTEuMTIyLDcuNTQ5LTUuMTE2LDcuNTQ5LTkuNjk1ICB2LTc2LjM1MUMyMTcuOTExLDI4NC4wOCwyMTMuNDM0LDI3OS42MDMsMjA3LjkxMSwyNzkuNjAzeiIvPgo8cGF0aCBkPSJNMzc2LjIyNSwyNjkuMzhjLTUuOTAxLDAtMTEuNDU2LDEuNTExLTE2LjMsNC4xNjRjLTQuOTA3LTEyLjc4Mi0xNy4zMDItMjEuODgzLTMxLjc5MS0yMS44ODMgIGMtNi4yNDksMC0xMi4xMDUsMS43LTE3LjE0NCw0LjY1Yy01LjM4Ni0xMS43MTgtMTcuMjI3LTE5Ljg4LTMwLjk0Ni0xOS44OGMtNS4wMDcsMC05Ljc2LDEuMDk1LTE0LjA0NSwzLjA0NHYtNDcuODExICBjMC0xOC43NzItMTUuMjcyLTM0LjA0NS0zNC4wNDUtMzQuMDQ1cy0zNC4wNDUsMTUuMjcyLTM0LjA0NSwzNC4wNDV2MTcuMzM0YzAsNS41MjIsNC40NzcsMTAsMTAsMTBzMTAtNC40NzgsMTAtMTB2LTE3LjMzMyAgYzAtNy43NDQsNi4zMDEtMTQuMDQ1LDE0LjA0NS0xNC4wNDVTMjQ2LDE4My45MjIsMjQ2LDE5MS42NjZ2MTQxLjEwN2MwLDUuNTIyLDQuNDc3LDEwLDEwLDEwYzUuNTIzLDAsMTAtNC40NzgsMTAtMTB2LTYyLjI5NiAgYzAtNy43NDQsNi4zLTE0LjA0NSwxNC4wNDUtMTQuMDQ1czE0LjA0NSw2LjMwMSwxNC4wNDUsMTQuMDQ1djYyLjI5NmMwLDUuNTIyLDQuNDc3LDEwLDEwLDEwYzUuNTIzLDAsMTAtNC40NzgsMTAtMTB2LTQ3LjA2NiAgYzAtNy43NDUsNi4zLTE0LjA0NiwxNC4wNDUtMTQuMDQ2czE0LjA0NSw2LjMwMSwxNC4wNDUsMTQuMDQ2djQ3LjA2NmMwLDUuNTIyLDQuNDc3LDEwLDEwLDEwYzUuNTIzLDAsMTAtNC40NzgsMTAtMTB2LTI5LjM0OSAgYzAtNy43NDQsNi4zMDEtMTQuMDQ1LDE0LjA0NS0xNC4wNDVzMTQuMDQ1LDYuMzAxLDE0LjA0NSwxNC4wNDV2ODQuMzc5YzAsMjIuNDg0LTMuNDEyLDQ0Ljc2NC0xMC4xNCw2Ni4yMThsLTE0LjEwNiw0NC45ODIgIGMtMS42NTIsNS4yNywxLjI4LDEwLjg4Miw2LjU1LDEyLjUzNGMwLjk5NiwwLjMxMywyLjAwMywwLjQ2MSwyLjk5NSwwLjQ2MWM0LjI1NC0wLjAwMSw4LjE5OS0yLjczNyw5LjUzOS03LjAxMWwxNC4xMDYtNDQuOTgyICBjNy4zMzYtMjMuMzk0LDExLjA1Ni00Ny42ODcsMTEuMDU2LTcyLjIwMnYtODQuMzc5QzQxMC4yNywyODQuNjUzLDM5NC45OTgsMjY5LjM4LDM3Ni4yMjUsMjY5LjM4eiIvPgo8cGF0aCBkPSJNNTExLjE2MSw1My4wMjljLTEuOTk2LTYuMTM5LTcuMjA1LTEwLjUyOC0xMy41OTQtMTEuNDU1bC0zMC42MjktNC40NDFMNDUzLjIzMyw5LjM4MUM0NTAuMzc2LDMuNTk0LDQ0NC41OTIsMCw0MzguMTM5LDAgIGMtMC4wMDEsMC0wLjAwMywwLTAuMDA0LDBjLTYuNDU2LDAuMDAxLTEyLjI0LDMuNTk5LTE1LjA5NSw5LjM4OWwtMTMuNjksMjcuNzU4bC0zMC42MjcsNC40NTkgIGMtNi4zODgsMC45My0xMS41OTUsNS4zMjItMTMuNTg3LDExLjQ2M2MtMS45OTMsNi4xNC0wLjM1OCwxMi43NTIsNC4yNjUsMTcuMjU2bDIyLjE2OSwyMS41OThsLTUuMjI0LDMwLjUwNiAgYy0xLjA4OSw2LjM2MywxLjQ3OSwxMi42NzIsNi43MDIsMTYuNDY0YzIuOTUsMi4xNDMsNi40MDEsMy4yMyw5Ljg3NSwzLjIzYzIuNjc3LDAsNS4zNjgtMC42NDYsNy44NTQtMS45NTNsMjcuMzkxLTE0LjQxICBsMjcuMzk5LDE0LjM5NmM1LjcxNCwzLjAwNCwxMi41MDgsMi41MSwxNy43MjktMS4yODdjNS4yMjEtMy43OTYsNy43ODYtMTAuMTA1LDYuNjkyLTE2LjQ2OGwtNS4yNC0zMC41MDNsMjIuMTU3LTIxLjYwOSAgQzUxMS41MjYsNjUuNzgxLDUxMy4xNTcsNTkuMTY3LDUxMS4xNjEsNTMuMDI5eiBNNDY5LjU5NCw3OC43NDFjLTMuOTY5LDMuODY5LTUuNzc3LDkuNDQxLTQuODM4LDE0LjkwM2w0LjQzNiwyNS44MjMgIGwtMjMuMTk0LTEyLjE4NmMtNC45MDctMi41OC0xMC43NjUtMi41NzctMTUuNjcsMC4wMDNsLTIzLjE4OCwxMi4xOTlsNC40MjMtMjUuODI3YzAuOTM0LTUuNDYyLTAuODc3LTExLjAzMS00Ljg0Ny0xNC44OTkgIGwtMTguNzY4LTE4LjI4NGwyNS45My0zLjc3NGM1LjQ4My0wLjc5OSwxMC4yMjEtNC4yNDMsMTIuNjcyLTkuMjE0bDExLjU5LTIzLjQ5OGwxMS42MDIsMjMuNDkxICBjMi40NTQsNC45Nyw3LjE5Myw4LjQxMSwxMi42NzksOS4yMDhsMjUuOTMsMy43NjFMNDY5LjU5NCw3OC43NDF6Ii8+CjxwYXRoIGQ9Ik0yMDkuNDE5LDkxLjkyMmwtNS4yMjQsMzAuNTA2Yy0xLjA4OSw2LjM2MywxLjQ3OSwxMi42NzIsNi43MDIsMTYuNDY0YzIuOTUsMi4xNDMsNi40MDEsMy4yMyw5Ljg3NSwzLjIzICBjMi42NzcsMCw1LjM2OC0wLjY0Niw3Ljg1NC0xLjk1M2wyNy4zOTItMTQuNDA5bDI3LjM5OSwxNC4zOTVjNS43MTQsMy4wMDQsMTIuNTA4LDIuNTEsMTcuNzI5LTEuMjg3ICBjNS4yMjEtMy43OTYsNy43ODYtMTAuMTA1LDYuNjkyLTE2LjQ2OGwtNS4yNC0zMC41MDNsMjIuMTU3LTIxLjYwOWM0LjYyMS00LjUwNyw2LjI1Mi0xMS4xMiw0LjI1Ni0xNy4yNTkgIGMtMS45OTYtNi4xMzktNy4yMDQtMTAuNTI5LTEzLjU5My0xMS40NTVsLTMwLjYyOS00LjQ0MUwyNzEuMDgzLDkuMzgxQzI2OC4yMjUsMy41OTQsMjYyLjQ0MiwwLDI1NS45ODgsMGMtMC4wMDEsMC0wLjAwMywwLTAuMDA1LDAgIGMtNi40NTUsMC4wMDEtMTIuMjM5LDMuNTk5LTE1LjA5NCw5LjM4OWwtMTMuNjksMjcuNzU4bC0zMC42MjcsNC40NTljLTYuMzg4LDAuOTMtMTEuNTk1LDUuMzIyLTEzLjU4NywxMS40NjMgIGMtMS45OTMsNi4xNC0wLjM1OCwxMi43NTIsNC4yNjUsMTcuMjU2TDIwOS40MTksOTEuOTIyeiBNMjMxLjcyNyw1Ni42OTljNS40ODMtMC43OTksMTAuMjIxLTQuMjQzLDEyLjY3My05LjIxNGwxMS41OS0yMy40OTkgIGwxMS42MDIsMjMuNDkyYzIuNDUzLDQuOTY5LDcuMTkyLDguNDExLDEyLjY3OSw5LjIwOGwyNS45MywzLjc2MWwtMTguNzU3LDE4LjI5NGMtMy45NjgsMy44NjgtNS43NzYsOS40MzktNC44MzgsMTQuOTAzICBsNC40MzYsMjUuODIzbC0yMy4xOTQtMTIuMTg2Yy00LjkwOC0yLjU3OS0xMC43NjctMi41NzgtMTUuNjcsMC4wMDNsLTIzLjE4OSwxMi4xOTlsNC40MjMtMjUuODI3ICBjMC45MzQtNS40NjMtMC44NzctMTEuMDMyLTQuODQ3LTE0Ljg5OWwtMTguNzY3LTE4LjI4NEwyMzEuNzI3LDU2LjY5OXoiLz4KPHBhdGggZD0iTTEyNS42ODcsMTIyLjM5OWwtNS4yNC0zMC41MDNsMjIuMTU3LTIxLjYwOWM0LjYyMS00LjUwNyw2LjI1Mi0xMS4xMiw0LjI1Ni0xNy4yNTlzLTcuMjA1LTEwLjUyOC0xMy41OTQtMTEuNDU1ICBsLTMwLjYyOS00LjQ0MUw4OC45MzMsOS4zODFDODYuMDc1LDMuNTk0LDgwLjI5MiwwLDczLjgzOCwwYy0wLjAwMSwwLTAuMDAzLDAtMC4wMDUsMGMtNi40NTUsMC4wMDEtMTIuMjM5LDMuNTk5LTE1LjA5NCw5LjM4OSAgbC0xMy42OSwyNy43NThsLTMwLjYyNyw0LjQ1OWMtNi4zODgsMC45My0xMS41OTQsNS4zMjItMTMuNTg3LDExLjQ2MlMwLjQ3NSw2NS44Miw1LjA5OSw3MC4zMjVsMjIuMTY5LDIxLjU5OGwtNS4yMjQsMzAuNTA2ICBjLTEuMDg5LDYuMzYzLDEuNDc5LDEyLjY3Miw2LjcwMiwxNi40NjVjMi45NTEsMi4xNDIsNi40MDEsMy4yMyw5Ljg3NiwzLjIyOWMyLjY3NywwLDUuMzY4LTAuNjQ2LDcuODU0LTEuOTUzbDI3LjM5Mi0xNC40MDkgIGwyNy4zOTksMTQuMzk1YzUuNzE1LDMuMDAyLDEyLjUwOCwyLjUwOSwxNy43MjktMS4yODZDMTI0LjIxNiwxMzUuMDcyLDEyNi43OCwxMjguNzYxLDEyNS42ODcsMTIyLjM5OXogTTEwNS4yOTQsNzguNzQgIGMtMy45NjksMy44NjgtNS43NzgsOS40NC00LjgzOSwxNC45MDRsNC40MzYsMjUuODIzbC0yMy4xOTMtMTIuMTg2Yy00LjkwNy0yLjU3OS0xMC43NjYtMi41NzgtMTUuNjcsMC4wMDNsLTIzLjE5LDEyLjIgIGw0LjQyMi0yNS44MjVjMC45MzYtNS40NjItMC44NzUtMTEuMDMyLTQuODQ2LTE0LjkwMUwyMy42NDgsNjAuNDczbDI1LjkyOS0zLjc3NGM1LjQ4My0wLjc5OSwxMC4yMjEtNC4yNDMsMTIuNjcyLTkuMjE0ICBsMTEuNTktMjMuNDk5bDExLjYwMiwyMy40OTJjMi40NTMsNC45NjksNy4xOTIsOC40MTEsMTIuNjc5LDkuMjA4bDI1LjkzMSwzLjc2MUwxMDUuMjk0LDc4Ljc0eiIvPgo8cGF0aCBkPSJNMjA3LjkxMSwyNDAuMmMtMi42MywwLTUuMjEsMS4wNjktNy4wNywyLjkzcy0yLjkzLDQuNDM5LTIuOTMsNy4wN2MwLDIuNjMsMS4wNyw1LjIxLDIuOTMsNy4wNjkgIGMxLjg2LDEuODYsNC40NCwyLjkzMSw3LjA3LDIuOTMxczUuMjEtMS4wNyw3LjA3LTIuOTMxYzEuODYtMS44NTksMi45My00LjQzOSwyLjkzLTcuMDY5YzAtMi42MzEtMS4wNy01LjIxLTIuOTMtNy4wNyAgQzIxMy4xMjEsMjQxLjI2OSwyMTAuNTQyLDI0MC4yLDIwNy45MTEsMjQwLjJ6Ii8+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />
							<p>작성한 리뷰</p>
						</div>
					</div>
				</div>
					
					
					<div id="MyLike" class="tabcontent" style="text-align: center;">
						<c:forEach items="${dib }" var="dib">
							<div class="card" onclick="location.href='placeDetail.do?id=${dib.contentId}&type=${dib.contentTypeId}'">
								<c:if test="${dib.image eq ''}">
								  <img src="http://www.owlenergy.biz/images/owl_img/slide/nopicture.jpg" class="card__image" style="width:100%">
								</c:if>
								<c:if test="${dib.image ne '' }">
								  <img src="${dib.image }" class="card__image" style="width:100%">
								</c:if>
							  <div class="container">
							    <b>${dib.title }</b> 
							  </div>
							</div>
						</c:forEach>
					</div>
					
					<div id="MyReview" class="tabcontent" style="text-align: center;">
						<c:forEach items="${reviews }" var="review">
							<div class="card">
							  	<div class="card__header">
<<<<<<< HEAD
								<b>${review.title }</b>
								<br/>
								<c:forEach begin="1" end="${review.star }">
								 <img class="card__star" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0MjYuNjY3IDQyNi42NjciIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQyNi42NjcgNDI2LjY2NzsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+Cjxwb2x5Z29uIHN0eWxlPSJmaWxsOiNGQUM5MTc7IiBwb2ludHM9IjIxMy4zMzMsMTAuNDQxIDI3OS4yNDksMTQ0LjAxNyA0MjYuNjY3LDE2NS40MzYgMzIwLDI2OS40MSAzNDUuMTczLDQxNi4yMjYgMjEzLjMzMywzNDYuOTEgICA4MS40ODUsNDE2LjIyNiAxMDYuNjY3LDI2OS40MSAwLDE2NS40MzYgMTQ3LjQwOSwxNDQuMDE3ICIvPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />
								</c:forEach>
								</div>
								<div class="card__main">
									<p>${review.content }</p>
									<p>${review.time_Stamp }</p>
=======
								<c:if test="${review.star ne ''}">
									<c:forEach begin="1" end="${review.star }">
									 <img class="card__star" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0MjYuNjY3IDQyNi42NjciIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQyNi42NjcgNDI2LjY2NzsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+Cjxwb2x5Z29uIHN0eWxlPSJmaWxsOiNGQUM5MTc7IiBwb2ludHM9IjIxMy4zMzMsMTAuNDQxIDI3OS4yNDksMTQ0LjAxNyA0MjYuNjY3LDE2NS40MzYgMzIwLDI2OS40MSAzNDUuMTczLDQxNi4yMjYgMjEzLjMzMywzNDYuOTEgICA4MS40ODUsNDE2LjIyNiAxMDYuNjY3LDI2OS40MSAwLDE2NS40MzYgMTQ3LjQwOSwxNDQuMDE3ICIvPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />
									</c:forEach>
								</c:if>
								</div>
								<div class="card__main">
									<span class="card__content" style="font-size: 17px; display: block; margin: 10px 0;">
											${review.content }
									</span>
									<p style="color: grey; font-size: 14px;">${review.time_Stamp }에 남긴 리뷰입니다.</p>
									<button onclick="gotoDetail(${review.contentid})">관광지 바로가기</button>
									<button onclick="deleteReview(${review.num})">리뷰 삭제하기</button>
									
>>>>>>> 4d7c7d0... 유창오| placeDetail, MyInfo 디자인 일부 수정
								</div>
							</div>
						</c:forEach>
					</div>
					</div>
			</div>
		</div>
		<div class="footer">
		    <p>Copyright 2019. 공수래공수거. ALL RIGTHS RESERVED.</p>
		</div>
</div>
	<script type="text/javascript">
	
		function openMenu(evt, menuName) {
			  var i, tabcontent, tablinks;
			  tabcontent = document.getElementsByClassName("tabcontent");
			  for (i = 0; i < tabcontent.length; i++) {
			    tabcontent[i].style.display = "none";
			  }
			  tablinks = document.getElementsByClassName("tablinks");
			  for (i = 0; i < tablinks.length; i++) {
			    tablinks[i].className = tablinks[i].className.replace(" active", "");
			  }
			  document.getElementById(menuName).style.display = "block";
			  evt.currentTarget.className += " active";
			}
			
		
	</script>
</body>
</html>