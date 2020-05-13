<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/classD.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/Header.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/footer.css'/>">
<link rel="stylesheet" href="<c:url value='resources/css/shareDiv.css'/>">

<link rel="stylesheet" href="<c:url value='/resources/css/slick.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/slick-theme.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/class-slick.css'/>">

<!-- 달력 플러그인 css  -->
<link rel="stylesheet" href="<c:url value='/resources/css/datepicker.min.css'/>" type="text/css">

<!-- 폰트 -->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap"
	rel="stylesheet">
	<!--js 파일 불러오기   -->
	
<!-- jquery 불러오기 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="<c:url value='resources/js/classD.js'/>"></script>
<script src="<c:url value='/resources/js/scrollMoving.js'/>"></script>
<!-- 달력 플러그인 js  -->
<script src="<c:url value='/resources/js/datepicker.min.js'/>"></script>
<script src="<c:url value='/resources/js/datepicker.en.js'/>"></script>

<!-- detailsumnail slider  -->
<script src="<c:url value='/resources/js/slick.js'/>"></script>
<script src="<c:url value='/resources/js/main-slick.js'/>"></script>

<!-- jquery ui 충돌나서 사용 할 수 없음 해결 방법 필요-->
<!-- <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->


<script>
	
	$(document).ready(function () {	
		// 이 페이지로 전달된 el의 값을 jqeury변수에 담아 사용
		var sType = "<c:out value='${detailClass.sType}' />";
		if(sType == "대여") {
			$(".detailCLoc").css({'pointer-events':'none'});
		
		}
		
		var schNo = new Array(0,0);
		var cnt = 0;
		var classSch = $(".classSch");
		classSch.on("click", function () {
			cnt++;
			var date = $(this).children(".schLeaseDate").text();
			var time = $(this).children(".schLeaseTime").text();
			var outTime = "";
			
			if(time.indexOf("10") != -1) {	
				outTime = "10:00 - 14:00";
			} else if(time.indexOf("14") != -1) {
				outTime = "14:00 - 18:00";
			} else {
				outTime = "18:00 - 22:00";
			}
			
			if(cnt == 1) {
				// 첫번째 클릭 했을 때
				schNo[0] = $(this).val();
				$(this).css("backgroundColor", "#8E0032");
				$(this).children("span").css("color", "white");
				$(".choiceSch").css("display","block");
				$(".schDate").text(date);
				$(".schTime").text(outTime);
			} else if (cnt == 2) {
				// 두번째 클릭 했을 때
				schNo[1] = $(this).val();
				   if(schNo[0]==schNo[1]) {
					// 같은거 클릭 했을 때   
					$(this).css("backgroundColor", "white");
					$(this).children("span").css("color", "#959595");
					$(".choiceSch").css("display","none");
					schNo[0]=0;
					cnt = 0;
				   } else if(schNo[0]!=schNo[1]) {
					   // 다른거 클릭 했을 때
					   schNo[0] = $(this).val();
					   classSch.css("backgroundColor", "white");
					   classSch.children("span").css("color", "#959595")
					   $(this).css("backgroundColor", "#8E0032");
					   $(this).children("span").css("color", "white");
					   cnt = 1;
					   
					   $(".schDate").text(date);
					   $(".schTime").text(outTime);
					   
				   }								
			}
		});

		var btnPayment = $(".btn-payment");
		btnPayment.on("click", function () {
			if(schNo[0] == 0) {
				alert("클래스 일정을 선택해 주세요.");	
			} else {
				$(location).attr("href", "classPayment?no="+schNo[0]);
			}
		});
	});
	
	
	
</script>

