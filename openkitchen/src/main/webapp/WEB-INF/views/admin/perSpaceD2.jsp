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

<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>" />
<link rel="stylesheet"
	href="<c:url value='/resources/css/perSpaceD2.css'/>" />
	<link rel="stylesheet"
	href="<c:url value='/resources/css/nonAllow.css'/>" />

</head>

<body>
<!-- /////////////////////////////////////공유하기 팝업창 시작//////////////////////////////////////////////// -->

	<!-- 보류 사유를 회원에게 보내도록 하는 popup창이다. div가 나오도록 설정한다. -->
	<!-- nonallowDiv.css에서 css 설정을 가지고 온다. 주의할 점은 shareDiv.css 설정과 이름이 같다.하지만 nonallowDiv.css는 관리자 부분이고 
      shareDiv.css는 사용자 부분을 할당하고 있어 id ,name class의 이름이 겹칠 일이 없다. -->
	<!-- 팝업형식으로 나온다. -->
	<div id="pop_share">
		<!-- 안쪽에 팝업 창에 대한 내용 -->
		<div id="pop_inner">
			<div id="pop_title">보류사유서</div>
			<div id="pop_content">
				<!-- 보류 사유 정보를 보냄 -->
				<form action="">

					<ul>
						<!-- 보류사유를 작성하는 란 -->
						<li><textarea name="reason" id="reason" cols="30" rows="10"
								placeholder="보류 사유를 작성 하세요"></textarea></li>
						<li><input type="submit" value="취소하기"> <input
							type="button" value="전송하기"></li>
					</ul>

				</form>
			</div>
			<!-- 클로즈 버튼  -->
			<a href="" id="btn-close"></a>
		</div>
	</div>
	<!--///////////////////////////////////////////////////// 팝업창 html 코드 끝 ///////////////////////////////////////////////////////-->
	
	
	
	<!-- 레이아웃 3번째 type left01 right01 Section으로 이루어짐. -->
	<div id="lay03">
		<!--  왼쪽 큰 section -->
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
				<a href="perSpaceD">공간소개</a> <a href="perSpaceD2" class="On_active">공간등록</a>
			</div>
		</section>

		<!-- 오른쪽 큰 Section -->
		<section id="right01">
			<form action="" id="form2">

				<h4>공간 테마</h4>
				<div>
					<input type="text" name="" id="">
				</div>

				<h4>수용가능인원</h4>
				<div>
					<input type="text" name="" id="">
				</div>

				<h4>공간명</h4>
				<div>
					<input type="text" name="" id="">
				</div>

				<h4>공간 한 줄 설명</h4>
				<div>
					<input type="text" name="" id="">
				</div>

				<h4>해시태그</h4>
				<div>
					<input type="text" name="" id="">
				</div>

				<h4>커버 이미지</h4>
				<!--이미지 업로드 DIV -->
				<div class="basic_apply image_upload" id="apply01">
					<p>
						대표이미지는 공간의 가장 중요한 시각적 요소입니다. <br /> 좋은 인상을 남길 수 있도록 사진의 퀄리티를 신경써서
						업로드해주세요
					</p>
					<div>
						<!-- 사진 파일 업로드/삭제 api ? -->
					</div>

				</div>
				<h3>
					상세 이미지 등록 <span>*최대 9개까지 추가 등록가능</span>
				</h3>

				<h4>공간 상세 설명</h4>
				<div>
					<textarea name="" id="" cols="30" rows="10"></textarea>
				</div>

				<h4>참고사항</h4>
				<div>
					<textarea name="" id="" cols="30" rows="10"></textarea>
				</div>

				<h4>공간 위치 등록</h4>
				<div>
					<!-- 주소 api자리입니다 -->
				</div>

				<h4>
					편의시설 <span>*중복 선택 가능</span>
				</h4>
				<section class="checkboxSection">
					<!-- 넓이를 따로 잡아줌 -->
					<div class="checkboxWrap" id="WrapWidth2">
						<div class="checkbox">
							<!--화장실  F(facility)-type n-->
							<input type="checkbox" name="F-type1" id=""> <label
								for="checkbox"></label>
						</div>
						<!--환풍기  -->
						<div class="checkbox">
							<input type="checkbox" name="F-type2" id=""> <label
								for="checkbox"></label>
						</div>
						<!-- 전등-->
						<div class="checkbox">
							<input type="checkbox" name="F-type3" id=""> <label
								for="checkbox"></label>
						</div>
						<!-- 주차시설 -->
						<div class="checkbox">
							<input type="checkbox" name="F-type4" id=""> <label
								for="checkbox"></label>
						</div>
					</div>
				</section>

				<h4>
					안전시설 <span>*중복 선택 가능</span>
				</h4>
				<section class="checkboxSection">
					<!-- 넓이를 따로 잡아줌 -->
					<div class="checkboxWrap" id="WrapWidth2">
						<div class="checkbox">
							<!--소화기 S(safety)-type n -->
							<input type="checkbox" name="S-type1" id=""> <label
								for="checkbox"></label>
						</div>
						<!--화재감지기 -->
						<div class="checkbox">
							<input type="checkbox" name="S-type2" id=""> <label
								for="checkbox"></label>
						</div>
						<!-- 안전카드-->
						<div class="checkbox">
							<input type="checkbox" name="S-type3" id=""> <label
								for="checkbox"></label>
						</div>
						<!-- 구급상자 -->
						<div class="checkbox">
							<input type="checkbox" name="S-type4" id=""> <label
								for="checkbox"></label>
						</div>
					</div>
				</section>
				<!-- 버튼 div  -->
				<div id="btn_submit">
					<div>
						<a href="perAdmin"><input type="button" value="돌아가기"></a>
						<input type="button" value="보류"><input type="submit"
							value="승인">
					</div>
				</div>
			</form>
		</section>
	</div>
</body>

</html>