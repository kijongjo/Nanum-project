<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="<c:url value='resources/css/Reset.css'/>" />
<link rel="stylesheet"
	href="<c:url value='resources/css/perSpaceD.css'/>" />

</head>

<body>
	<!-- 레이아웃 3번째 type left01 right01 Section으로 이루어짐. -->
	<div id="lay03">
	<!-- 왼쪽 큰 Section -->
		<section id="left01">
			<div>
				<p>관리페이지</p>
				<h1>
					공간 <br /> 승인관리
				</h1>
			</div>
			<div>
				<p>
					공간을 승인하기 전에 등록정보를 <br /> 꼼꼼히 확인해주세요
				</p>
				<span>가이드라인 확인하기</span>
			</div>
			
			<div>
			<!-- On_active Class가 있는 태그는 체크 된 Icon이 글자 옆에 생긴다. -->
				<a href="perSpaceD2" class="On_active">공간소개</a> <a href="perSpaceD2">공간등록</a>
			</div>
		</section>
		
		<!-- 오른쪽 큰 Section -->
		<section id="right01">
			<form action="#">
				<h3>이름</h3>
				<!-- input의 크기와 색깔 잡아주는 div -->
				<div class="basic_apply">
					<input type="text" name="" id="">
				</div>

				<h3>성별</h3>
				<!-- 체크 박스 모듈 -->
				<section class="checkboxSection">
				<!-- 넓이와 가로 정렬 세로정렬 결정하는 div -->
					<div class="checkboxWrap" id="WrapWidth1">
						<!-- checkbox div 하나당 checkbox가 하나 생김 -->
						<div class="checkbox">
							<input type="radio" name="man" id="man"> <label
								for="radio"></label>
						</div>
						<div class="checkbox">
							<input type="radio" name="man" id="woman"> <label
								for="radio"></label>
						</div>
					</div>
				</section>
				<!-- 체크 박스 모듈 끝 -->

				<h3>자개소개</h3>
				<div id="space_textarea">
					<textarea name="" id="" cols="30" rows="10"></textarea>
				</div>

				<h4>사업자 유형</h4>
				<!-- 체크 박스 모듈 -->
				<section class="checkboxSection">
					<!-- 넓이를 따로 잡아줌 -->
					<div class="checkboxWrap" id="WrapWidth2">
						<div class="checkbox">
							<!--개인-->
							<input type="radio" id="type1" name="business"> <label
								for="radio"></label>
						</div>
						<!--일반  -->
						<div class="checkbox">
							<input type="radio" id="type2" name="business"> <label
								for="radio"></label>
						</div>
						<!-- 면세 -->
						<div class="checkbox">
							<input type="radio" id="type3" name="business"> <label
								for="radio"></label>
						</div>
						<!-- 간이 -->
						<div class="checkbox">
							<input type="radio" id="type4" name="business"> <label
								for="radio"></label>
						</div>
					</div>
				</section>
				<!-- 체크 박스 모듈 끝 -->


				<h4>업체명</h4>
				<div class="basic_apply">
					<input type="text" name="" id="">
				</div>

				<h4>은행/증권사 선택</h4>
				<div class="basic_apply">
					<input type="text" name="" id="">
				</div>

				<h4>계좌번호</h4>
				<div class="basic_apply">
					<input type="text" name="" id="">
				</div>

				<h4>예금주 명</h4>
				<div class="basic_apply">
					<input type="text" name="" id="">
				</div>

				<h4>통장 사본 첨부</h4>
				<div class="basic_apply">
					<!-- 첨부구역은 안만들었습니다 -->
				</div>

				<h4>사업자등록증 첨부</h4>
				<div class="basic_apply">
					<!-- 첨부구역은 안만들었습니다 -->
				</div>
				<!-- submit 버튼 -->
				<div id="btn_submit">
					<div>
						<a href="perAdmin"><input type="button" value="돌아가기"></a>
						<input type="submit" value="다음">
					</div>
				</div>


			</form>
		</section>

	</div>
</body>

</html>