<jsp:include page="../../headerScript.jsp" flush="false" />
<script>
$(document).ready(function () {
	
	var list = new Array();
	/* ajax를 데이터를 받을 방법을 강구하시오.!  */
	<c:forEach var="itemList" items="${detailCSche3}" varStatus="listIdx"  >
		list.push("${itemList}");
	</c:forEach>
	console.log(list);
	var $picker = $(".datepicker-here");
		
	$picker.datepicker({
		// 날짜 선택기의 셀이 렌더링 될 때 콜백  
		// html로 입력받아 해석해서 표준 출력 장치(모니터)로 출력
	    // 화면에 날짜가 보여질 때 호출???
	                    		
		
		onRenderCell: function (date, cellType) {
			/* date : 현재 셀  날짜
			   cellTpe : 현재 셀 유형 (day, month, year)
			*/
	        var currentDate = date.getDate();
			/* 0~11까지 표기한다.  */
			var currentMonth = date.getMonth()+1;
	        var currentYear = date.getFullYear();
	        /* console.log(typeof currentDate); */
	        
	        // Add extra element, if `eventDates` contains `currentDate`
	        /* currentDate는 출력되는 요일?  */
	        
	        /* 
	                    문자열.indexOf("찾을문자") 문자열과 배열에서 사용 가능...
	                    해당하는 값이 존재 할 경우 위치를 넘겨줌. 찾다가 해당값이 없을 경우 -1을 리턴하는데
	                    현재 코드에서는 -1이 아닐 경우 즉 찾았을 경우에만 동작하게 되어있다.
	        */	
	        
	        /* 	var eventYear = new Array();
	        	var eventMonth = new Array();
				var eventDate = new Array(); 
	        for (var j = 0; j < list.length; j++) {
	        	eventYear[j] = list[j].substring(0, 4);
	        	eventMonth[j] = list[j].substring(5, 6); 
				eventDate[j] = list[j].substring(7, 9);
	        } */
	        
	        /* console.log(currentYear+"년"+currentMonth+"월"+currentDate+"일");
			 */
			
	        // 현재 date를 통해 get하여 가져온 연월일의 개수는 date에 따라 변동된다.
	        // 현재 4월은 35개식 가져온다.하지만 비교하는 대상 데이터는 7개이다.(연, 월, 일)
	        // date를 통해 가져온 날짜와 비교하는 대상 데이터와 정확한 매핑이되고 있지 않다.
	        // indexOf는 찾은 문자열의 위치를 찾는 함수인데 number type에도 왜 작동을 하는가..??
	        // 비교대상이 전체 String이던가 number형이여야 화면에 출력값을 보여준다
	        // 정확한 매핑이 필요한데 indexOf를 사용하지 않으면 어떨까?? (배열로 받아 사용하는 것은 실패)
	        // 해결!!!
	        		
	        for (var i = 0; i < list.length; i++) {
	        	var eventYear = list[i].substring(0, 4);
	        	var eventMonth = list[i].substring(5, 6); 
				var eventDate = list[i].substring(7, 9);
	        	
	        	if (currentYear == eventYear && currentMonth == eventMonth && currentDate == eventDate) {
		           // if(cellType == "day") {
			        	return {
			            	/* 지정한 요일에 점추가되는 span  */
			                html: currentDate + '<span class="dp-note"></span>'
			       //     } // return문 end
		            } // second if문 end
		        } // first if문 end
			 } // for문 end
	    }	
	});
	
	
	var type = "class";
	var number = "<c:out value='${detailClass.cNo}' />";
	var isAuthenticated = "<c:out value='${isAuthenticated}' />";
	var checkWishlist = "<c:out value='${checkWishlist}' />";
	console.log("로그인 인증 검사 : "+isAuthenticated);
	console.log("즐겨찾기 검사 : "+checkWishlist);
	
	// 즐겨찾기 check 검사
	 if(isAuthenticated != "" && checkWishlist != -1) {
		 $(".btn-wishlist").addClass("active"); 
	 }

	// 1. 로그인 되어야 사용 할 수 있어야 한다.
	$(".btn-wishlist").on("click", function () {
		if(isAuthenticated != "") {
			if ($(this).hasClass("active")) {
				wishlist(type, number, "delete");
			} else {
				wishlist(type, number, "insert");					
			}
		} else {
			alert("로그인을 해주세요.")
		}
	});
	
	function wishlist(type, number, status) {
		$.ajax({
		    url:'userWishlist', // 요청 할 주소
		    async:true,// false 일 경우 동기 요청으로 변경
		    type:'POST', // GET, PUT
		    dataType:'text',// xml, json, script, html
		    data: {
		    	"type":type,
		    	"number":number,
		    	"status":status
		    }, success:function(data) {
		    	console.log("성공");
		    	if(status=="insert") {
		    		alert("위시리스트에 추가되었습니다.")
		    	}
		    	$(".btn-wishlist").toggleClass("active");
		    },error:function() {
	    		console.log("실패");
	    	}
	    });
	}
	
});


