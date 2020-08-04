<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Awesome Place - Admin</title>
	<link rel="stylesheet" href="resources/css/memberlist.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>

<body>
	<div class="wrapper__main">
		<!-- 네비게이션 바 -->
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

		<!-- 메인 -->
		<div class="main">
			

			<form method="get" action="memberlist.do">
				<select name="searchOption">
					<c:choose>
						<c:when test="${searchOption eq 'NAME'}">
							<option value="ID">아이디</option>
							<option value="NAME" selected="selected">이름</option>
							<option value="PHONENUM">전화번호</option>
							<option value="EMAIL">이메일</option>
						</c:when>
						<c:when test="${searchOption eq 'PHONENUM'}">
							<option value="ID">아이디</option>
							<option value="NAME">이름</option>
							<option value="PHONENUM" selected="selected">전화번호</option>
							<option value="EMAIL">이메일</option>
						</c:when>
						<c:when test="${searchOption eq 'EMAIL'}">
							<option value="ID">아이디</option>
							<option value="NAME">이름</option>
							<option value="PHONENUM">전화번호</option>
							<option value="EMAIL" selected="selected">이메일</option>
						</c:when>
						<c:otherwise>
							<option value="ID" selected="selected">아이디</option>
							<option value="NAME">이름</option>
							<option value="PHONENUM">전화번호</option>
							<option value="EMAIL">이메일</option>
						</c:otherwise>
					</c:choose>
				</select>
				<input name="keyword" value="${keyword}" />
				<input type="submit" value="조회">
			</form>
		</div>

		<div class="footer">
			<p style="margin: 7px;">Copyright 2019. 공수래공수거. ALL RIGTHS RESERVED.</p>
		</div>
	</div>

	<table>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>타입유형</th>
			<th>멤버관리</th>
		</tr>

		<c:forEach items="${memberlist}" var="member">
			<tr>
				<td>${member.id}</td>
				<td>${member.name}</td>
				<td>${member.phonenum}</td>
				<td>${member.email}</td>
				<td>${member.membertype}</td>
				<td>
					<c:choose>
						<c:when test="${member.membertype eq 'admin'}">
							<button onclick="location.href='updateMemberType.do?id=${member.id}'">사용자로 전환</button>
						</c:when>
						<c:otherwise>
							<button onclick="location.href='updateMemberType.do?id=${member.id}'">관리자로 전환</button>
						</c:otherwise>
					</c:choose>
					<button onclick="location.href='deleteMember.do?id=${member.id}'">삭제</button>
				</td>
			</tr>
		</c:forEach>
	</table>
	<div id="paginationBox">
		<ul class="pagination">
			<c:if test="${pagination.prev }">
				<li class="page-item"><a class="page-link" href="#"
						onclick="fn_prev('${pagination.page}','${pagination.range}','${pagination.rangeSize}','${searchOption}','${keyword}')">Previous</a>
				</li>
			</c:if>
			<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
				<li class="page-item <c:out value=" ${pagination.page==idx ? 'active' : '' }" /> ">
				<a class="page-link" href="#"
					onclick="fn_pagination('${idx}','${pagination.range}','${pagination.rangeSize}','${searchOption}','${keyword}')">${idx}</a>
				</li>
			</c:forEach>
			<c:if test="${pagination.next}">
				<li class="page-item"><a class="page-link" href="#"
						onclick="fn_next('${pagination.page}','${pagination.range}','${pagination.rangeSize}','${searchOption}','${keyword}')">Next</a>
				</li>
			</c:if>
		</ul>
	</div>
	<div>
		<a>${pagination.page} </a>
		<a>${pagination.range } </a>
		<a>${pagination.rangeSize } </a>
		<a>${searchOption } </a>
		<a>${keyword } </a>
	</div>
	<a href="main.do">메인으로</a>


	<script type="text/javascript">
		function fn_prev(page, range, rangeSize, searchOption, keyword) {
			var page = ((range - 2) * rangeSize) + 1;
			var range = range - 1;
			var url = "memberlist.do";
			url = url + "?page=" + page;
			url = url + "&range=" + range;
			url = url + "&searchOption=" + searchOption;
			url = url + "&keyword=" + keyword;
			location.href = url;
		}
		function fn_pagination(page, range, rangeSize, searchOption, keyword) {
			var url = "memberlist.do";
			url = url + "?page=" + page;
			url = url + "&range=" + range;
			url = url + "&searchOption=" + searchOption;
			url = url + "&keyword=" + keyword;
			location.href = url;
		}
		function fn_next(page, range, rangeSize, searchOption, keyword) {
			var page = parseInt((range * rangeSize)) + 1;
			var range = parseInt(range) + 1;
			var url = "memberlist.do";
			url = url + "?page=" + page;
			url = url + "&range=" + range;
			url = url + "&searchOption=" + searchOption;
			url = url + "&keyword=" + keyword;
			location.href = url;
		}
	</script>
</body>

</html>