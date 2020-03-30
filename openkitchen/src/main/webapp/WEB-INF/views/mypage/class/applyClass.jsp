<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="reset.css">
	<link rel="stylesheet" href="lay03_sideBar.css">
	<link rel="stylesheet" href="makeContents.css">
	<link rel="stylesheet" href="contents_board.css">
	<link rel="stylesheet" href="checkBox.css">
 
</head>
<body>
    <div id="lay03">
        <section id="left01">
            <div>
                <p>마이페이지</p>
                <h1>클래스 <br/> 신청하기</h1>
            </div>

            <div class="list">
                <a href="#" ><div class="On_active">공간선택</div></a>
                <a href="#" class="On_active">기본정보</a>
                <a href="#" >클래스 일정</a>
            </div>

        </section>
        <section id="right01" >
<%--         <jsp:include page="classSpace.jsp"></jsp:include> --%>
        <jsp:include page="classBase.jsp"></jsp:include>
        </section>
        
    </div>
</body>
</html>