</script>
<style>
	.datepicker {
		width: 100%;
		height: 448px;
	}
	
	/* 선택된 날짜 아래 표기되는 dot  */
	.dp-note {
	    background: #8e0032;
	    width: 5px;
	    height: 5px;
	    border-radius: 50%;
	    left: 50%;
	    bottom: 1px;
	    -webkit-transform: translateX(-50%);
	    transform: translateX(-50%);
	}
	
	.dp-note, .nav {
		position: absolute;
	}
	
	.choiceSch {
		border: 1px solid rgba(0, 0, 0, .1);
		border-bottom: none;
		padding: 14px 48px;
		text-align: center;
		display: none;
	}
	
	.schTitle {
	 	font-size: 14px;
	 	color: #585858;
	 	text-align: left;
	}
	
	.schDate, .schTime {
		font-size: 20px;
		color: #303030;
		font-weight: 600;
		display: inline-block;
		box-sizing: border-box;  
		line-height: 20px;  
	}
	
	.schDate {
		padding-right: 20px;
		border-right: 1px solid #d8d8d8;
	}
	
	.schTime {
		padding-left: 20px;
	}
	
	.reviewWrite {
		text-align: center;
	}
	
	.ContentsBox {
		display: inline-flex;
		margin-bottom: 30px;
		margin-top: 30px;
	}
	
	.writer {
		width: 135px;
	}
	
	.rate {
		width: 135px;
	}
	
	.write {
		width: 500px;
		height: 200px;
	}
	
	.write textarea {
		width: 100%;
		height: 100%;
	}
	
	
	.writer figure {
		overflow: hidden;
		width: 75px;
		height: 75px;	
		border-radius: 50%;
		background-color: rgb(246, 245, 245);
		display: inline-block;
	}
	
	.writer figure img {
		width: 100%;
		height: 100%;
	}
	


		
		
</style>
<script>
	$(document).ready(function () {
		
		$(".write").children("textarea").on("click", function () {
			
			console.log("textarea 동작")
		});
		
		
		
		
		
		
	});
