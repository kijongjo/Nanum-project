<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>" />
<link rel="stylesheet"
	href="<c:url value='/resources/css/perTeacherD.css'/>" />
</head>
<body>
	<!-- 레이아웃 3번째 type left01 right01 Section으로 이루어짐. -->
	<div id="lay03">

		<!-- 왼쪽 큰 Section -->
		<section id="left01">
			<!-- 선생님 신청시 입력한 DATA들이 전부 들어간다. -->
			<div>
				<p>관리페이지</p>
				<h1>
					선생님 <br /> 신청관리
				</h1>
			</div>
			<div>
				<p>
					승인하기 전에 정보를 꼼꼼히 <br /> 확인해 주세요
				</p>
				<span>가이드라인 확인하기</span>
			</div>
			<div>
				<!-- CLASS ON_ACTIBVE는 선택된 ICON을 보여준다. -->
				<a href="#" class="On_active">기본정보</a> <a href="perTeacherD2">공간등록</a>
			</div>
		</section>

		<!-- 오른쪽 큰 Section -->
		<section id="right01">
			<form action="">
				<h4>프로필 사진</h4>
			
				<div class="basic_apply image_upload" id="apply01">
					<p>선생님 소개 페이지에서 보여지는 사진입니다. 수강생들에게 선생님의 모습을 멋지게 보여주세요. Tip.
						선생님의 얼굴이 보이는 상반신의 인물 사진</p>
					<div>
						<!-- 사진 파일 업로드/삭제 api ? -->
					</div>
				</div>

				<h4>이름</h4>
				
				<div class="basic_apply">
					<input type="text">
				</div>
				
				<h4>닉네임</h4>
				<!-- 체크박스 section -->
				<section class="checkboxSection">
					<!-- 넓이를 따로 잡아줌 -->
					<div class="checkboxWrap" id="WrapWidth2">
						<div class="checkbox">
							<!--닉네임 사용 함-->
							<input type="checkbox" name="nickname" id=""> <label
								for="checkbox"></label>
						</div>
					</div>
				</section>
				<!-- 체크박스 section 끝 -->
				
				<div class="basic_apply" id="apply02">
					<input type="text" name="" id=""
						placeholder="최대 한글 10자, 영문 20자, 숫자 혼용 가능">
					<p>이미 활동중인 닉네임이 있는 선생님만 사용 부탁드리며, 없으실 경우 실명으로 사용하실 것을 권장합니다.</p>
				</div>

				<!-- 전문분야 -->
				<h3>
					전문 분야 <span>*중복 선택 가능</span>
				</h3>
				<div id="Specialty">
					<ul>
						<li class="On-Specialty">커피</li>
						<li>음료</li>
						<li>티</li>
						<li>피자</li>
						<li>파스타</li>
						<li>베이킹</li>
						<li>디저트</li>
						<li>도시락</li>
						<li>샌드위치</li>
						<li>반찬</li>
						<li>웰빙</li>
						<li>오가닉</li>
						<li>발효</li>
						<li>약선</li>
						<li>세계요리</li>
						<li>중식</li>
						<li>일식</li>
						<li>퓨전</li>
						<li>한식</li>
						<li>손님초대</li>
						<li>데코레이션</li>
						<li>스타일링</li>
						<li>설명회</li>
					</ul>
				</div>

				<h4>전문분야 호칭</h4>
				<div class="basic_apply">
					<input type="text" name="" id="" value="">
				</div>

				<h4>주요활동 지역</h4>
				<div class="basic_apply">
					<input type="text" name="" id="" value="">
				</div>

				<h4>한줄 소개</h4>
				<div class="basic_apply">
					<input type="text" name="" id="" value="">
				</div>

				<h4>주요 활동</h4>
				<div class="basic_apply" id="txtarea01">
					<textarea name="" id="asd" cols="30" rows="10"></textarea>
				</div>

				<h4>자기 소개</h4>
				<div class="basic_apply" id="txtarea02">
					<textarea name="" id="" cols="30" rows="10"></textarea>
				</div>

				<h4>사업자 유형</h4>
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

				<!-- submit -->
				<div id="btn_submit">
					<div>
						<input type="submit" value="돌아가기"> <input type="submit"
							value="다음">
					</div>
				</div>

			</form>
		</section>

	</div>
</body>
</html>