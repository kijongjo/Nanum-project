<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/resources/css/Header.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/footer.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/lay03_sideBar.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/contents_board.css'/>">
<style>

</style>

</head>
<body>
<jsp:include page="../../header.jsp" flush="false" />
	<div id="lay03">
		<section id="left01">
			<div>
				<p>마이페이지</p>
				<h1>위시리스트</h1>
			</div>
			<div class="list">
				<a href="wishlistClass?no=1"><div class="select-On">클래스</div></a>
				<a href="wishlistTeacher?no=2"><div>선생님</div></a>
				<a href="wishlistSpace?no=3"><div>공간</div></a>

			</div>

		</section>
		<section id="right02">
		<c:choose>
			<c:when test="${no eq 1}">
				<jsp:include page="wishlistClass.jsp" />     		
			</c:when>
			<c:when test="${no eq 2}">
				<jsp:include page="wishlistTeacher.jsp" />  					
			</c:when>
			<c:when test="${no eq 3}">
				<jsp:include page="wishlistSpace.jsp" />			
			</c:when>
			<c:otherwise> ... </c:otherwise>	
		</c:choose>
		
		</section>

	</div>
	<jsp:include page="../../footer.jsp" flush="false" />
</body>
</html>