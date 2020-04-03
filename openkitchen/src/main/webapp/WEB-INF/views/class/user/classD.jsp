<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<c:url value='resources/css/reset.css'/>">
<link rel="stylesheet" href="<c:url value='resources/css/classD.css'/>">
<link rel="stylesheet"
	href="<c:url value='resources/css/shareDiv.css'/>">
<!-- 폰트 -->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap"
	rel="stylesheet">
	<!--js 파일 불러오기   -->
	



<!-- jquery 불러오기 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="<c:url value='resources/js/classD.js'/>"></script>
<script src="<c:url value='/resources/js/scrollMoving.js'/>"></script>
<title>Document</title>
</head>



<body>
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
					src="https://www.public-kitchen.com/upload/lecture/e4460252-a4c4-44d0-a018-a902f33a3d52.jpg"
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
				<h3>클래스 소개</h3>
				<div class="contents">
					<span>맛있는 자극이 필요한 이때</span><br> <span>“침샘 자극, 쭈꾸미 볶음”</span><br>
					<br> <span>*김순이 선생님만의 꿀Tip!</span><br> <span>1)
						주꾸미 깨끗하게 손질하는 법</span><br> <span>2) 볶음시 물이 생기지 않는 방법</span><br>
					<span>3) 매콤한 양념 만드는 법</span><br> <br> <span>봄의
						보양식이라고 불리는 주꾸미는 </span><br> <span>현재는 주업은 요리를 하고 있지 않지만 현재도
						기회만 되면 집에서 홈파티를 열어</span><br> <span>필수 아미노산을 보충해 주어 건강에 좋은
						저지방 저칼로리 고단백 음식입니다.</span><br> <br> <span>직접 만들어 손맛이 깃든
						따스한 집밥</span>
				</div>

			</section>
			<!-- 클래스 참고사항,공간 참고사항에 들어간다.  -->
			<!-- 클래스,공간 등록시 입력한 참고사항 데이터 형태 그대로 들어간다. 아래의 id="career" section을 참고하기  -->
			<section class="reference">
				<h3>참고사항</h3>
				<div class="contents">
					<span>2시간 정도 진행되는 클래스입니다.</span>
				</div>
			</section>

			<!--임대한  공간 정보가 나오게 된다. -->
			<section class="spaceInfo">
				<!--part 제목 -->
				<h3>공간</h3>
				<!-- 공간에 대한 이미지 -->
				<section class="detailImg">
					<img
						src="https://www.public-kitchen.com/upload/croppieByAdmin/eb4fea3e-f5f4-4e77-83c5-56eff765e616.jpg"
						alt="">
				</section>
				<!-- 링크를 통해 공간 페이지로 이동하게 된다.
                링크에는 공간의 주소가 들어간다. -->
				<a href="classD"><span>서울특별시 서대문구 모래내로</span></a>
				<p>상세주소는 클래스 예약 시 수강생들에게만 공개 됩니다.</p>
			</section>

			<!-- 클래스 일정이 나온다 . -->
			<section id="classSchedule">
				<h3>클래스 일정</h3>
				<p>클래스 신청은 우측에 신청하기 버튼을 눌러주세요</p>
				<!-- 클래스 공간에 들어가는 달력 요소 -->
				<div class="calendarSchedule">
					<div class="half01">캘린더 api가 들어오는 자리</div>
					<div class="half02">
						<h3>일정별 수업시간</h3>
						<!-- 스케쥴에 대한 내용이 나온다. -->
						<div>
							<ul>

								<li>
									<!--정보 --> <span>20.04.04 (토)</span> 오전
								</li>

								<li>
									<!--정보 --> <span>20.04.04 (토) </span> 오전
								</li>

								<li>
									<!--정보 --> <span>20.04.04 (토) </span> 오전
								</li>

								<li>
									<!--정보 --> <span>20.04.04 (토) </span> 오전
								</li>

								<li>
									<!--정보 --> <span>20.04.04 (토) </span> 오전
								</li>

								<li>
									<!--정보 --> <span>20.04.04 (토) </span> 오전
								</li>

								<li>
									<!--정보 --> <span>20.04.04 (토) </span> 오전
								</li>

								<li>
									<!--정보 --> <span>20.04.04 (토)</span> 오전
								</li>

								<li>
									<!--정보 --> <span>20.04.04 (토) </span> 오전
								</li>

								<li>
									<!--정보 --> <span>20.04.04 (토) </span> 오전
								</li>
							</ul>
						</div>
					</div>
				</div>
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
									듣고싶은 분께 정말 추천드려요!</p> <!-- 더보기 기능이 있는 a태그 --> <!-- div 늘어나는 function -->
								<!-- 1번째라 매개변수 1을 줌  --> <a href="javascript:reviewOne(0);">더보기</a>
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
								href="javascript:reviewOne(1);">더보기</a>
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
									듣고싶은 분께 정말 추천드려요!</p> <!-- 더보기 기능이 있는 a태그 --> <!-- div 늘어나는 function -->
								<!-- 1번째라 매개변수 1을 줌  --> <a href="javascript:reviewOne(2);">더보기</a>
							</span>
						</div>


					</li>
				</ul>
				<p>
					
				</p>
			</section>

			<!-- 선생님,클래스,공간에 대한 환불정책이 나와 있다. -->
			<section class="refundPolicy">
				<div>
				<figure>

					<img src="<c:url value='resources/img/icon/refundPolicy1.png' />"
						alt="">
				</figure>
				<figure>
					<img src="<c:url value='resources/img/icon/refundPolicy2.png' />"
						alt="">
				</figure>
				<figure>
					<img src="<c:url value='resources/img/icon/refundPolicy3.png' />"
						alt="">
				</figure>
				</div>
				<a href="javascript:refundPolicy();">펼치기</a>
			</section>

		</section>



		<section id="right01">
			<!--title div에는 이름 칭호 경력이 들어간다.(공간,선생님,클래스)  -->
			<div class="title">
				<!-- 이름과 칭호가 들어간다.(칭호는 선생님만) -->
				<h2 class="t-title">
					<!-- 이름이 들어간다.(공간,선생님,클래스) -->
					<span class="name">이유의계절:봄-레몬파운드케익</span>

				</h2>
				<!-- 한줄소개(선생님,공간,클래스),해시태그(클래스,공간),경력(선생님),나머지정보(선생님,공간,클래스) -->
				<div class="cont">
					<!-- 한줄소개(선생님,공간,클래스) -->
					<div class="shortIntro">상큼함이 입안 가득! 레몬파운드 케익 6개를 예쁘게 포장해
						가져가세요:-)</div>

					<!-- 해쉬태그(공간,클래스)에 대한 정보가 들어온다.  -->
					<section class="hashTag">
						<!-- db에서 하나씩 가져오면 태그하나당 링크 하나로 처리한다. 링크를 클릭하면 검색페이지로 넘어간다. -->
						<a href="">#한식</a> <a href="">#쭈꾸미</a> <a href="">#쭈꾸미가나다라</a>
					</section>
				</div>
			</div>
			<!--시간(클래스), 테마(선생님,공간),위치(공간,클래스),인원(공간,클래스),활동지역(선생님)-->
			<ul class="otherInfo">
				<!-- 시간 정보가 들어간다. -->
				<li id="classTime">
					<!-- 시간,테마,위치,인원,활동지역이라는 이름이 들어간다. --> <strong
					class="otherInfoName">시간</strong> <!--시간 테마,위치,인원,활동지역의 내용이 들어가게 된다. 
                    만약 주어진 너비를 넘어가게 되면 ...으로 표시한다.--> <span
					class="otherInfoContents">약 2시간 소요</span>

				</li>

				<!-- 위치(공간,클래스)가 들어간다. -->
				<li class="area">
					<!--  위와 동일한 css--> <strong class="otherInfoName">위치</strong> <!-- 위치가 들어간다. -->
					<span class="otherInfoContents">서울특별시 서대문구 모래내로</span>

				</li>
				<!-- 언제 열리는지에 대한 정보(클래스) -->
				<li id="classDate">
					<!-- 위와 동일한 css --> <strong class="otherInfoName">일시</strong> <span
					class="otherInfoContents">03월30일(월),04월20일(월)</span>
				</li>
				<!-- 모집(클래스),인원(공간)에 대한 정보  -->
				<li class="capacity">
					<!-- 위와 동일한 css --> <strong class="otherInfoName">모집</strong> <span
					class="otherInfoContents">최소인원 2명 / 최대인원 4명</span>
				</li>

			</ul>

			<!-- 클래스를 개설한 선생님 디테일 페이지로 가는 링크가 오게 된다. -->
			<div id="classTeacher">
				<!-- 선생님 사진 이미지 db에서 꺼내오기! -->
				<img
					src="https://www.public-kitchen.com/upload/croppieByAdmin/3d5df044-6fb5-43eb-aca4-55836e6b3857.jpg"
					alt="">
				<!-- 선생님 페이지에서 넘어가는 링크가 들어있다. -->
				<div id="teacherLink">
					<a href="teacherD"> <!-- 선생님 이름이 들어갑니다. --> <Strong>김순이</Strong>
						<!-- 선생님 칭호가 들어갑니다. --> <span>한식 요리 연구가</span>
					</a>
				</div>
			</div>
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
					<h3>클래스 일정</h3>
					<p>원하시는 일정을 선택해 주세요.</p>
					<!-- 시간 선택(클래스,공간)에 관한 ul이다. db 대여 entity에서 정보를 가지고 와서 li에 반복적으로 추가해주자!  -->
					<!-- 스케쥴표가 전부 펼쳐진상태를 말한다. javascript로 로직처리가 필요하다. -->
					<div id="scheduleOn">
						<ul class="timeList">

							<li>
								<!--정보 --> <span>20.04.04 (토) 오전</span> <span>8명 예약 가능</span>

							</li>


							<li>
								<!--정보 --> <span>20.04.04 (토) 오전</span> <span>8명 예약 가능</span>

							</li>
							<li>
								<!--정보 --> <span>20.04.04 (토) 오전</span> <span>8명 예약 가능</span>

							</li>
							<li>
								<!--정보 --> <span>20.04.04 (토) 오전</span> <span>8명 예약 가능</span>

							</li>
							<li>
								<!--정보 --> <span>20.04.04 (토) 오전</span> <span>8명 예약 가능</span>

							</li>
							<li>
								<!--정보 --> <span>20.04.04 (토) 오전</span> <span>8명 예약 가능</span>

							</li>
							<li>
								<!--정보 --> <span>20.04.04 (토) 오전</span> <span>8명 예약 가능</span>

							</li>
							<li>
								<!--정보 --> <span>20.04.04 (토) 오전</span> <span>8명 예약 가능</span>

							</li>
							<li>
								<!--정보 --> <span>20.04.04 (토) 오전</span> <span>8명 예약 가능</span>

							</li>
							<li>
								<!--정보 --> <span>20.04.04 (토) 오전</span> <span>8명 예약 가능</span>

							</li>

						</ul>
					</div>

				</div>
				<!-- 이걸 누르면 scheduleOn이 접힌다.접히게 되면 아이콘이 거꾸로 돌아간다. transform속성을 사용하자. -->
				<p>
					<a href="javascript:selectBody();">일정 접기 </a>
				</p>
				<!-- 신청하기 버튼이 있는 기능에 bottom이라고 지정했다. -->
				<div class="selectBottom">
					<!-- 해당 클래스,공간에 대한 가격이 보이게 된다. -->
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
</body>

</html>