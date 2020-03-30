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

</head>
<body>
    <div id="lay03">
        <section id="left01">
            <div>
                <p>마이페이지</p>
                <h1>선생님 <br/> 신청하기</h1>
            </div>
            <div>
                <p>
                    신청하기 전에 <br/>등록 가이드라인과 운영원칙을 <br/> 확인해 주세요
                </p>
                <span>가이드라인 확인하기</span>
            </div>
            <div>
                <a href="#" class="On_active">기본정보</a>
                <a href="#" >공간등록</a>
            </div>

        </section>
        <section id="right01" >
            <jsp:include page="teacherBase.jsp"></jsp:include>
            <jsp:include page="teacherSpace.jsp"></jsp:include>
        </section>
        
    </div>
</body>
</html>