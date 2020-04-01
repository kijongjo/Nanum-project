<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/contents.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/Header.css'/>">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap" rel="stylesheet">
</head>
<body>
	<jsp:include page="../../header.jsp" flush="false" />
    <div id="content">
        <div id="new-content">
            <div>
                <h1>새로운 클래스</h1>
            </div>
            <ul>
                <li>
                    <a href="#">
						<img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="" />
                        <h3> 이유의계절:봄-레몬파운드 케익</h3>
                        <p>상큼함이 입안 가득! 레몬파운드 케익 6개를 예쁘게 포장해가져가세요 :-)</p>
                        <div>
                            <span>베이킹</span>
                            <span>서울특별시 서대문구</span>
                            <span>4월6회 진행</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong>49,800
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="">
                        <h3> 이유의계절:봄-레몬파운드 케익</h3>
                        <p>상큼함이 입안 가득! 레몬파운드 케익 6개를 예쁘게 포장해가져가세요 :-)</p>
                        <div>
                            <span>베이킹</span>
                            <span>서울특별시 서대문구</span>
                            <span>4월6회 진행</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong>49,800
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="">
                        <h3>이유의계절:봄-레몬파운드 케익</h3>
                        <p>상큼함이 입안 가득! 레몬파운드 케익 6개를 예쁘게 포장해가져가세요 :-)</p>
                        <div>
                            <span>베이킹</span>
                            <span>서울특별시 서대문구</span>
                            <span>4월6회 진행</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong>49,800
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="">
                        <img src="../class/향 은은 얼그레이 초코쿠키0.jpg" alt="">
                        <h3>이유의계절:봄-레몬파운드 케익</h3>
                        <p>상큼함이 입안 가득! 레몬파운드 케익 6개를 예쁘게 포장해가져가세요 :-)</p>
                        <div>
                            <span>베이킹</span>
                            <span>서울특별시 서대문구</span>
                            <span>4월6회 진행</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong>49,800
                        </div>
                    </a>
                </li>
                
            </ul>
        </div>


        <div>
            <a href="#">
                <img src="<c:url value='/resources/img/testimg/testbanner.jpg'/>" alt="">
            </a>
        </div>


        <div id="all-content">
            <div class="itemTitle">
                <h2>클래스</h2>
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
                        <div class="Price">
                            <strong>\</strong>49,800
                        </div>
                    </a>
                </li>
                <!-- 테스트용 복사코드-->
                <li>
                    <a href="#">
                		<img src="<c:url value='/resources/img/testimg/test2.jpg'/>" alt="">
                        <h4>손이가요 손이가! 해물잡채</h4>
                        <p>한식 클래스</p>
                        <div>
                            <span>베이킹</span>
                            <span>서울특별시 송파구</span>
                            <span>앵콜</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong>49,800
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                    	<img src="<c:url value='/resources/img/testimg/test3.jpg'/>" alt="">
                        <h4>향 은은 얼그레이 초코쿠키</h4>
                        <p>얼그레이 초코 쿠키 만들기와 모카포트를 이요한 커피 내리기 과정이 진행됩니다.</p>
                        <div>
                            <span>베이킹</span>
                            <span>서울특별시 송파구</span>
                            <span>앵콜</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong>49,800
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                		<img src="<c:url value='/resources/img/testimg/test10.jpg'/>" alt="">
                        <h4>향 은은 얼그레이 초코쿠키</h4>
                        <p>얼그레이 초코 쿠키 만들기와 모카포트를 이요한 커피 내리기 과정이 진행됩니다.</p>
                        <div>
                            <span>베이킹</span>
                            <span>서울특별시 송파구</span>
                            <span>앵콜</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong>49,800
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                		<img src="<c:url value='/resources/img/testimg/test10.jpg'/>" alt="">
                        <h4>향 은은 얼그레이 초코쿠키</h4>
                        <p>얼그레이 초코 쿠키 만들기와 모카포트를 이요한 커피 내리기 과정이 진행됩니다.</p>
                        <div>
                            <span>베이킹</span>
                            <span>서울특별시 송파구</span>
                            <span>앵콜</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong>49,800
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                		<img src="<c:url value='/resources/img/testimg/test3.jpg'/>" alt="">
                        <h4>향 은은 얼그레이 초코쿠키</h4>
                        <p>얼그레이 초코 쿠키 만들기와 모카포트를 이요한 커피 내리기 과정이 진행됩니다.</p>
                        <div>
                            <span>베이킹</span>
                            <span>서울특별시 송파구</span>
                            <span>앵콜</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong>49,800
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                		<img src="<c:url value='/resources/img/testimg/test2.jpg'/>" alt="">
                        <h4>향 은은 얼그레이 초코쿠키</h4>
                        <p>얼그레이 초코 쿠키 만들기와 모카포트를 이요한 커피 내리기 과정이 진행됩니다.</p>
                        <div>
                            <span>베이킹</span>
                            <span>서울특별시 송파구</span>
                            <span>앵콜</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong>49,800
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
                        <div class="Price">
                            <strong>\</strong>49,800
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
    </div>
</body>
</html>