</script>
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
			<div class="sliderContainer">
				<ul class="slider single-item">
					<c:forEach varStatus="status" var="item" items="${fn:split(detailClass.cDetailsumnail,',')}">
						<li>
							<img src="<c:url value='${item}' />" />
						</li>	
					</c:forEach>		
				</ul>
				<div class="progressBarContainer">
					<c:forEach varStatus="status" var="item" items="${fn:split(detailClass.cDetailsumnail,',')}">
 		 				<div>
	      					<span data-slick-index="${status.index}" class="progressBar"></span>
    					</div>
    				</c:forEach>   
 	 			</div>
				
				<!-- share 링크 -->
				<div class="share">
					<!-- a링크를 누르게 되면 공유 기능이 있는 div가 나온다  -->
					<a href="#pop_share"></a>
				</div>
			</div>
		</section>



		<section id="left02">
			<!-- 클래스소개,공간소개,선생님소개 들어간다. -->
			<!-- 클래스,선생님,공간 등록시 입력한 자기소개 형태 그대로 들어간다. 아래의 id="career" section을 참고하기 -->
			<section class="intro">
				<h3>클래스 소개</h3>
				<div class="contents">
					<span>${detailClass.cLongintro}</span>
				</div>

			</section>
			<!-- 클래스 참고사항,공간 참고사항에 들어간다.  -->
			<!-- 클래스,공간 등록시 입력한 참고사항 데이터 형태 그대로 들어간다. 아래의 id="career" section을 참고하기  -->
			<section class="reference">
				<h3>참고사항</h3>
				<div class="contents">
					<span>${detailClass.cReference}</span>
				</div>
			</section>

			<!--임대한  공간 정보가 나오게 된다. -->
			<section class="spaceInfo">
				<!--part 제목 -->
				<h3>공간</h3>
				<!-- 공간에 대한 이미지 -->
				<section class="detailImg">
					<img
						src="<c:url value='${detailClass.sMainsumnail}'/>"
						alt="">
				</section>
				<!-- 링크를 통해 공간 페이지로 이동하게 된다.
                링크에는 공간의 주소가 들어간다. -->
				<a href="spaceD?no=${detailClass.sNo}" class="detailCLoc"><span class="locIcon">${detailClass.sLoc}</span></a>
				<p>상세주소는 클래스 예약 시 수강생들에게만 공개 됩니다.</p>
			</section>

			<!-- 클래스 일정이 나온다 . -->
			<section id="classSchedule">
				<h3>클래스 일정</h3>
				<p>클래스 신청은 우측에 신청하기 버튼을 눌러주세요</p>
				<!-- 클래스 공간에 들어가는 달력 요소 -->
				<div class="calendarSchedule">
					<div class="half01">
						<div class="datepicker-here" data-language="en"></div>
					</div>
					<div class="half02">
						<h3>일정별 수업시간</h3>
						<!-- 스케쥴에 대한 내용이 나온다. -->
						<div>
							<ul>
								<c:forEach var="dcsdto" items="${detailCSche2}">
									<li>
										<span><fmt:formatDate value="${dcsdto.lLeasedate}" pattern="yy.MM.dd(E)"/></span>
										<c:choose>
											<c:when test="${dcsdto.lLeasetime eq '오전'}">
												<span>10:00-14:00</span>
											</c:when>
											<c:when test="${dcsdto.lLeasetime eq '오후'}">
												<span>14:00-18:00</span>
											</c:when>
											<c:otherwise>
												<span>18:00-22:00</span>
											</c:otherwise>								
										</c:choose>	
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</section>


			<!-- 클래스 공간 선생님의 리뷰에 대한 정보가 들어온다 -->
			<c:if test="${not empty reviewInfoList || not empty EnrolCheck.mNo}">
			<section class="review">
				<h3>리뷰</h3>
				<!-- review 작성 부분  -->
				<c:if test="${not empty EnrolCheck.mNo}">
				<div class="reviewWrite">
					<form action="reviewWrite" method="post">
					<input type="hidden" name="" value="" />
					<div class="ContentsBox">
						<div class="writer">
							<figure>
								<c:choose>
									<c:when test="${not empty EnrolCheck.mMainsumnail}">
										<img src="<c:url value='${EnrolCheck.mMainsumnail}' />" alt="">									
									</c:when>
									<c:otherwise>
										<img src="<c:url value='resources/img/icon/mDefaultIcon.png' />" alt="">																		
									</c:otherwise>
								</c:choose>
							</figure>
							<div>${EnrolCheck.mName}</div>
							<jsp:useBean id="now" class="java.util.Date"/>
							<div><fmt:formatDate value="${now}" pattern="yyyy.MM.dd"/></div>
						</div>
						<div class="write">	
							<textarea name="contents" class="" cols="80" rows="10"></textarea>
						</div>
						<div>
							<!-- 점수  -->
							<ul class="rate">
								<li>
									<input type="radio" name="radio" id="radio1" value="5" /><label for="radio1" class="goodIcon"></label>
									<div>추천!</div>
								</li>
								<li>
									<input type="radio" name="radio" id="radio2" value="3" /><label for="radio2" class="normalIcon"></label>
									<div>보통!</div>
								</li>
								<li>
									<input type="radio" name="radio" id="radio3" value="1" /><label for="radio3" class="badIcon"></label>
									<div>별로!</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="writeOk">
						<!-- 전송  -->
						<input type="submit" value="리뷰 작성완료" id="" />
					</div>
					</form>
				</div>
				</c:if>
				<ul>
					<c:forEach var="reviewInfo" items="${reviewInfoList}">
					<li>
						<!-- 클래스,공간,선생님에게 다는 댓글에서 회원의 사진,평가,이름,날짜가 들어온다. -->
						<div class="reviewInfo">
							<!-- 회원 이미지가 들어온다. -->
							<figure>
								<c:choose>
									<c:when test="${not empty reviewInfo.mMainsumnail}">
										<img src="<c:url value='${reviewInfo.mMainsumnail}' />"
										alt="">	
									</c:when>
									<c:otherwise>
										<img src="<c:url value='resources/img/icon/mDefaultIcon.png' />"
										alt="">						
									</c:otherwise>
								</c:choose>
							</figure>
							<!-- 평가와 이름 적은 날짜가 온다. -->
							<span class="memberInfo"> <!-- 평가 이모티콘 -->
								<c:choose>
									<c:when test="${reviewInfo.rvScore eq 5}">
									<figure>
										<img src="<c:url value='resources/img/icon/good.png' />"
										alt="">
									</figure> <strong>추천!</strong>
									</c:when>
									<c:when test="${reviewInfo.rvScore eq 3}">
									<figure>
									<img src="<c:url value='resources/img/icon/normal.png' />"
										alt="">
									</figure> <strong>보통!</strong>	
									</c:when>
									<c:otherwise>
									<figure>
									<img src="<c:url value='resources/img/icon/bad.png' />"
										alt="">
									</figure> <strong>별로!</strong>
									</c:otherwise>
								</c:choose>
								 <!--이름과 댓글 등록 날짜가 오게된다. --> <span>
									${reviewInfo.mName} <!--등록 날짜가 온다 --> <em>${reviewInfo.rvDate}</em>
							</span>
								<p>${reviewInfo.rvContent}</p> <!-- 더보기 기능이 있는 a태그 --> <!-- div 늘어나는 function -->
								<!-- 1번째라 매개변수 1을 줌  --> <a href="javascript:reviewOne(0);">더보기</a>
							</span>
						</div>
					</li>
					</c:forEach>
				</ul>
			</section>
			</c:if>
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
					<span class="name">${detailClass.cName}</span>

				</h2>
				<!-- 한줄소개(선생님,공간,클래스),해시태그(클래스,공간),경력(선생님),나머지정보(선생님,공간,클래스) -->
				<div class="cont">
					<!-- 한줄소개(선생님,공간,클래스) -->
					<div class="shortIntro">${detailClass.cShortintro}</div>

					<!-- 해쉬태그(공간,클래스)에 대한 정보가 들어온다.  -->
					<section class="hashTag">
						<!-- db에서 하나씩 가져오면 태그하나당 링크 하나로 처리한다. 링크를 클릭하면 검색페이지로 넘어간다. -->
						<!-- <a href="">${hashtag}</a> <a href="">#쭈꾸미</a> <a href="">#쭈꾸미가나다라</a> -->						
						
						<c:forEach var="hashtag" items="${fn:split(detailClass.cHashtag, ',')}">
							<a href="#">#${hashtag}</a>
						</c:forEach>
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
					<!-- 세번째 공백에서 자르기!!!!! 필요  -->
					<span class="otherInfoContents">${fn:substring(detailClass.sLoc, 0, 14)}...</span>
					

				</li>
				<!-- 언제 열리는지에 대한 정보(클래스) -->
				<li id="classDate">
					<!-- 위와 동일한 css --> <strong class="otherInfoName">일시</strong> <span
					class="otherInfoContents">
						<c:forEach var="dcsdto" items="${detailCSche2}">
							<fmt:formatDate var="item" value="${dcsdto.lLeasedate}" pattern="MM월dd일(E)"/>
							${item},				
						</c:forEach>
							
					</span> 
				</li>
				<!-- 모집(클래스),인원(공간)에 대한 정보  -->
				<li class="capacity">
					<!-- 위와 동일한 css --> <strong class="otherInfoName">모집</strong> <span
					class="otherInfoContents">최소인원 ${detailClass.cMinrecruitperson}명 / 최대인원 ${detailClass.cMaxrecruitperson}명</span>
				</li>

			</ul>

			<!-- 클래스를 개설한 선생님 디테일 페이지로 가는 링크가 오게 된다. -->
			<div id="classTeacher">
				<!-- 선생님 사진 이미지 db에서 꺼내오기! -->
				<img src="<c:url value='${detailClass.mMainsumnail}'/>">
				<!-- 선생님 페이지에서 넘어가는 링크가 들어있다. -->
				<div id="teacherLink">
					<a href="teacherD?no=${detailClass.tNo}"> <!-- 선생님 이름이 들어갑니다. --> <Strong>${detailClass.tHavenickname}</Strong>
						<!-- 선생님 칭호가 들어갑니다. --> <span>${detailClass.tExpertname}</span>
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
					<button class="btn-wishlist" value=""></button>
				</div>
				<!--  일정 기능이 있는 부분을 Body라고 지정했다. -->
				<div class="selectBody">
					<h3>클래스 일정</h3>
					<p>원하시는 일정을 선택해 주세요.</p>
					<!-- 시간 선택(클래스,공간)에 관한 ul이다. db 대여 entity에서 정보를 가지고 와서 li에 반복적으로 추가해주자!  -->
					<!-- 스케쥴표가 전부 펼쳐진상태를 말한다. javascript로 로직처리가 필요하다. -->
					<div id="scheduleOn">
						<ul class="timeList">
							<c:forEach var="dcsdto" items="${detailCSche1}">
							<!-- 날짜를 format 할때 양식의 대소문자를 잘 지켜줘야 된다.  -->
								<li class="classSch" value="${dcsdto.recNo}" >
								<span class="schLeaseDate"><fmt:formatDate value="${dcsdto.lLeasedate}" pattern="yy.MM.dd(E)"/></span>
								<c:choose>
									<c:when test="${dcsdto.lLeasetime eq '오전'}">
										<span class="schLeaseTime">10:00</span>
									</c:when>
									<c:when test="${dcsdto.lLeasetime eq '오후'}">
										<span class="schLeaseTime">14:00</span>
									</c:when>
									<c:otherwise>
										<span class="schLeaseTime">18:00</span>
									</c:otherwise>								
								</c:choose>
								<!-- 
									인원이 다 차거나 진행 상태가 종료가 되면 마감으로 처리
									사람이 안 차도 시간이 지나면 자동으로 종료가 되도록 하는 로직이 필요하다.
							  	-->
								<c:choose>
									<c:when test="${dcsdto.cMaxrecruitperson eq dcsdto.cPerson or dcsdto.lPerstatus == '종료'}">
										<span class="endC">마감</span>									
									</c:when>
									<c:otherwise>							
										<span>${dcsdto.cMaxrecruitperson-dcsdto.cPerson}명 예약 가능</span>
									</c:otherwise>
								</c:choose>
								</li>
							</c:forEach>
						</ul>
					</div>

				</div>
				<!-- 이걸 누르면 scheduleOn이 접힌다.접히게 되면 아이콘이 거꾸로 돌아간다. transform속성을 사용하자. -->
				<p>
					<a href="javascript:selectBody();">일정 접기 </a>
				</p>
				<div class="choiceSch">
					<div class="schTitle">선택된 일정</div>
					<span class="schDate">20.05.16(토)</span>
					<span class="schTime">14:00 - 18:00</span>
				</div>
				<!-- 신청하기 버튼이 있는 기능에 bottom이라고 지정했다. -->
				<div class="selectBottom">
					<!-- 해당 클래스,공간에 대한 가격이 보이게 된다. -->
					<p>
						<em>₩</em><span>${detailClass.cPrice}</span>
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