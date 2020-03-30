<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap" rel="stylesheet">
<link rel="stylesheet" href="contents_board.css">
<link rel="stylesheet" href="reset.css">
<link rel="stylesheet" href="lay03_sideBar.css">
<style>

</style>

</head>
<body>
	<div id="lay03">
		<section id="left01">
			<div>
				<p>수강생</p>
				<h1>요리 배우기</h1>
			</div>
			<div class="list">
				<a href="#"><div class="select-On">예약 클래스</div></a>
				<a href="#"><div>취소 / 환불</div></a>
				<a href="#"><div>종료 클래스</div></a>
				<a href="#"><div>종료 클래스</div></a>
				<a href="#"><div>종료 클래스</div></a>
				<a href="#"><div>종료 클래스</div></a>
			</div>

		</section>
		<section id="right02">
		<jsp:include page="cookBookD.jsp"></jsp:include>
		<jsp:include page="cookRefundD.jsp"></jsp:include>
		<jsp:include page="notData.jsp"></jsp:include>
		</section>

	</div>
</body>
</html>