<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<form id="uploadForm" enctype="multipart/form-data" method="post">
	

	<h4>프로필 사진</h4>
	<div class="basic_apply image_upload" id="apply01">

		<!-- 커버 이미지 선택란 -->
		<div class="inp-wrap">
			<span></span>
			<div>
				<p>선생님 소개 페이지에서 보여지는 사진입니다. 수강생들에게 선생님의 모습을 멋지게 보여주세요. Tip. 선생님의
					얼굴이 보이는 상반신의 인물 사진</p>
				<div>

					<div>메인 썸네일용 이미지</div>
					<div id="mainThum">
						<label for="MS"> <span>사진 추가하기</span> <input type="file"
							name="" id="MS" accept=".jpg,.jpeg,.png,.gif" multiple>
						</label>
					</div>
				</div>
				<div>
					<div>상세 썸네일용 이미지</div>
					<div id="detailThum">
						<label for="S-DS-TYPE1"> <span>사진 추가하기</span> <input
							type="file" name="" id="S-DS-TYPE1" accept=".jpg,.jpeg,.png,.gif"
							multiple>
						</label>
					</div>
				</div>
			</div>
		</div>
	</div>

	<h4>이름</h4>
	<div class="basic_apply">
		<input type="text" name="tHavenickname" id="realName">
	</div>

	<!-- 체크박스 section -->
	<h4>닉네임</h4>
	<section class="checkboxSection">
		<!-- 넓이를 따로 잡아줌 -->
		<div class="checkboxWrap" id="WrapWidth2">
			<div class="checkbox">
				<!--닉네임 사용 함-->
				<input type="checkbox" name="nickname" id="useNickname"> <label
					for="checkbox"></label>
			</div>
		</div>
	</section>
	<!-- 체크박스 section 끝 -->




	<div class="basic_apply" id="apply02">
		<input type="text" name="" id="tHavenickname"
			placeholder="최대 한글 10자, 영문 20자, 숫자 혼용 가능" disabled="disabled">
		<p>이미 활동중인 닉네임이 있는 선생님만 사용 부탁드리며, 없으실 경우 실명으로 사용하실 것을 권장합니다.</p>
	</div>

	<!-- 전문분야 -->
	<h3>
		전문 분야 <span>*중복 선택 가능</span>
	</h3>
	<div id="Specialty">
		<ul>
			<li>커피</li>
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
		<input type="text" name="tExpertname" id="">
	</div>

	<h4>주요활동 지역</h4>
	<div class="basic_apply">
		<input type="text" name="tArea" id="">
	</div>

	<h4>한줄 소개</h4>
	<div class="basic_apply">
		<input type="text" name="tshortIntro" id="">
	</div>

	<h4>주요 활동</h4>
	<div class="basic_apply" id="txtarea01">
		<textarea name="tCareer" id="asd" cols="30" rows="10"></textarea>
	</div>

	<h4>자기 소개</h4>
	<div class="basic_apply" id="txtarea02">
		<textarea name="tLongintro" id="" cols="30" rows="10"></textarea>
	</div>

	<h4>사업자 유형</h4>
	<section class="checkboxSection">
		<!-- 넓이를 따로 잡아줌 -->
		<div class="checkboxWrap" id="WrapWidth2">
			<div class="checkbox">
				<!--개인-->
				<input type="radio" id="type1" name="business" value="1"> <label
					for="radio"></label>
			</div>
			<!--일반  -->
			<div class="checkbox">
				<input type="radio" id="type2" name="business" value="2"> <label
					for="radio"></label>
			</div>
			<!-- 면세 -->
			<div class="checkbox">
				<input type="radio" id="type3" name="business" value="3"> <label
					for="radio"></label>
			</div>
			<!-- 간이 -->
			<div class="checkbox">
				<input type="radio" id="type4" name="business" value="4"> <label
					for="radio"></label>
			</div>
		</div>
	</section>

	<h4>업체명</h4>
	<div class="basic_apply">
		<input type="text" name="proCEO" id="">
	</div>

	<h4>은행/증권사 선택</h4>
	<div class="basic_apply">
	  <select name="proBank" id="">
	  
	   <option value="선택">선택</option>
	   <option value="국민">국민</option>
	   <option value="기업">기업</option>
	   <option value="농협">농협</option>
	   <option value="산업">산업</option>
	   <option value="신한">신한</option>
	   <option value="우리">우리</option> 
	   <option value="한국시티">한국시티</option>
	   <option value="KEB하나">KEB하나</option>
	   <option value="SC제일">SC제일</option>
	   <option value="경남">경남</option>
	   <option value="광주">광주</option>
	   <option value="대구">대구</option>
	   <option value="부산">부산</option>
	   <option value="새마을금고">새마을  금고</option>
	  </select>
	</div>

	<h4>계좌번호</h4>
	<div class="basic_apply">
		<input type="text" name="proAccount" id="">
	</div>

	<h4>예금주 명</h4>
	<div class="basic_apply">
		<input type="text" name="proName" id="">
	</div>

	<h4>통장 사본 첨부</h4>
	<div class="basic_apply">
		<!-- 첨부구역은 안만들었습니다 -->
		<input type="file" name="proAccounting" id="proAccounting" />
	</div>

	<h4>사업자등록증 첨부</h4>
	<div class="basic_apply">
	<input type="file" name="proRegimg" id="proRegimg" />
	</div>

	<!-- submit -->
	<div id="btn_submit">
		<div>
			<input type="button" value="임시저장" id="go"> <input type="button" value="다음" id="nextGo">
		</div>
	</div>
 
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
  <!--회원번호를 받아서 넘기고 난 후 선생님 번호를 생성해 저장함.  -->
	<!-- <input type="hidden" name="mNo" value="999" /> -->


</form>