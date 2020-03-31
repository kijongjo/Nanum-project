<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='/resources/css/Reset.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/Header.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/mypageIn.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/mypageIn-slide.css'/>">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap" rel="stylesheet">  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="<c:url value='/resources/js/jquery.bxslider.min.js'/>"></script>

<script>
    $(document).ready(function(){
          $('.bxslider').bxSlider({
            /* 슬라이드 최소 노출 개수 
               최소 노출개수와 최대 노출개수가 같아지면
               width값이 고정된다 주의 할 것
            */
            minSlides:1,
            /* 슬라이드 최대 노출 개수 */
            maxSlides:3,
            /* 슬라이드 이동 갯수 */
            moveSlides:1,
            /* 슬라이드 너비 */
            slideWidth:340,
            /* 슬라이드 여백 */
            slideMargin:15,
            /* 이동 동그라미 노출 여부 */
            pager: false,
            /* 슬라이드 무한 반복 제어 */
            infiniteLoop: false,
            /* 이미지 첫번째 또는 마지막 일때 prev와 next 버튼 비활성/활성화 */
            hideControlOnEnd: true,
            adaptiveHeight: true,
            
            // 슬라이드 속도(숫자가 커질수록 느려짐)
            speed: 450
          });
        });
  </script>
</head>

