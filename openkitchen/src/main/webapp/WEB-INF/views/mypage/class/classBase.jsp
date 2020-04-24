<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="classBase">
	<h4>수업공간 대여 여부</h4>
	<section class="checkboxSection">
		<!-- 넓이를 따로 잡아줌 -->
		<div class="checkboxWrap" id="WrapWidth3">
			<div class="checkbox">
				<!--일반클래스-->
				<input type="radio" name="cType" id="ordinary" checked="checked"
					value="일반"> <label for="radio"></label>
			</div>
			<div class="checkbox">
				<!--만원 클래스-->
				<input type="radio" name="cType" id="manwon" value="만원"> <label
					for="radio"></label>
			</div>
			<div class="checkbox">
				<!--단 한명이라도 클래스-->
				<input type="radio" name="cType" id="onlyOne" value="1명"> <label
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
					<div class="capacityDiv" id="min">

						<button type="button" class="min-btn">
							<img
								src="<c:url value='/resources/img/icon/ico-people-num.png'/>"
								alt="">
						</button>
						<span class="capacity" id="minCapacity">1</span>
						<button type="button" class="plus-btn">
							<img
								src="<c:url value='/resources/img/icon/ico-people-num.png'/>"
								alt="">
						</button>
					</div >
				</div>
				<div>
					<span>최대</span>
					<div class="capacityDiv" id="max">

						<button type="button" class="min-btn">
							<img
								src="<c:url value='/resources/img/icon/ico-people-num.png'/>"
								alt="">
						</button>
						<span class="capacity" id="maxCapacity">1</span>
						<button type="button" class="plus-btn">
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
				<span>가격</span> <input type="text" name="cPrice" id=""
					placeholder="가격을 입력해 주세요">
			</div>
			<div class="inp-wrap">
				<span>강좌명</span> <input type="text" name="cName" id=""
					placeholder="간결하게 입력해 주세요">
			</div>
			<div class="inp-wrap">
				<span>한 줄 설명<span id="placeEx-counter">0 / 45</span> <input
					type="text" name="cShortintro" id="" placeholder="매력적인 설명을 작성해주세요">
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
							<label for="C-MS"> <span>사진 추가하기</span> <input
								type="file" name="sumUpload1" id="C-MS"
								accept=".jpg,.jpeg,.png,.gif" multiple>
							</label>
						</div>
					</div>
					<div>
						<div>상세 썸네일용 이미지</div>
						<div id="detailThum">
							<label for="C-DS-TYPE1"> <span>사진 추가하기</span> <input
								type="file" name="" id="C-DS-TYPE1"
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
						<label for="C-DS-TYPE2"><input type="file" name=""
							id="C-DS-TYPE2"></label>
					</div>
				</div>
			</div>
			<!-- 커버 이미지 선택란 끝 -->


			<!-- 공간 상세설명 참고사항 공간위치등록 선택란 -->
			<div class="inp-wrap">
				<span>클래스 상세 설명</span>
				<textarea name="cLongintro" id="" cols="30" rows="15"
					placeholder="클래스의 특징(분위기, 수용인원, 클래스 내용 등)이 잘 들어날 수 있도록 상세하게 적어주세요&#13;&#10;&#13;&#10;예시 : 잠실에 위치한 OOO은 베이킹 전문강좌입니다. 최대인원 10명이 수업 가능하며  누구라도 부담없이 참여 할 수 있습니다. 보기에도 재미있고, 먹어보면 더 행복한 구황작물 쌀빵시리즈!
고구마빵 6개와 감자빵 6개 총 12개의 한박스 구성을 만들어 가실 수 있습니다."></textarea>
			</div>
			<div class="inp-wrap">
				<span>참고사항</span>
				<textarea name="cReference" id="" cols="30" rows="5"
					placeholder="수강시 주의할 점에 대해 상세히 입력해 주세요&#13;&#10;&#13;&#10;예시 : 고구마6개 감자6개, 총 12개 쌀빵을 직접 만들어가실수 있습니다.
수업은 1:1이 원칙입니다. 동반 수업을 원하시면 1:1메시지를 통해 문의주세요."></textarea>
			</div>
            	<!-- 공간 테마 선택란 -->
			<div class="inp-wrap">
				<span>공간 테마</span> <select name="cTema" id="">
					<option value="선택">선택</option>
					<option value="커피">커피</option>
					<option value="음료">음료</option>
					<option value="티">티</option>
					<option value="피자">피자</option>
					<option value="파스타">파스타</option>
					<option value="베이킹">베이킹</option>
					<option value="디저트">디저트</option>
					<option value="도시락">도시락</option>
					<option value="샌드위치">샌드위치</option>
					<option value="반찬">반찬</option>
					<option value="웰빙">웰빙</option>
					<option value="오가닉">오가닉</option>
					<option value="발효">발효</option>
					<option value="약선">약선</option>
					<option value="세계요리">세계요리</option>
					<option value="중식">중식</option>
					<option value="일식">일식</option>
					<option value="퓨전">퓨전</option>
					<option value="한식">한식</option>
					<option value="손님초대">손님초대</option>
					<option value="데코레이션">데코레이션</option>
					<option value="스타일링">스타일링</option>
				</select>
			</div>
			<!-- 공간 테마 선택란 끝 -->
            
            
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

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			<div id="btn-form-wrap">
				<input type="button" value="다음" id="complete"> <input
					type="button" value="임시저장" id="go">
			</div>
		</form>
	</div>
</div>


