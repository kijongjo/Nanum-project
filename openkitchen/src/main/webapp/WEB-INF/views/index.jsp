<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='/resources/css/Header.css'/>">
<link rel="stylesheet"
	href="<c:url value='/resources/css/MainSlider.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/index.css'/>">
<link rel="stylesheet"
	href="<c:url value='/resources/css/index-slide.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/Reset.css'/>">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap"
	rel="stylesheet">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript"	src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src="<c:url value='/resources/js/jquery.bxslider.min.js'/>"></script>
<script src="<c:url value='/resources/js/index-slide.js'/>"></script>


<style>
	.slide-wrapper {
		position: relative;
	} 
</style>
</head>
<body>
	<jsp:include page="header.jsp" flush="false" />



	<!-- Main -->
	<div id="main-slider">
		<ul class="bxslider1">
			<li><img
				src="<c:url value='/resources/img/testimg/test1.jpg'/>"
				alt="slide01"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test2.jpg'/>"
				alt="slide02"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test3.jpg'/>"
				alt="slide03"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test4.jpg'/>"
				alt="slide04"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test5.jpg'/>"
				alt="slide05"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test6.jpg'/>"
				alt="slide06"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test7.jpg'/>"
				alt="slide07"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test8.jpg'/>"
				alt="slide08"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test9.jpg'/>"
				alt="slide09"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test10.jpg'/>"
				alt="slide10"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test11.jpg'/>"
				alt="slide11"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test12.jpg'/>"
				alt="slide12"></li>
		</ul>
	</div>


	<section>
		<div id="item01">
			<div class="itemTitle">
				<h2>남택수님,</h2>
				<h2>어떤 클래스를 찾으시나요?</h2>
			</div>
			<ul>
				<li><a href="classIn"> <img
						src="<c:url value='/resources/img/testimg/img-view_class.jpg'/>"
						alt="Class">
				</a></li>
				<li><a href="teacherIn"> <img
						src="<c:url value='/resources/img/testimg/img-view_teacher.jpg'/>"
						alt="teacher">
				</a></li>
				<li><a href="spaceIn"> <img
						src="<c:url value='/resources/img/testimg/img-view_place.jpg'/>"
						alt="place">
				</a></li>
			</ul>
		</div>


		<!-- 베스트 클래스 -->
		<div id="item02" class="slideItem">
			<div class="slide-wrapper">
				<div class="itemTitle">
					<h2>베스트 클래스</h2>
				</div>
				<ul class="bxslider">
					<li><a href="#"> <img
							src="<c:url value='/resources/img/testimg/test1.jpg'/>"
							alt="">
							<h4>자타공인밥도둑, 매콤꽃게무침</h4>
							<div>
								<span>한식</span> <span>경기도 용인시</span> <span>3월~5월</span>
							</div>
							<div class="Price">
								<strong>\</strong> 46,200
							</div>
					</a></li>
					<!-- 테스트용 복사 -->
					<li><a href="#"> <img
							src="<c:url value='/resources/img/testimg/test2.jpg'/>"
							alt="">
							<h4>자타공인밥도둑, 매콤꽃게무침</h4>
							<div>
								<span>한식</span> <span>경기도 용인시</span> <span>3월~5월</span>
							</div>
							<div class="Price">
								<strong>\</strong> 46,200
							</div>
					</a></li>
					<li><a href="#"> <img
							src="<c:url value='/resources/img/testimg/test3.jpg'/>"
							alt="">
							<h4>노오븐'쌀'츄러스</h4>
	                        <div>
	                            <span>베이킹</span>
	                            <span>경기도 김포시</span>
	                            <span>3월 1회 진행</span>
	                        </div>
	                        <div class="Price">
	                            <strong>\</strong> 10,000
	                        </div>
	                    </a>
	                </li>
	                <li>
	                    <a href="#">
	                        <img src="<c:url value='/resources/img/testimg/test4.jpg'/>" alt="">
	                        <h4>노오븐'쌀'츄러스</h4>
	                        <div>
	                            <span>베이킹</span>
	                            <span>경기도 김포시</span>
	                            <span>3월 1회 진행</span>
	                        </div>
	                        <div class="Price">
	                            <strong>\</strong> 10,000
	                        </div>
	                    </a>
	                </li>
	                <!-- 테스트 복사 끝 -->
	            </ul>
            </div>
        </div>


        <div id="item03" class="slideItem">
        <div class="slide-wrapper">
            <div class="itemTitle">
                <h2>가화만사성, 만(滿)원의클래스</h2>
            </div>
            <ul class="bxslider">
                <li>
                    <a href="#">
                       <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="">
                        <h4>노오븐'쌀'츄러스</h4>
                        <div>
                            <span>베이킹</span>
                            <span>경기도 김포시</span>
                            <span>3월 1회 진행</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong> 10,000
                        </div>
                    </a>
                </li>
                <!-- 테스트용 복사 -->
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test2.jpg'/>" alt="">
                        <h4>노오븐'쌀'츄러스</h4>
                        <div>
                            <span>베이킹</span>
                            <span>경기도 김포시</span>
                            <span>3월 1회 진행</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong> 10,000
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test3.jpg'/>" alt="">
                        <h4>노오븐'쌀'츄러스</h4>
                        <div>
                            <span>베이킹</span>
                            <span>경기도 김포시</span>
                            <span>3월 1회 진행</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong> 10,000
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test4.jpg'/>" alt="">
                        <h4>노오븐'쌀'츄러스</h4>
                        <div>
                            <span>베이킹</span>
                            <span>경기도 김포시</span>
                            <span>3월 1회 진행</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong> 10,000
                        </div>
                    </a>
                </li>
                <!-- 테스트 복사 끝 -->
            </ul>
            </div>
        </div>


        <div id="item04" class="slideItem">
        <div class="slide-wrapper">
            <div class="itemTitle">
                <h2>단 1명이라도 열리는, 동시모집</h2>
            </div>
            <ul class="bxslider">
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="">
                        <h4>불타는 금요일에 쿡맥하자!</h4>
                        <div>
                            <span>세계요리</span>
                            <span>경기도 안양시</span>
                            <span>3월~4월</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong> 49,500
                        </div>
                    </a>
                </li>
                <!-- 테스트용 복사 -->
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test2.jpg'/>" alt="">
                        <h4>불타는 금요일에 쿡맥하자!</h4>
                        <div>
                            <span>세계요리</span>
                            <span>경기도 안양시</span>
                            <span>3월~4월</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong> 49,500
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test3.jpg'/>" alt="">
                        <h4>불타는 금요일에 쿡맥하자!</h4>
                        <div>
                            <span>세계요리</span>
                            <span>경기도 안양시</span>
                            <span>3월~4월</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong> 49,500
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test4.jpg'/>" alt="">
                        <h4>불타는 금요일에 쿡맥하자!</h4>
                        <div>
                            <span>세계요리</span>
                            <span>경기도 안양시</span>
                            <span>3월~4월</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong> 49,500
                        </div>
                    </a>
                </li>
                <!-- 테스트용 복사 끝 -->
            </ul>
            </div>
        </div>


        <!-- 광고 이미지 -->
        <div id="Event-AD">
            <img src="<c:url value='/resources/img/testimg/testbanner.jpg'/>" alt="">
        </div>


        <!-- 오늘의 기획전 -->
        <div id="item05" class="slideItem">
        <div class="slide-wrapper">
            <div class="itemTitle">
                <h2>오늘의 기획전</h2>
            </div>
            <ul class="bxslider">
                <li>
                    <a href="#">
                    	<img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="">
                        <h4>집밥처럼 든든한 금손들의 도시락</h4>
                        <p>좋아하는 메뉴로 도시락을 채워봅시다! 곰손도 금손처럼 만들 수 있어요</p>
                        <div class="hashtag">
                            <div>#맛과 비주얼</div>
                            <div>#모두 잡았어요</div>
                            <div>#금손도시락</div>
                            <div>#든든해요</div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                    <img src="<c:url value='/resources/img/testimg/test2.jpg'/>" alt="">
                        <h4>디저트 배는 따로 있잖아요?</h4>
                        <p>배가 불러도 디저트는 꼭 드시는 분들은 주목하세요</p>
                        <div class="hashtag">
                            <div>#디저트배는</div>
                            <div>#따로있으니까</div>
                            <div>#기분좋은단맛</div>
                            <div>예술적디저트</div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test3.jpg'/>" alt="">
                        <h4>지금 꼭 먹어야 할 제철요리</h4>
                        <p>재료의 풍미를 끌어 올려주는 특별한 레시피로 제철요리를 맘껏 즐겨봅시다</p>
                        <div class="hashtag">
                            <div>#지금이가장</div>
                            <div>#맛있는메뉴</div>
                            <div>#이달의재료는</div>
                            <div>#딸기입니다</div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test4.jpg'/>" alt="">
                        <h4>지금 꼭 먹어야 할 제철요리</h4>
                        <p>재료의 풍미를 끌어 올려주는 특별한 레시피로 제철요리를 맘껏 즐겨봅시다</p>
                        <div class="hashtag">
                            <div>#지금이가장</div>
                            <div>#맛있는메뉴</div>
                            <div>#이달의재료는</div>
                            <div>#딸기입니다</div>
                        </div>
                    </a>
                </li>
            </ul>
            </div>
        </div>


        <!-- 인기 클래스 -->
        <div id="all-content">
            <div class="itemTitle">
                <h2>인기 클래스</h2>
            </div>
            <ul>
                <li>
                    <a href="#">
                    	<img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="">
                        <h4>향 은은 얼그레이 초코쿠키</h4>
                        <p>얼그레이 초코 쿠키 만들기와 모카포트를 이요한 커피 내리기 과정이 진행됩니다.</p>
                        <div>
                            <span>베이킹</span>
                            <span>서울특별시 송파구</span>
                            <span>앵콜</span>
                        </div>
                    </a>
                </li>
                <!-- 테스트용 복사코드-->
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="">
                        <h4>손이가요 손이가! 해물잡채</h4>
                        <p>한식 클래스</p>
                        <div>
                            <span>베이킹</span>
                            <span>서울특별시 송파구</span>
                            <span>앵콜</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="">
                        <h4>향 은은 얼그레이 초코쿠키</h4>
                        <p>얼그레이 초코 쿠키 만들기와 모카포트를 이요한 커피 내리기 과정이 진행됩니다.</p>
                        <div>
                            <span>베이킹</span>
                            <span>서울특별시 송파구</span>
                            <span>앵콜</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="">
                        <h4>향 은은 얼그레이 초코쿠키</h4>
                        <p>얼그레이 초코 쿠키 만들기와 모카포트를 이요한 커피 내리기 과정이 진행됩니다.</p>
                        <div>
                            <span>베이킹</span>
                            <span>서울특별시 송파구</span>
                            <span>앵콜</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="">
                        <h4>향 은은 얼그레이 초코쿠키</h4>
                        <p>얼그레이 초코 쿠키 만들기와 모카포트를 이요한 커피 내리기 과정이 진행됩니다.</p>
                        <div>
                            <span>베이킹</span>
                            <span>서울특별시 송파구</span>
                            <span>앵콜</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="">
                        <h4>향 은은 얼그레이 초코쿠키</h4>
                        <p>얼그레이 초코 쿠키 만들기와 모카포트를 이요한 커피 내리기 과정이 진행됩니다.</p>
                        <div>
                            <span>베이킹</span>
                            <span>서울특별시 송파구</span>
                            <span>앵콜</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="">
                        <h4>향 은은 얼그레이 초코쿠키</h4>
                        <p>얼그레이 초코 쿠키 만들기와 모카포트를 이요한 커피 내리기 과정이 진행됩니다.</p>
                        <div>
                            <span>베이킹</span>
                            <span>서울특별시 송파구</span>
                            <span>앵콜</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="">
                        <h4>향 은은 얼그레이 초코쿠키</h4>
                        <p>얼그레이 초코 쿠키 만들기와 모카포트를 이요한 커피 내리기 과정이 진행됩니다.</p>
                        <div>
                            <span>베이킹</span>
                            <span>서울특별시 송파구</span>
                            <span>앵콜</span>
                        </div>
                    </a>
                </li>
                <!-- 테스트용 복사코드 끝-->
            </ul>
        </div>

        <button>
            더 많은 클래스가 궁금하다면?
            <img src='<c:url value='/resources/img/icon/ico-more.png'/>' alt="more">
        </button>
    </section>
</body>
</html>