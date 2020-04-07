<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<c:url value='resources/css/reset.css'/>">
<link rel="stylesheet" href="<c:url value='resources/css/spaceD.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/Header.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/footer.css'/>">
<link rel="stylesheet"
	href="<c:url value='resources/css/shareDiv.css'/>">
<!-- 폰트 -->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap"
	rel="stylesheet">

<!-- jquery 불러오기 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="<c:url value='resources/js/spaceD.js'/>"></script>

<script src="<c:url value='/resources/js/scrollMoving.js'/>"></script>
<title>Document</title>
</head>

<body>
<jsp:include page="../../header.jsp" flush="false" />
	<!-- /////////////////////////////////////공유하기 팝업창 시작//////////////////////////////////////////////// -->

	<!-- 이 페이지의 용도 share 링크를 클릭했을 때 공유하기에 관한 div가 나오도록 설정한다. -->
	<!-- 팝업형식으로 나온다. -->
	<div id="pop_share">
		<!-- 안쪽에 팝업 창에 대한 내용 -->
		<div id="pop_inner">
			<div id="pop_title">공유하기</div>
			<div id="pop_content">
				<ul>
					<li><a href="" id="facebook">페이스북</a></li>
					<li><a href="" id="twitter">트위터</a></li>
					<li><a href="" id="kakaoS">카카오스토리</a></li>
					<li><a href="" id="band">밴드</a></li>
					<li><a href="" id="kakaoT">카카오톡</a></li>
					<li><a href="" id="line">라인</a></li>
					<li><a href="" id="mail">메일</a></li>
					<li><a href="" id="url">URL복사</a></li>
				</ul>

			</div>
			<!-- 클로즈 버튼  -->
			<a href="" id="btn-close"></a>

		</div>


	</div>

	<!-- /////////////////////////////////////////////선생님 클래스 공간 정보 출력 시작/////////////////////////////////////// -->
	<div id="lay01">
		<section id="left01">
			<!-- 상세 이미지 section 설정 -->
			<section class="detailImg">
				<img
					src="https://www.public-kitchen.com/upload/place/0691c6d6-2e5f-458b-b686-b66e29eb2c60.jpg"
					alt="">
				<!-- share 링크 -->
				<div class="share">
					<!-- a링크를 누르게 되면 공유 기능이 있는 div가 나온다  -->
					<a href="#pop_share"></a>
				</div>
			</section>
		</section>



		<section id="left02">
			<!-- 클래스소개,공간소개,선생님소개 들어간다. -->
			<!-- 클래스,선생님,공간 등록시 입력한 자기소개 형태 그대로 들어간다. 아래의 id="career" section을 참고하기 -->
			<section class="intro">
				<h3>공간 소개</h3>
				<div class="contents">
					<span>합정역에서 도보 3분거리에 있는 채식요리 전문 스튜디오입니다.</span><br> <span>최대
						8명까지 수용가능하며</span><br> <span></span><br> <span>편안한 분위기
						속에서 건강한 음식을 만들고 맛볼 수 있는 공간입니다.</span><br> <br> <span>저녁시간에는
						각종 모임, 클래스 등으로 대여 가능합니다. </span>
				</div>
				<a href="">더보기</a>
			</section>
			<!-- 클래스 참고사항,공간 참고사항에 들어간다.  -->
			<!-- 클래스,공간 등록시 입력한 참고사항 데이터 형태 그대로 들어간다. 아래의 id="career" section을 참고하기  -->
			<section class="reference">
				<h3>참고사항</h3>
				<div class="contents">
					<span>우녹스 오븐 1대, 전자레인지 1대</span>

				</div>

			</section>
			<!--공간 위치가 나오게 된다. -->
			<section class="spaceInfo">
				<!--part 제목 -->
				<h3>위치</h3>
				<!-- 공간에 대한 이미지 -->
				<section class="detailImg">

					<img src="<c:url value='resources/img/icon/spaceInfoImg.png'/>"
						alt="">
				</section>
				<!-- 링크를 통해 공간 페이지로 이동하게 된다.
                링크에는 공간의 주소가 들어간다. -->

				<span>서울특별시 용산구 회나무로13나길</span>


			</section>

			<!-- 클래스 공간 선생님의 리뷰에 대한 정보가 들어온다 -->
			<section class="review">
				<h3>리뷰</h3>
				<ul>

					<li>
						<!-- 클래스,공간,선생님에게 다는 댓글에서 회원의 사진,평가,이름,날짜가 들어온다. -->
						<div class="reviewInfo">
							<!-- 회원 이미지가 들어온다. -->
							<figure>
								<img src="<c:url value='resources/img/icon/mDefaultIcon.png'/>" alt="">
							</figure>
							<!-- 평가와 이름 적은 날짜가 온다. -->
							<span class="memberInfo"> <!-- 평가 이모티콘 -->
								<figure>
									<img src="<c:url value='resources/img/icon/smileIcon.png'/>" alt="">
								</figure> <strong>추천해요!</strong> <!--이름과 댓글 등록 날짜가 오게된다. --> <span>
									신하림 <!--등록 날짜가 온다 --> <em>2020.03.25</em>
							</span>
								<p>주스 외에 건강에 관해 여러가지 유익한 말씀도 해주시고 주스 실습때는 어려운 재료손질을 직접 해주시거나
									부족한 재료를 바로 구해서 오셔서 정말 감사했어요. 소규모로 진행한 지라 서로에 대해 많은 얘기를 했는데 나와
									다른 분야에 있는 사람들과 이야기를 나누는 경험이 특별했습니다. 카페같이 예쁜 장소에서 클렌즈 주스 수업을
									듣고싶은 분께 정말 추천드려요!</p> <!-- 더보기 기능이 있는 a태그 --> <a
								href="javascript:reviewOne(0)">더보기</a>
							</span>
						</div>


					</li>
					<li>
						<!-- 클래스,공간,선생님에게 다는 댓글에서 회원의 사진,평가,이름,날짜가 들어온다. -->
						<div class="reviewInfo">
							<!-- 회원 이미지가 들어온다. -->
							<figure>

								<img src="<c:url value='resources/img/icon/mDefaultIcon.png'/>"
									alt="">
							</figure>
							<!-- 평가와 이름 적은 날짜가 온다. -->
							<span class="memberInfo"> <!-- 평가 이모티콘 -->
								<figure>

									<img src="	<c:url value='resources/img/icon/smileIcon.png'/>"
										alt="">
								</figure> <strong>추천해요!</strong> <!--이름과 댓글 등록 날짜가 오게된다. --> <span>
									신하림 <!--등록 날짜가 온다 --> <em>2020.03.25</em>
							</span>
								<p>주스 외에 건강에 관해 여러가지 유익한 말씀도 해주시고 주스 실습때는 어려운 재료손질을 직접 해주시거나
									부족한 재료를 바로 구해서 오셔서 정말 감사했어요. 소규모로 진행한 지라 서로에 대해 많은 얘기를 했는데 나와
									다른 분야에 있는 사람들과 이야기를 나누는 경험이 특별했습니다. 카페같이 예쁜 장소에서 클렌즈 주스 수업을
									듣고싶은 분께 정말 추천드려요!</p> <!-- 더보기 기능이 있는 a태그 --> <a
								href="javascript:reviewOne(1)">더보기</a>
							</span>
						</div>


					</li>

