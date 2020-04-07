<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/reset.css" />">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="/resources/css/lay03_sideBar.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/questions.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/Header.css" />">
    
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<jsp:include page="../headerScript.jsp" flush="false" />
</head>
<body>
	<jsp:include page="../header.jsp" flush="false" />
    <div id="lay03">
        <section id="left01">

			<div>
	            <h4>공공의 주방</h4>
	            <h1>자주하는 질문</h1>
            </div>
            <div class="list">
                <a href=""><div class="select-On">공공의 주방</div></a>
                <a href="">이용방법</a>
                <a href="">요리선생님</a>
                <a href="">등록쿠킹클래스</a>
                <a href="">개설모임장소</a>
                <a href="">등록모임장소</a>
                <a href="">공유</a>
            </div>
        </section>
        <section id="right01">
            <ul>
                <li>
                    <strong>공공의주방은 어떤 서비스인가요?</strong>
                    <p>언제 어디서나 나만의 요리를 가르치고, 배우고 싶은 요리를 편리하게 선택하고, 내집 내직장 가까운 곳에서 쿠킹클래스가 열리는, 천만가지 즐거운 요리경험을 제공하는 쿠킹클래스 공유 플랫폼 서비스입니다.</p>
                </li>

                <li>
                    <strong>서비스 가능지역이 궁금해요</strong>
                    <p>요리 선생님이 활동하시는 지역이라면 전국에서 이용 가능한 서비스입니다.</p>
                </li>

                <li>
                    <strong>회원가입은 어떻게 하나요?</strong>
                    <p>공공의주방 서비스는 누구나 무료로 이용이 가능합니다. SNS 계정이나 이메일로 쉽고 간단하게 회원가입을 할 수 있습니다.</p>
                </li>

                <li>
                    <strong>공공의주방 사이트는 모바일에서만 볼 수 있나요?</strong>
                    <p>아닙니다. 모바일, PC로 모두 편리하게 이용할 수 있습니다. 추후 앱도 출시 예정입니다.</p>
                </li>

                <li>
                    <strong>공공의주방 서비스는 언제 시작되었나요?</strong>
                    <p>2018년 2월 1일 베타테스트 후 하반기 서비스 디밸롭하여, 2019년 3월 서비스가 본격화되었어요. 나날이 좋은 모습으로 찾아뵙겠습니다.</p>
                </li>

                <li>
                    <strong>부가가치세가 포함이 되어 있나요?</strong>
                    <p>네.VAT(부가가치세)는 서비스에 부과되는 필수세금입니다. 클래스 비용에 포함이 되어있습니다.</p>
                </li>
            </ul>
        </section>
    </div> 
</body>
</html>