<body>
<jsp:include page="../../header.jsp" flush="false" />
<div id="lay03">
        <section id="left01">
            <div class="breadcrumb">
                <p class="parent">공공의주방</p>
                <h1>마이페이지</h1>
            </div>           
        </section>
        <section id="right01">
            <section class="none-boder">
                <div class="intro">
                    <figure class="profile">
                        <span class="img">
                            <img class="myimg" src="<c:url value='/resources/img/icon/bg-no_profile.png'/>">
                        </span>
                        <i class="inp-file"></i>
                    </figure>
                    <div class="hello">
                        <p><strong>이정용</strong>님 반갑습니다.</p>
                        <div class="badge">
                            <span class="student">수강생</span>
                        </div>   
                    </div>   
                </div>
            </section>
            <section class="none-boder main-list">
                    <div class="list-wrap">
                        <h2 class="title">요리 배우기</h2>
                        <ul class="list">
                            <li><a href="cookBookD?no=1">예약 클래스</a></li>
                            <li><a href="cookRefunD?no=2">취소/환불</a></li>
                            <li><a href="completeClass?no=3">종료 클래스</a></li>
                        </ul>
                    </div>
                    <div class="list-wrap">
                        <h2 class="title">클래스 만들기</h2>
                        <ul class="list">
                            <li><a href="">임시저장 <i class="ico-more_arrow"></i></a></li>
                            <li><a href="standByClass?no=1">대기 클래스 </a></li>
                            <li><a href="ongoingClass?no=2">진행 클래스 </a></li>
                            <li><a href="completeClass?no=3">종료 클래스 </a></li>
                        </ul>
                    </div>
                    <div class="list-wrap">
                        <h2 class="title">공간 공유하기</h2>
                        <ul class="list">
                            <li><a href="">임시저장 <i class="ico-more_arrow"></i></a></li>
                            <li><a href="standBySpace?no=1">대기 공간 </a></li>
                            <li><a href="ongoingSpace?no=2">진행 공간 </a></li>
                            <li><a href="completeSpace?no=3">종료 공간 </a></li>  
                        </ul>
                    </div>         
            </section>
           
            <section class="dashboard">
                <div class="table">
                    <dl>
                        <dt><a href="">마일리지</a></dt>
                        <dd>0 <em>원</em></dd>
                        <dt><a href="">포인트</a></dt>
                        <dd>0 <em>원</em></dd>
                        <dt><a href="">쿠폰</a></dt>
                        <dd>0 <em>원</em></dd>
                    </dl>
                    <dl>
                        <dt><a href="message">1:1 메시지</a></dt>
                    </dl>
                </div>
                <div class="notification">
                    <dl>
                        <dt><a href="alarmD">알림</a></dt>
                        <dd>0<em>건</em></dd>
                    </dl>
                    <ul>
                        <li>
                            <a href="alarmD">
                                <figure>
                                    <img src="<c:url value='/resources/img/icon/img-alert_msg.png'/>" alt="">
                                </figure>
                                <div class="list-content">
                                    <strong>요리배우기<span class="time">20.03.24</span></strong>
                                    <p>신청하신 클래스(냉파스타와 알리올리오)가 예약 완료되었습니다.</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="alarmD">
                                <figure>
                                    <img src="<c:url value='/resources/img/icon/img-alert_msg.png'/>" alt="">
                                </figure>
                                <div class="list-content">
                                    <strong>요리배우기<span class="time">20.03.24</span></strong>
                                    <p>신청하신 클래스(냉파스타와 알리올리오)가 예약 완료되었습니다.</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="alarmD">
                                <figure>
                                    <img src="<c:url value='/resources/img/icon/img-alert_msg.png'/>" alt="">
                                </figure>
                                <div class="list-content">
                                    <strong>요리배우기<span class="time">20.03.24</span></strong>
                                    <p>신청하신 클래스(냉파스타와 알리올리오)가 예약 완료되었습니다.</p>
                                </div>
                            </a>
                        </li>
                        
                        
                    </ul>
                </div>
            </section>
            <section class="wishlist">
                <dl>
                    <dt><a href="">위시리스트</a></dt>
                    <dd>16<em>개</em></dd>
                </dl>
                <!--
                    scroll-btn prev scroll-btn next  
                    bx-wrapper
                -->
                <div class="list-scroll">   
                    <div class="inner">
                        <!-- style="width: 340px; height: 214px; -->
                        <ul class="bxslider">
                             <li>
                                <a href="">
                                <figure>
                                    <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="">
                                </figure>
                                <div class="list-content">
                                    <strong>도로시</strong>
                                    <div class="text-info">
                                        <span>서울</span>
                                        <span>서울특별시 강서구</span>
                                    </div>
                                </div>    
                                </a>
                            </li>
                            <li>
                                <a href="">
                                <figure>
                                    <img src="<c:url value='/resources/img/testimg/test2.jpg'/>" alt="">
                                </figure>
                                <div class="list-content">
                                    <strong>도로시</strong>
                                    <div class="text-info">
                                        <span>서울</span>
                                        <span>서울특별시 강서구</span>
                                    </div>
                                </div>    
                                </a>
                            </li> 
                            <li>
                                <a href="">
                                <figure>
                                    <img src="<c:url value='/resources/img/testimg/test3.jpg'/>" alt="">
                                </figure>
                                <div class="list-content">
                                    <strong>도로시</strong>
                                    <div class="text-info">
                                        <span>서울</span>
                                        <span>서울특별시 강서구</span>
                                    </div>
                                </div>    
                                </a>
                            </li>
                            <li>
                                <a href="">
                                <figure>
                                    <img src="<c:url value='/resources/img/testimg/test4.jpg'/>" alt="">
                                </figure>
                                <div class="list-content">
                                    <strong>도로시</strong>
                                    <div class="text-info">
                                        <span>서울</span>
                                        <span>서울특별시 강서구</span>
                                    </div>
                                </div>    
                                </a>
                            </li> 
                            <li>
                                <a href="">
                                <figure>
                                    <img src="<c:url value='/resources/img/testimg/test5.jpg'/>" alt="">
                                </figure>
                                <div class="list-content">
                                    <strong>도로시</strong>
                                    <div class="text-info">
                                        <span>서울</span>
                                        <span>서울특별시 강서구</span>
                                    </div>
                                </div>    
                                </a>
                            </li>
                        </ul>    
                    </div>
                </div>
            </section>
        </section>
    </div>
</body>
</html>