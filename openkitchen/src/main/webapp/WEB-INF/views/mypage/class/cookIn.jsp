<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/Header.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/footer.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/lay03_sideBar.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/contents_board.css'/>">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script>
	window.onload = function () {
		var no = ${no}
		if (no=="1") {
			var atag = document.getElementsByClassName("active-color");
			console.log(atag);
			atag.style.backgroundColor = "blue";
			
		}
	}
</script>
<jsp:include page="../../headerScript.jsp" flush="false" />
</head>
<body>
<jsp:include page="../../header.jsp" flush="false" />
	<div id="lay03">
		<section id="left01">
			<div>
				<p>수강생</p>
				<h1>요리 배우기</h1>
			</div>
			<div class="list">
				<a href="cookBookD?no=1" ><div class="select-On">예약 클래스</div></a>
				<a href="cookRefunD?no=2" class="active-color">취소 / 환불</a>
				<a href="cookEndD?no=3"><div>종료 클래스</div></a>
			</div>

		</section>
		<section id="right02">
		<c:choose>

			<c:when test="${no eq 1}">
				<jsp:include page="cookBookD.jsp"></jsp:include>
			</c:when>
			<c:when test="${no eq 2}">
				<jsp:include page="cookRefundD.jsp"></jsp:include>            					
			</c:when>
			<c:when test="${no eq 3}">
				<jsp:include page="cookEndD.jsp"></jsp:include>
		                					
			
			</c:when>
			
			<c:otherwise> ... </c:otherwise>
			
		</c:choose>	
		</section>
	</div>
	<jsp:include page="../../footer.jsp" flush="false" />
</body>
</html>