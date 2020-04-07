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
<link rel="stylesheet" href="<c:url value='/resources/css/footer.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/lay03_sideBar.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/contents_board.css'/>">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<%-- <link rel="stylesheet" href="<c:url value='/resources/css/standByClass.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/ongoingClass.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/completeClass.css'/>"> --%>
<script>
	window.onload = function () {
		var test = ${no};
		var change = document.getElementsByClassName("select-On");
		console.log(change);
		if (test=="1") {
			change.style.backgroundColor = "red";	
		} else if (test=="2") {
			
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
                <p>선생님</p>
                <h1>개설된 클래스</h1>
            </div>
            <div>
                <a href="standByClass?no=1"><div class="select-On">심사 클래스</div></a>
                <a href="ongoingClass?no=2" >진행 클래스</a>
                <a href="completeClass?no=3" >종료 클래스</a>
            </div>

        </section>
        <section id="right02" >
        <c:choose>

			<c:when test="${no eq 1}">
		        <jsp:include page="./standByClass.jsp" flush="false" />        		
			</c:when>
			<c:when test="${no eq 2}">
		        <jsp:include page="./ongoingClass.jsp" flush="false" />        					
			</c:when>
			<c:when test="${no eq 3}">
		        <jsp:include page="./completeClass.jsp" flush="false" />        					
			
			</c:when>
			
			<c:otherwise> ... </c:otherwise>
			
		</c:choose>
		</section>

       	
        <!-- <section id="right02" >
            <div>    
                <p>
                    신청한 클래스가 없어요 <br />
                    클래스를 신청해보는건 어떠세요?
                </p>
                <a href="#" class="more-type2">클래스 신청하러 가기<i class="ico-more_arrow"></i></a>
            </div>
            <div>
                <p>
                    진행중인 클래스가 없어요 <br />
                    클래스를 신청해보는건 어떠세요?
                </p>
                <a href="#" class="more-type2">클래스 신청하러 가기<i class="ico-more_arrow"></i></a>
            </div>
            <div>
                <p>
                    종료된 클래스가 없어요 <br />
                    클래스를 신청해보는건 어떠세요?
                </p>
                <a href="#" class="more-type2">클래스 신청하러 가기<i class="ico-more_arrow"></i></a>
            </div>
            <div></div>
        </section> -->
        
    </div>
    <jsp:include page="../../footer.jsp" flush="false" />
</body>
</html>