<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/resources/css/Header.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/Reset.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/lay03_sideBar.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/contents_board.css'/>">


</head>
<body>
<jsp:include page="../../header.jsp" flush="false" />
	<div id="lay03">
        <section id="left01">
            <div>
                <p>호스트</p>
                <h1>개설된 공간</h1>
            </div>
            <div>
                <a href="standBySpace?no=1" ><div class="select-On">심사 공간</div></a>
                <a href="ongoingSpace?no=2" >대여 공간</a>
                <a href="completeSpace?no=3" >종료 공간</a>
            </div>
     	</section>
     	<section id="right02" >
        <c:choose>

			<c:when test="${no eq 1}">
		        <jsp:include page="./standBySpace.jsp" flush="false" />        		
			</c:when>
			<c:when test="${no eq 2}">
		        <jsp:include page="./ongoingSpace.jsp" flush="false" />        					
			</c:when>
			<c:when test="${no eq 3}">
		        <jsp:include page="./completeSpace.jsp" flush="false" />        					
			</c:when>
			
			<c:otherwise> ... </c:otherwise>
			
		</c:choose>
		</section>
</body>
</html>