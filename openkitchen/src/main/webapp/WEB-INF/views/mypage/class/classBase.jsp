<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="teacherSpace">
	<h4>수업공간 대여 여부</h4>
	<section class="checkboxSection">
		<!-- 넓이를 따로 잡아줌 -->
		<div class="checkboxWrap" id="WrapWidth3">
			<div class="checkbox">
				<!--일반클래스-->
				<input type="radio" name="classType" id="ordinary" checked="checked">
				<label for="radio"></label>
			</div>
			<div class="checkbox">
				<!--만원 클래스-->
				<input type="radio" name="classType" id="manwon"> <label
					for="radio"></label>
			</div>
			<div class="checkbox">
				<!--단 한명이라도 클래스-->
				<input type="radio" name="classType" id="onlyOne"> <label
					for="radio"></label>
			</div>
		</div>
		<p>클래스 수업의 타입을 선택해 주세요.</p>
	</section>

	<div>



		<form action="" id="uploadForm" enctype="multipart/form-data"
			method="post">

			
			<!-- 수용가능 인원 선택란 -->
			<div class="inp-wrap">
				<span>수용 가능 인원</span>
				<div>
					<span>최소</span>
					<div class="capacityDiv">

						<button type="button" id="min-btn">
							<img
								src="<c:url value='/resources/img/icon/ico-people-num.png'/>"
								alt="">
						</button>
						<span class="capacity" name="minCapacity">1</span>
						<button type="button" id="plus-btn">
							<img
								src="<c:url value='/resources/img/icon/ico-people-num.png'/>"
								alt="">
						</button>
					</div>
				</div>
				<div>
					<span>최대</span>
					<div class="capacityDiv">

						<button type="button" id="min-btn">
							<img
								src="<c:url value='/resources/img/icon/ico-people-num.png'/>"
								alt="">
						</button>
						<span id="capacity" name="maxcapacity">1</span>
						<button type="button" id="plus-btn">
							<img
								src="<c:url value='/resources/img/icon/ico-people-num.png'/>"
								alt="">
						</button>
					</div>
				</div>
			</div>
			<!-- 수용가능 인원 선택란 끝 -->

			<!-- 가격,강좌명,강좌한줄설명,해시태그 선택란  -->
			<div class="inp-wrap">
				<span>가격</span> <input type="text" name="sName" id=""
					placeholder="가격을 입력해 주세요">
			</div>
			<div class="inp-wrap">
				<span>강좌명</span> <input type="text" name="sName" id=""
					placeholder="간결하게 입력해 주세요">
			</div>
			<div class="inp-wrap">
				<span>한 줄 설명<span id="placeEx-counter">0 / 45</span> <input
					type="text" name="sShortintro" id="" placeholder="매력적인 설명을 작성해주세요">
			</div>
			<div class="inp-wrap">
				<span>해시태그</span> <span><input type="text" name=""
					class="hashText" id="" placeholder="#태그를 입력해 주세요" maxlength="6">
					<button type="button" id="addHash">
						<img src="<c:url value='/resources/img/icon/ico-file_add.png'/>"
							alt="">
					</button></span> <span id="hashField"></span>
			</div>
			<!-- 공간명,공간한줄설명,해시태그 선택란  끝 -->

			<!-- 커버 이미지 선택란 -->
			<div class="inp-wrap">
				<span>커버 이미지</span>
				<div>
					<p>
						대표이미지는 공간의 가장 중요한 시각적 요소입니다. <br>좋은 인상을 남길 수 있도록 사진의 퀄리티를
						신경써서 업로드해주세요
					</p>
					<div>
						<div>메인 썸네일용 이미지</div>
						<div id="mainThum">
							<label for="S-MS"> <span>사진 추가하기</span> <input
								type="file" name="sumUpload1" id="S-MS"
								accept=".jpg,.jpeg,.png,.gif" multiple>
							</label>
						</div>
					</div>
					<div>
						<div>상세 썸네일용 이미지</div>
						<div id="detailThum">
							<label for="S-DS-TYPE1"> <span>사진 추가하기</span> <input
								type="file" name="" id="S-DS-TYPE1"
								accept=".jpg,.jpeg,.png,.gif" multiple>
							</label>
						</div>
					</div>
				</div>
			</div>
			<div class="inp-wrap">
				<span>상세 이미지 등록<small>*최대 9개까지 추가 등록 가능</small></span>
				<div id="input-detail-img">
					<div>
						<label for="S-DS-TYPE2"><input type="file" name=""
							id="S-DS-TYPE2"></label>
					</div>
				</div>
			</div>
			<!-- 커버 이미지 선택란 끝 -->


			<!-- 공간 상세설명 참고사항 공간위치등록 선택란 -->
			<div class="inp-wrap">
				<span>공간 상세 설명</span>
				<textarea name="sLongintro" id="" cols="30" rows="15"
					placeholder="공간의 특징(분위기, 수용인원, 사용용도 등)이 잘 들어날 수 있도록 상세하게 적어주세요&#13;&#10;&#13;&#10;예시 : 잠실에 위치한 OOO은 베이킹 전문공간입니다. 최대인원 10명이 수업 가능하며 기본주방시설과 2단 데크오븐이 있어 베이킹 전문수업으로 공간 대여 가능합니다. 전체분위기는 화이트톤이며 자세한 문의는 1:1메시지 주시면 공간에 대해 답변 드리겠습니다."></textarea>
			</div>
			<div class="inp-wrap">
				<span>참고사항</span>
				<textarea name="sReference" id="" cols="30" rows="5"
					placeholder="공간에서 사용가능한 집기 비품 종류에 대해 상세히 입력해 주세요&#13;&#10;&#13;&#10;예시 : 기본주방설비/오븐 2개/ 각종 소품 및 조리도구가 구비되어 있고, 무료 와이파이가 제공됩니다.&#13;&#10;*빔프로젝트 사용은 예약시 미리 말씀해 주세요."></textarea>
			</div>
			<div class="inp-wrap">
				<span>공간 위치 등록</span>
				<div id="addressDiv">
					<div>
						<input type="text" name="" id="" placeholder="우편번호"
							readonly="readonly"> <input type="button" value="우편번호찾기">
					</div>
					<input type="text" name="" id="" readonly="readonly"> <input
						type="text" name="sLoc" id="" placeholder="상세주소를 입력해주세요.">
				</div>
			</div>
			<!-- 공간 상세설명 참고사항 공간위치등록 선택란  끝-->

			<!-- 편의 시설 안전시설 선택란 -->
			<div class="inp-wrap">
				<span>편의시설 <small>*중복 선택 가능</small></span> <span> <input
					type="checkbox" class="convenient" id="comfort1" value="화장실"><label
					for="comfort1">화장실</label></span> <span> <input type="checkbox"
					class="convenient" id="comfort2" value="환풍기"><label
					for="comfort2">환풍기</label></span> <span> <input type="checkbox"
					class="convenient" id="comfort3" value="전등"><label
					for="comfort3">전등</label></span> <span> <input type="checkbox"
					class="convenient" id="comfort4" value="주차가능"><label
					for="comfort4">주차가능</label></span>
			</div>

			<div class="inp-wrap">
				<span>안전시설 <small>*중복 선택 가능</small></span> <span> <input
					type="checkbox" class="safety" id="safety1" value="소화기"><label
					for="safety1">소화기</label></span> <span> <input type="checkbox"
					class="safety" id="safety2" value="화재감지기"><label
					for="safety2">화재감지기</label></span> <span> <input type="checkbox"
					class="safety" id="safety3" value="안전카드"><label
					for="safety3">안전카드</label></span> <span> <input type="checkbox"
					class="safety" id="safety4" value="구급상자"><label
					for="safety4">구급상자</label></span>
			</div>
			<!-- 편의 시설 안전시설 선택란 끝-->

			<!-- 자주 묻는 질문 선택란 -->
			<div class="inp-wrap">
				<span>자주 묻는 질문</span> <span> <input type="radio"
					name="formal" id="question" onchange="setDisplay()"><label
					for="question">자주 묻는 질문을 등록합니다.</label>
				</span> <span> <input type="radio" name="formal" id="NoQuestion"><label
					for="NoQuestion" onchange="setDisplay()">자주 묻는 질문을 등록하지
						않습니다.</label>
				</span>
			</div>

			<div id="oftenQuestion" style="display: none;">
				<strong>질문
					<button type="button" id="add-question">+</button>
				</strong>
			</div>
			<!-- 자주 묻는 질문 선택란 끝 -->

			<div id="btn-form-wrap">
				<input type="button" value="다음" id="complete"> <input
					type="button" value="임시저장" id="go">
			</div>
		</form>
	</div>
</div>


