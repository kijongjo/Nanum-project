<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/resources/css/Header.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/footer.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/lay03_sideBar.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/makeContentsC.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/classBase.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/classSchedule.css'/>">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- fontawesome icon링크 -->
<script src="https://kit.fontawesome.com/e87b1eec4b.js" crossorigin="anonymous"></script>
<script src="<c:url value='/resources/js/applyClass.js'/>"></script>
<script src="<c:url value='/resources/js/classSpace.js'/>"></script>
</head>
<body>
<jsp:include page="../../header.jsp" flush="false" />
	<div id="lay03">
		<section id="left01">
			<div>
				<p>마이페이지</p>
				<h1>
					클래스 <br /> 신청하기
				</h1>
			</div>
			<div>
				<p>
					신청하기 전에 <br />등록 가이드라인과 운영원칙을 <br /> 확인해 주세요
				</p>
				<span>가이드라인 확인하기</span>
			</div>
			<div>
				<c:choose>
					<c:when test="${no eq 1}">
						<a href="javascript:action(1)" class="On_active">공간선택</a>
						<a href="javascript:action(2)" class="Off_active">기본정보</a>
						<a href="javascript:action(3)" class="Off_active">클래스선택</a>
					</c:when>
					<c:when test="${no eq 2}">
						<a href="javascript:action(1)" class="Off_active">공간선택</a>
						<a href="javascript:action(2)" class="On_active">기본정보</a>
						<a href="javascript:action(3)" class="Off_active">클래스일정</a>
					</c:when>
						<c:when test="${no eq 3}">
						<a href="javascript:action(1)" class="Off_active">공간선택</a>
						<a href="javascript:action(2)" class="Off_active">기본정보</a>
						<a href="javascript:action(3)" class="On_active">클래스일정</a>
					</c:when>
				</c:choose>
			</div>

		</section>
		<section id="right01">
			<c:choose>
				<c:when test="${no eq 1}">
					<jsp:include page="classSpace.jsp"></jsp:include>
				</c:when>
					<c:when test="${no eq 2}">
					<jsp:include page="classBase.jsp"></jsp:include>
				</c:when>
				<c:when test="${no eq 3}">
					<jsp:include page="classSchedule.jsp"></jsp:include>
				</c:when>
				<c:otherwise> ... </c:otherwise>
			</c:choose>
		</section>

	</div>
	<jsp:include page="../../footer.jsp" flush="false" />
</body>
</html>