<li>
						<!-- 클래스,공간,선생님에게 다는 댓글에서 회원의 사진,평가,이름,날짜가 들어온다. -->
						<div class="reviewInfo">
							<!-- 회원 이미지가 들어온다. -->
							<figure>
								<img src="<c:url value='resources/img/icon/mDefaultIcon.png' />"
									alt="">
							</figure>
							<!-- 평가와 이름 적은 날짜가 온다. -->
							<span class="memberInfo"> <!-- 평가 이모티콘 -->
								<figure>
									<img src="<c:url value='resources/img/icon/smileIcon.png' />"
										alt="">
								</figure> <strong>추천해요!</strong> <!--이름과 댓글 등록 날짜가 오게된다. --> <span>
									신하림 <!--등록 날짜가 온다 --> <em>2020.03.25</em>
							</span>
								<p>주스 외에 건강에 관해 여러가지 유익한 말씀도 해주시고 주스 실습때는 어려운 재료손질을 직접 해주시거나
									부족한 재료를 바로 구해서 오셔서 정말 감사했어요. 소규모로 진행한 지라 서로에 대해 많은 얘기를 했는데 나와
									다른 분야에 있는 사람들과 이야기를 나누는 경험이 특별했습니다. 카페같이 예쁜 장소에서 클렌즈 주스 수업을
									듣고싶은 분께 정말 추천드려요!</p> <!-- 더보기 기능이 있는 a태그 --> <a
								href="javascript:reviewOne(2);">더보기</a>
							</span>
						</div>
					</li>



				</ul>
				<p>
					<a href="#">리뷰 펼치기</a>
				</p>
			</section>

			<!-- 공간 대한 편의시설이 나와 있다. -->
			<section id="convenient">
				<h3>편의시설</h3>
				<!-- db에서 편의시설에 대한 정보를 가지고 온다. -->
				<span>화장실, 환풍기, 전등, 주차가능(주차는 총 3대가 가능하며 주차 필요 여부를 미리 알려주셔야 이용
					가능합니다. (3대를 초과하는 경우 인근 공영 주차장을 이용하셔야 합니다) )</span>
			</section>


			<!-- 공간 대한 안전시설이 나와 있다. -->
			<section id="safety">
				<h3>안전시설</h3>
				<!-- 안전 시설에 대한 정보를 db에서 가지고 온다. -->
				<span> 소화기,구급상자 </span>

			</section>

		</section>



		<section id="right01">
			<!--title div에는 이름 칭호 경력이 들어간다.(공간,선생님,클래스)  -->
			<div class="title">
				<!-- 이름과 칭호가 들어간다.(칭호는 선생님만) -->
				<h2 class="t-title">
					<!-- 이름이 들어간다.(공간,선생님,클래스) -->
					<span class="name">빛앤들공방</span>

				</h2>
				<!-- 한줄소개(선생님,공간,클래스),해시태그(클래스,공간),경력(선생님),나머지정보(선생님,공간,클래스) -->
				<div class="cont">
					<!-- 한줄소개(선생님,공간,클래스) -->
					<div class="shortIntro">떡과 한식디저트 마카롱을 한꺼번에 만날수있는공간</div>

					<!-- 해쉬태그(공간,클래스)에 대한 정보가 들어온다.  -->
					<section class="hashTag">
						<!-- db에서 하나씩 가져오면 태그하나당 링크 하나로 처리한다. 링크를 클릭하면 검색페이지로 넘어간다. -->
						<a href="">#쿠킹스튜디오</a> <a href="">#이태원</a> <a href="">#모임공간</a>
					</section>
				</div>
			</div>
			<!--시간(클래스), 테마(선생님,공간),위치(공간,클래스),인원(공간,클래스),활동지역(선생님)-->
			<ul class="otherInfo">
				<!-- 테마 정보가 들어간다. -->
				<li id="theme">
					<!-- 테마,위치,인원,활동지역이라는 이름이 들어간다. --> <strong class="otherInfoName">테마</strong>
					<!-- 테마,위치,인원,활동지역의 내용이 들어가게 된다. 
                    만약 주어진 너비를 넘어가게 되면 ...으로 표시한다.--> <span
					class="otherInfoContents">베이킹스튜디오</span>

				</li>

				<!-- 위치(공간,클래스)가 들어간다. -->
				<li class="area">
					<!--  위와 동일한 css--> <strong class="otherInfoName">위치</strong> <!-- 위치가 들어간다. -->
					<span class="otherInfoContents">서울특별시 서대문구 모래내로</span>

				</li>

				<!-- 모집(클래스),인원(공간)에 대한 정보  -->
				<li class="capacity">
					<!-- 위와 동일한 css --> <strong class="otherInfoName">인원</strong> <span
					class="otherInfoContents">4명</span>
				</li>

			</ul>


		</section>
		<section id="right02">
			<!-- 스케쥴 선택 창(클래스,공간)이 보인다.해당 정보에는 선생님과 호스트가 올린 시간대가 표시 되고 가격이 표시된다.  -->
			<section class="selectSchedule">
				<!-- 즐겨찾기 기능과 상담 기능이 있는 부분을 top이라고 지정했다. -->
				<div class="selectTop">
					<button class="btn-message">선생님께 궁금한 점을 물어보세요.</button>
					<!--  wishlist 버튼이다. 이 버튼의 position 상태가 변화한다.-->
					<button class="btn-wishlist"></button>
				</div>
				<!--  일정 기능이 있는 부분을 Body라고 지정했다. -->
				<div class="selectBody">
					<h3>공간대여 일정</h3>
					<p>원하시는 일정을 선택해 주세요.</p>
					<!-- 시간 선택(클래스,공간)에 관한 ul이다. db 대여 entity에서 정보를 가지고 와서 li에 반복적으로 추가해주자!  -->

					<div id="scheduleOn">달력 api가 들어옵니다.</div>

				</div>
				<!-- 이걸 누르면 scheduleOn이 접힌다.접히게 되면 아이콘이 거꾸로 돌아간다. transform속성을 사용하자. -->
				<p>
					<a href="javascript:selectBody()">일정 접기 </a>
				</p>
				<!-- 신청하기 버튼이 있는 기능에 bottom이라고 지정했다. -->
				<div class="selectBottom">
					<!-- 해당 클래스,공간에 대한 가격이 보이게 된다. -->
					<!-- !!선생님만 보인다.  -->
					<p>
						<em>₩</em><span>55,000</span>
					</p>
					<!-- 클래스 공간의 결제 상세페이지로 넘어가는 버튼이다. -->
					<button class="btn-payment">신청하기</button>
				</div>
			</section>
			<!-- 클래스,선생님 공간에 대한 리뷰가 들어온다.  -->

		</section>
	</div>
	<jsp:include page="../../footer.jsp" flush="false" />
</body>

</html>