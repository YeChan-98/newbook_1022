<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>알라딘</title>

    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.0.min.js"></script>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/slider.css">
    <link rel="stylesheet" href="css/section1.css">
    <link rel="stylesheet" href="css/section2.css">
    <link rel="stylesheet" href="css/footer.css">


    <script type="text/javascript" src="script/header.js"></script>
    <script type="text/javascript" src="script/slider.js"></script>
    <script type="text/javascript" src="script/section1.js"></script>
    <script type="text/javascript" src="script/section2.js"></script>
    <script type="text/javascript" src="script/member.js"></script>


</head>

<body>

<div id="banner1"><a href="#"><img src="img/header_1.jpg"> </a></div>

    <span id="menuup"></span>
    <header>
        <div id="menu1">
            <ul id="menu1_left">
                <li
                    style="color: #33afe9; background-color: white; width: 60px; height: 60px; padding: 0; text-align: center; border-radius: 5px;">
                    <a href="main.jsp">HOME</a></li>
                <li><a href="productList.do">국내도서</a></li>
                <li>외국도서</li>
                <li>eBook</li>
                <li>알라딘굿즈</li>
                <li>온라인중고</li>
                <li>우주점</li>
                <li>중고매장</li>
                <li>커피</li>
                <li>음반</li>
                <li>블루레이</li>
            </ul>

            <c:if test="${not empty loginUser.userid}">
    <ul id="menu1_right">
        <li>${loginUser.username}님</li>
        <li><a href="logout.do">로그아웃</a></li>
        <li><a href="memberUpdate.do?a=2&userid=${loginUser.userid}">마이페이지</a></li>
        <li>고객센터</li>
        <li>장바구니(0)</li>
    </ul>
</c:if>
<c:if test="${empty loginUser.userid}">
    <ul id="menu1_right">
        <li id="link"><a href="login.do">로그인</a></li>
        <li id="link"><a href="join.do">회원가입</a></li>
        <li id="link"><a href="login.do">마이페이지</a></li>
        <li>고객센터</li>
        <li>장바구니(0)</li>
    </ul>
</c:if>
        </div>
        <div id="headercenter">
            <div id="headerlogo">
                <a href="main.jsp"><img src="img/headerlogo.jpg"></a>
            </div>
            <div id="searchbox">
                <div id="search_1">통합검색</div>
                <div id="search_2"><input type="text" placeholder="건강 베스트 1위 <저속노화 식사법>"></div>
                <button id="searchbuttom" type="submit">검색</button>
            </div>
            <p id="searchsub">상세검색</p>
            <div id="headerAD"></div>
        </div>
        <div id="menu2">
            <ul id="menu2_left">
                <li>분야보기</li>
                <li>추천마법사
                    <ul class="sub">
                        <li><a href="#">마법사의 선택</a></li>
                        <li><a href="#">신간알리미</a></li>
                        <li><a href="#">서재 이웃의 선택</a></li>
                        <li><a href="#">오늘 본 상품</a></li>
                    </ul>
                </li>
                <li>베스트셀러</li>
                <li>새로나온 책
                    <ul class="sub">
                        <li><a href="#">새로나온책</a></li>
                        <li><a href="#">새로나온책</a></li>
                    </ul>
                </li>
                <li>이벤트
                    <ul class="sub">
                        <li><a href="#">이벤트</a></li>
                        <li><a href="#">굿즈 총집합</a></li>
                    </ul>
                </li>
                <li>정가인하도서
                    <ul class="sub">
                        <li><a href="#">정가인하도서</a></li>
                        <li><a href="#">함께 사면 무료배송</a></li>
                    </ul>
                </li>
                <li>추천도서
                    <ul class="sub">
                        <li><a href="board.jsp">추천도서</a></li>
                        <li><a href="#">이 책의 한 문장</a></li>
                        <li><a href="#">카드리뷰</a></li>
                        <li><a href="#">북트레일러</a></li>
                    </ul>
                </li>
                <li>작가와의 만남
                    <ul class="sub">
                        <li><a href="#">작가와의 만남</a></li>
                        <li><a href="#">알라딘 아카데미</a></li>
                        <li><a href="#">알라디너TV</a></li>
                    </ul>
                </li>
                <li>북펀드
                    <ul class="sub">
                        <li><a href="#">북펀드</a></li>
                        <li><a href="#">단한권 인쇄소</a></li>
                    </ul>
                </li>
            </ul>
        </div>

    </header>
<div id="menudown"></div>
</body>

</html>