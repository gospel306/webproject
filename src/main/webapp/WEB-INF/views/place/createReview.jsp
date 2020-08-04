<<<<<<< HEAD
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
        <div class="main">
            <form class="inputForm">
                <h3>현충원에 대한 후기 작성하기</h3>
                <div class="stars">
                    <input type="radio" name="star" class="star-1" id="star-1" value="1" required />
                    <label class="star-1" for="star-1" onclick="setRatingText('최악이에요!');">1</label>
                    <input type="radio" name="star" class="star-2" id="star-2" value="2" />
                    <label class="star-2" for="star-2" onclick="setRatingText('별로에요!');">2</label>
                    <input type="radio" name="star" class="star-3" id="star-3" value="3" />
                    <label class="star-3" for="star-3" onclick="setRatingText('그저그래요!');">3</label>
                    <input type="radio" name="star" class="star-4" id="star-4" value="4" />
                    <label class="star-4" for="star-4" onclick="setRatingText('좋아요!');">4</label>
                    <input type="radio" name="star" class="star-5" id="star-5" value="5" />
                    <label class="star-5" for="star-5" onclick="setRatingText('정말 좋아요!');">5</label>
                    <span></span>
                </div>

                <div class="contentInput">
                    <p id="status">회원님의 평가를 별점으로 표시해주세요</p>
                    <textarea name="content" id="contentInputForm" cols="2" rows="10"></textarea>

                    <button type="submit">작성하기</button>
                </div>
            </form>
        </div>

        <div class="footer">
            <p style="margin: 7px;">Copyright 2019. 공수래공수거. ALL RIGTHS RESERVED.</p>
        </div>
    </div>


    <script>
        const status = document.querySelector('#status')
        setRatingText = (value) => {
            // console.log('Hi!');
            status.innerHTML = value;
        }

    </script>
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
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
       
        <div class="main" ">
            <form class="inputForm">
                <h3>현충원에 대한 후기 작성하기</h3>
                <div class="stars" style="border: 1px solid black;">
                    <input type="radio" name="star" class="star-1" id="star-1" value="1" required />
                    <label class="star-1" for="star-1" onclick="setRatingText('최악이에요!');">1</label>
                    <input type="radio" name="star" class="star-2" id="star-2" value="2" />
                    <label class="star-2" for="star-2" onclick="setRatingText('별로에요!');">2</label>
                    <input type="radio" name="star" class="star-3" id="star-3" value="3" />
                    <label class="star-3" for="star-3" onclick="setRatingText('그저그래요!');">3</label>
                    <input type="radio" name="star" class="star-4" id="star-4" value="4" />
                    <label class="star-4" for="star-4" onclick="setRatingText('좋아요!');">4</label>
                    <input type="radio" name="star" class="star-5" id="star-5" value="5" />
                    <label class="star-5" for="star-5" onclick="setRatingText('정말 좋아요!');">5</label>
                    <span></span>
                </div>

                <div class="contentInput">
                    <p id="status">회원님의 평가를 별점으로 표시해주세요</p>
                    <textarea name="content" id="contentInputForm" cols="2" rows="10"></textarea>
                    <button type="submit">작성하기</button>
                </div>
            </form>
        </div>

        <div class="footer">
            <p style="margin: 7px;">Copyright 2019. 공수래공수거. ALL RIGTHS RESERVED.</p>
        </div>
    </div>


    <script>
        const status = document.querySelector('#status')
        setRatingText = (value) => {
            // console.log('Hi!');
            status.innerHTML = value;
        }

    </script>
</body>
>>>>>>> f72e339... 유창오| star 뒷배경 안나오는 버그 수정중
</html>