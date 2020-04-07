<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link
   href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap"
   rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/alarmD.css'/>">
<link rel="stylesheet" href="<c:url value='resources/css/Header.css' />">
<link rel="stylesheet" href="<c:url value='/resources/css/footer.css'/>">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<jsp:include page="../../headerScript.jsp" />
</head>
<body>
<jsp:include page="../../header.jsp" />
   <div id="lay03Alarm">
      <section id="left01MsgAlarm">
         <p>마이페이지</p>
         <h1>알림</h1>
      </section>
      <section id="right01Alarm">
         <div id="alarmSelectDiv">
            <!-- select id 테스트 하기 위해 임의로 부여 바꿔야 할수 있음 -->
            <div id="labelDiv">
               <select name="" id="sel01">
                  <option selected>전체</option>
                  <option value="">공지</option>
                  <option value="">광고</option>
                  <option value="">요리 만들기</option>
                  <option value="">클래스 만들기</option>
                  <option value="">공간 공유하기</option>
               </select>
            </div>
         </div>
         <div id="list-alarm">
            <ul>
               <li><a href="#chat"> <img src="<c:url value='/resources/img/icon/img-alert_msg.png' />"
                     alt="">
                     <div class="list-alarm-con">
                        <div class="alarmDate">
                           <span class="alarmTime">20.03.12</span>
                        </div>
                        <strong class="alarmS">요리배우기</strong>
                        <p class="alarmP">신청하신 클래스(냉파스타와 알리오올리오)가 예약 취소되었습니다. 취소 확인은
                           요리 배우기-...</p>
                     </div>
               </a></li>
               <li><a href="#chat"> <img src="<c:url value='/resources/img/icon/img-alert_msg.png' />"
                     alt="">
                     <div class="list-alarm-con">
                        <div class="alarmDate">
                           <span class="alarmTime">20.03.09</span>
                        </div>
                        <strong class="alarmS">요리배우기</strong>
                        <p class="alarmP">신청하신 클래스(냉파스타와 알리오올리오)가 예약 완료되었습니다. 예약 확인은
                           요리 배우기-...</p>
                     </div>
               </a></li>
               <li><a href=""> <img src="<c:url value='/resources/img/icon/img-alert_msg.png' />" alt="">
                     <div class="list-alarm-con">
                        <div class="alarmDate">
                           <span class="alarmTime">20.03.08</span>
                        </div>
                        <strong class="alarmS">요리배우기</strong>
                        <p class="alarmP">신청하신 클래스(아쿠아돈까스(9명가능))가 예약 취소되었습니다. 취소 확인은
                           요리 배우기-...</p>
                     </div>
               </a></li>
               <li><a href="#chat"> <img src="<c:url value='/resources/img/icon/img-alert_msg.png' />"
                     alt="">
                     <div class="list-alarm-con">
                        <div class="alarmDate">
                           <span class="alarmTime">20.03.08</span>
                        </div>
                        <strong class="alarmS">요리배우기</strong>
                        <p class="alarmP">신청하신 클래스(냉파스타와 알리오올리오)가 예약 취소되었습니다. 취소 확인은
                           요리 배우기-...</p>
                     </div>
               </a></li>
               <li><a href="#chat"> <img src="<c:url value='/resources/img/icon/img-alert_msg.png' />"
                     alt="">
                     <div class="list-alarm-con">
                        <div class="alarmDate">
                           <span class="alarmTime">20.03.08</span>
                        </div>
                        <strong class="alarmS">요리배우기</strong>
                        <p class="alarmP">신청하신 클래스(냉파스타와 알리오올리오)가 예약 취소되었습니다. 취소 확인은
                           요리 배우기-...</p>
                     </div>
               </a></li>
               <li><a href="#chat"> <img src="<c:url value='/resources/img/icon/img-alert_msg.png' />"
                     alt="">
                     <div class="list-alarm-con">
                        <div class="alarmDate">
                           <span class="alarmTime">20.03.08</span>
                        </div>
                        <strong class="alarmS">요리배우기</strong>
                        <p class="alarmP">신청하신 클래스(냉파스타와 알리오올리오)가 예약 취소되었습니다. 취소 확인은
                           요리 배우기-...</p>
                     </div>
               </a></li>
            </ul>
            <div class="contents-paging">
               <div class="paging-wrapper">
                  <a href="" class="extra"></a> <a href="" class="extra"></a>
                  <ul class="">
                     <li><a href="">1</a></li>
                  </ul>
                  <a href="" class="extra"></a> <a href="" class="extra"></a>
               </div>
            </div>
         </div>
      </section>
      <div class="msgPopup" id="chat">
         <a href=""> <img src="<c:url value='/resources/img/icon/chatExit.png' />" alt=""
            style="width: 30px; height: 30px;">
         </a>
         <section id="msgSection">
            <div id="msg-wrap">
               <div class="msgDate-inline">2020년 03월 25일 수요일</div>
               <div class="msgchatLeft">
                  <img src= "<c:url value='/resources/img/icon/img-alert_msg.png' />" alt=""
                     style="width: 64px; height: 64px;">
                  <div class="chatL">
                     <div class="chatL-title">
                        <strong class="chatName">요리배우기</strong> <span class="chatTime">오후
                           5:23</span>
                     </div>
                     <div class="chatL-content">신청하신 클래스(냉파스타와 알리오올리오)가 예약
                        취소되었습니다. 취소 확인은 요리 배우기-취소/환불에서 해주세요.</div>
                  </div>
               </div>
            </div>
         </section>
      </div>
      <div id="msgGrayDim"></div>
   </div>
   <jsp:include page="../../footer.jsp" flush="false" />
</body>
</html>