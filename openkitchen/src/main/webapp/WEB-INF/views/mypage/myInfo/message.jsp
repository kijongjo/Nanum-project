<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value='/resources/css/message.css'/>" >
    <link rel="stylesheet" href="<c:url value='/resources/css/Header.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/css/footer.css'/>">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<jsp:include page="../../headerScript.jsp" />
</head>
<!-- ////////////////////////////////////////////////////////////////////////////////////////////////// -->
<!-- strong과 p 태그의 임의의 글 넣어놈 테스트 용이기 때문에 지워서 el 태그 사용해서 가져오면 됨 -->
<!-- ////////////////////////////////////////////////////////////////////////////////////////////////// -->
<body>
<jsp:include page="../../header.jsp" />
    <div id="lay03Msg">
        <section id="left01Msg">
            <p>공공의 주방</p>
            <h1>1:1 메시지</h1>
        </section>
        <section id="right01Msg">
            <div>
                <ul>
                    <li>
                        <a href="#chat">
                                <img src="<c:url value='/resources/img/profileimg/10pro.jpg' />" alt="">
                            <div class="list-content">
                                <div class="al-r">
                                    <span class="MsgTime">20.01.25</span>
                                </div>
                                <strong class="list-title">커피에 진심을 담다</strong>
                                <p>안녕하세요 일반인이지만 개인적으로 따로 빌릴수 있을까요 ? 요리 선생님은 아닙니다</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#chat">
                            <img src="<c:url value='/resources/img/profileimg/11pro.jpg' />" alt="">
                            <div class="list-content">
                                <div class="al-r">
                                    <span class="MsgTime">20.01.28</span>
                                </div>
                                <strong class="list-title">피자 교실</strong>
                                <p>어떤 피자 인가요?</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#chat">
                                <img src="<c:url value='/resources/img/profileimg/12pro.jpg' />" alt="">
                            <div class="list-content">
                                <div class="al-r">
                                    <span class="MsgTime">20.01.29</span>
                                </div>
                                <strong class="list-title">카페인 가득 커피 교실</strong>
                                <p>커피만 배우나요?</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#chat">
                                <img src="<c:url value='/resources/img/profileimg/13pro.jpg' />" alt="">
                            <div class="list-content">
                                <div class="al-r">
                                    <span class="MsgTime">20.02.05</span>
                                </div>
                                <strong class="list-title">샌드위치가 땡기는 하루</strong>
                                <p>샌드위치의 종류를 몇개나 만들 예정인가요 ?</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#chat">
                                <img src="<c:url value='/resources/img/profileimg/14pro.jpg' />" alt="">
                            <div class="list-content">
                                <div class="al-r">
                                    <span class="MsgTime">20.02.11</span>
                                </div>
                                <strong class="list-title">햄버거를 집에서 만들수 있는 클래스</strong>
                                <p>안녕하세요 여쭤볼게 있습니다</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#chat">
                                <img src="<c:url value='/resources/img/profileimg/15pro.jpg' />" alt="">
                            <div class="list-content">
                                <div class="al-r">
                                    <span class="MsgTime">20.02.15</span>
                                </div>
                                <strong class="list-title">바리스타의 한걸음</strong>
                                <p>자격증이 있어야 들을수 있나요?</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#chat">
                                <img src="<c:url value='/resources/img/profileimg/16pro.jpg' />" alt="">
                            <div class="list-content">
                                <div class="al-r">
                                    <span class="MsgTime">20.02.17</span>
                                </div>
                                <strong class="list-title">커피에 진심을 담다</strong>
                                <p>안녕하세요 일반인이지만 개인적으로 따로 빌릴수 있을까요 ? 요리 선생님은 아닙니다</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#chat">
                                <img src="<c:url value='/resources/img/profileimg/17pro.jpg' />" alt="">
                            <div class="list-content">
                                <div class="al-r">
                                    <span class="MsgTime">20.02.19</span>
                                </div>
                                <strong class="list-title">커피에 진심을 담다</strong>
                                <p>안녕하세요 일반인이지만 개인적으로 따로 빌릴수 있을까요 ? 요리 선생님은 아닙니다</p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </section>
        <div class="msgPopup" id="chat">
            <a href="">
                <img src="<c:url value='/resources/img/icon/chatExit.png'/>" alt="" style="width: 30px; height: 30px; color: black;" >
            </a>
            <section id="msgSection">
                <form action="">
                    <div id="msg-wrap">
                        <div class="msgDate-inline">2020년 03월 25일 수요일</div>
                        <div class="msgchatLeft">
                            <img src="<c:url value='/resources/img/profileimg/10pro.jpg' />" alt="" style="width: 64px; height: 64px;">
                            <div class="chatL">
                                <div class="chatL-title">
                                    <strong class="chatName">이정은(베이커)</strong>
                                    <span class="chatTime">오후 5:23</span>
                                </div>
                                <div class="chatL-content">
                                    안녕하세요. '상큼달달 딸기 생크림 케이크' 클래스를 진행하는 이정은입니다. 무엇을 도와드릴까요?
                                </div>
                            </div>
                        </div>
                        <div class="msgchatRight">
                            <div class="chatR">
                                <div class="chatR-title">
                                    <strong class="chatName">CRN</strong>
                                    <span class="chatTime">오후 5:23</span>
                                </div>
                                <div class="chatR-content">안녕하세요 요리를 제가 거의 초심자라고 해도 과언은 아닙니다 .난이도가 어느 정도 인가요 ?</div>
                            </div>
                        </div>
                        <div class="msgDate-inline">2020년 03월 26일 수요일</div>
                        <div class="msgchatLeft">
                            <img src="<c:url value='/resources/img/profileimg/10pro.jpg' />" alt="" style="width: 64px; height: 64px;">
                            <div class="chatL">
                                <div class="chatL-title">
                                    <strong class="chatName">이정은(베이커)</strong>
                                    <span class="chatTime">오후 8:23</span>
                                </div>
                                <div class="chatL-content">
                                    초심자도 따라하기 쉬운 난이도 입니다.
                                </div>
                            </div>
                        </div>
                        <div class="msgchatRight">
                            <div class="chatR">
                                <div class="chatR-title">
                                    <strong class="chatName">CRN</strong>
                                    <span class="chatTime">오후 9:03</span>
                                </div>
                                <div class="chatR-content">네 알겠습니다</div>
                            </div>
                        </div>
                    </div>
                    <div id="msg-input">
                        <input type="text" name="" id="" placeholder="메세지를 입력하세요">
                        <input type="submit" value="전송">
                    </div>
                </form>
            </section>
        </div>
        <div id="msgGrayDim">
        </div>
    </div>
    <jsp:include page="../../footer.jsp" flush="false" />
</body>
