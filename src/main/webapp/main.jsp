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
                <a href="#"><img src="img/headerlogo.jpg"></a>
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


    <slider>
        <div id="sliderside">
            <img src="img/side.jpg">
            <img src="img/side2.jpg">
            <img src="img/side3.jpg">
            <img src="img/side4.jpg">
        </div>

        <div id="slidermain">
            <div id="slidermainunder">
                <ul class="sliders">
                    <li>
                        <a href="#"><span class="slide1">
                            </span></a>
                        <a href="#"><span class="slide1">
                            </span>
                            <a href="#"><span class="slide1">
                                </span></a>
                            <a href="#"><span class="slide1">
                                </span></a>
                    </li>
                    <li>
                        <a href="#"><span class="slide2">
                            </span></a>
                        <a href="#"><span class="slide2">
                            </span>
                            <a href="#"><span class="slide2">
                                </span></a>
                            <a href="#"><span class="slide2">
                                </span></a>
                    </li>
                    <li>
                        <a href="#"><span class="slide3">
                            </span></a>
                        <a href="#"><span class="slide3">
                            </span>
                            <a href="#"><span class="slide3">
                                </span></a>
                            <a href="#"><span class="slide3">
                                </span></a>
                    </li>
                </ul>
                <span class="prev">&lt;</span>
                <span class="next">&gt;</span>
            </div>
            <div id="sliderlist">
                <ul id="sliderlist1">
                    <li><button>편집장의 선택</button></li>
                    <li><button>이 주의 책</button></li>
                    <li><button>신간 소개</button></li>
                </ul>
            </div>
        </div>

    </slider>


    <section>
        <section1>
            <div id="section1">
                <div id="section1book">
                    <div id="bookcategory">
                        <ul id="secmenu">
                            <li id="scemenu1">편집장의 선택</li>
                            <li id="scemenu2">eBook</li>
                            <li id="scemenu3">외국도서</li>
                        </ul>
                    </div>
                    <div id="bookslide">
                        <ul id="secslide">
                            <li id="secslide1">
                                <ul id="secslide1under">
                                    <li>
                                        <span class="secslide1">
                                        </span>
                                    </li>
                                    <li>
                                        <span class="secslide1">
                                        </span>
                                    </li>
                                    <li>
                                        <span class="secslide1">
                                        </span>
                                    </li>
                                    <li>
                                        <span class="secslide1">
                                        </span>
                                    </li>
                                </ul>
                            </li>
                            <li id="secslide2">
                                <ul id="secslide1under">
                                    <li>
                                        <span class="secslide2">
                                        </span>
                                    </li>
                                    <li>
                                        <span class="secslide2">
                                        </span>
                                    </li>
                                    <li>
                                        <span class="secslide2">
                                        </span>
                                    </li>
                                    <li>
                                        <span class="secslide2">
                                        </span>
                                    </li>
                                </ul>
                            </li>
                            <li id="secslide3">
                                <ul id="secslide1under">
                                    <li>
                                        <span class="secslide3">
                                        </span>
                                    </li>
                                    <li>
                                        <span class="secslide3">
                                        </span>
                                    </li>
                                    <li>
                                        <span class="secslide3">
                                        </span>
                                    </li>
                                    <li>
                                        <span class="secslide3">
                                        </span>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>

                <div id="section1ad">
                    <ul id="section1adunder">
                        <li>
                            <img src="img/sad1.jpg">
                        </li>
                        <li>
                            <img src="img/sad2.jpg">
                        </li>
                    </ul>
                </div>

            </div>
        </section1>

        <div id="banner2">
            <div id="banner2under"></div>
            <img src="img/banner2.jpg">
        </div>

        <section2>
            <div id="section2">
                <div id="sec2book1">
                    <div id="sec2book1p">
                        <p1>추천마법사의 선택 ></p1>
                        <c:if test="${not empty loginUser.userid}">
						</c:if>
						<c:if test="${empty loginUser.userid}">
                        <p2>지금 로그인하시면 추천마법사가 선택한 책을 보여드립니다. <a href="login.do">로그인하기</a></p2>
                    	</c:if>
                    </div>
                    <ul id="sec2book1slide">
                        <li>
                            <ul id="sec2book1slideunder">
                                <li>
                                    <a href=""><span class="sec2slide">
                                        </span></a>
                                </li>
                                <li>
                                    <a href=""><span class="sec2slide">
                                        </span></a>
                                </li>
                                <li>
                                    <a href=""><span class="sec2slide">
                                        </span></a>
                                </li>
                                <li>
                                    <a href=""><span class="sec2slide">
                                        </span></a>
                                </li>
                                <li>
                                    <a href=""><span class="sec2slide">
                                        </span></a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <ul id="sec2book1slideunder">
                                <li>
                                    <a href=""><span class="sec2slide">
                                        </span></a>
                                </li>
                                <li>
                                    <a href=""><span class="sec2slide">
                                        </span></a>
                                </li>
                                <li>
                                    <a href=""><span class="sec2slide">
                                        </span></a>
                                </li>
                                <li>
                                    <a href=""><span class="sec2slide">
                                        </span></a>
                                </li>
                                <li>
                                    <a href=""><span class="sec2slide">
                                        </span></a>
                                </li>
                            </ul>
                        </li>

                    </ul>
                    <span class="prev2">&lt;</span>
                    <span class="next2">&gt;</span>
                </div>
                <br>
                <div id="sec2book3">
                    <div id="sec2book1slide_3">
                            <div id="adn">
                                <div class="adn1">
                                    <a href=""><img src="img/sadn1.jpg"></a>
                                </div>
                                <div class="adn1">
                                    <a href=""><img src="img/sadn2.jpg"></a>
                                </div>
                                <div class="adn1">
                                    <a href=""><img src="img/sadn3.jpg"></a>
                                </div>
                            </div>
                    </div>
                </div>
                <br>
                <div id="sec2book2">
                    <div id="sec2book1p">
                        <p1>이달의 주목도서 ></p1>
                    </div>
                    <ul id="sec2book1slide_2">
                        <li>
                            <ul id="sec2book1slideunder">
                                <li>
                                    <a href=""><span class="sec2slide_2">
                                        </span></a>
                                </li>
                                <li>
                                    <a href=""><span class="sec2slide_2">
                                        </span></a>
                                </li>
                                <li>
                                    <a href=""><span class="sec2slide_2">
                                        </span></a>
                                </li>
                                <li>
                                    <a href=""><span class="sec2slide_2">
                                        </span></a>
                                </li>
                                <li>
                                    <a href=""><span class="sec2slide_2">
                                        </span></a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <ul id="sec2book1slideunder">
                                <li>
                                    <a href=""><span class="sec2slide_2">
                                        </span></a>
                                </li>
                                <li>
                                    <a href=""><span class="sec2slide_2">
                                        </span></a>
                                </li>
                                <li>
                                    <a href=""><span class="sec2slide_2">
                                        </span></a>
                                </li>
                                <li>
                                    <a href=""><span class="sec2slide_2">
                                        </span></a>
                                </li>
                                <li>
                                    <a href=""><span class="sec2slide_2">
                                        </span></a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <span class="prev2_2">&lt;</span>
                    <span class="next2_2">&gt;</span>
                </div>
                <br>
                <br>
            </div>
        
        </section2>

    </section>

    <div id="footerup">
        <ul>
            <li><a href="#"><span class="fspan">회사소개</span></a></li>
            <li><a href="#"><span class="fspan">채용안내</span></a></li>
            <li><a href="#"><span class="fspan">이용약관</span></a></li>
            <li><a href="#"><span class="fspan"><b>개인정보처리방침</b></span></a></li>
            <li><a href="#"><span class="fspan">청소년 보호정책</span></a></li>
            <li><a href="#"><span class="fspan">중고매장</span></a></li>
            <li><a href="#"><span class="fspan">제휴 마케팅 안내</span></a></li>
            <li><a href="#"><span class="fspan">판매자 매니저</span></a></li>
            <li><a href="#"><span class="fspan">출판사 공급사 안내</span></a></li>
            <li><a href="#"><span class="fspan">광고 안내</span></li>
            <li><a href="#"><span class="fspan">학교 기업 기관 대량구매</span></a></li>
        </ul>
    </div>
    <footer>
        <div id="footerleft">
            <br>
            <br>
            <span class="fs1">
                (주)알라딘커뮤니케이션
            </span>
            <span  class="fs2">
                <ul>
                    <li>대표이사 최우경</li>
                    <li>고객정보보호 책임자 최우경</li>
                    <li>사업자등록 201-81-23094 ></li>
                    <li>통신판매업신고 중구01520호</li>                  
                </ul>
                <ul>
                    <li>이메일 privacy@aladin.co.kr</li>
                    <li>호스팅 제공자 알라딘커뮤니케이션</li>
                    <li>(본사) 서울시 중구 서소문로 89-31</li>

                </ul>
            </span>
            <span class="fs3">ⓒ Aladin Communication. All Rights Reserved.</span>
        </div>

        <div id="footerright">
            <br>
            <br>
            <span class="fs1">
                고객센터 1544-2514 (발신자 부담)
            </span>
            <span  class="fs2">
                <ul>
                    <li>서울시 마포구 백범로 71 숨도빌딩 7층 Fax 02-6926-2600</li>
                </ul>
            </span>
            <button class="fb1">1:1 문의</button>
            <button class="fb2">FAQ</button>
            <button class="fb3">중고매장 위치, 영업매장 안내</button>
        </div>
    </footer>


    <script>

    </script>

</body>

</html>