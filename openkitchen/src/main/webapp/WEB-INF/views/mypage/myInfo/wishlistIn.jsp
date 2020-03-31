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
				<p>마이페이지</p>
				<h1>위시리스트</h1>
			</div>
			<div class="list">
				<a href="#"><div class="select-On">클래스</div></a>
				<a href="#"><div>선생님</div></a>
				<a href="#"><div>공간</div></a>

			</div>

		</section>
		<section id="right02">
		<jsp:include page="wishlistClass.jsp"></jsp:include>
		
		</section>

	</div>
</body>
</html>