<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<%-- <link rel="stylesheet"
	href="<c:url value='/resources/css/index-slide.css'/>"> --%>

<!-- 달력 플러그인 css  -->
<link rel="stylesheet" href="<c:url value='/resources/css/datepicker.min.css'/>" type="text/css">

<link rel="stylesheet" href="<c:url value='/resources/css/slick.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/slick-theme.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/class-slick.css'/>">

<!-- jquery 불러오기 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="<c:url value='resources/js/spaceD.js'/>"></script>

<script src="<c:url value='/resources/js/scrollMoving.js'/>"></script>
<%-- <script src="<c:url value='/resources/js/jquery.bxslider.min.js'/>"></script> --%>
<%-- <script src="<c:url value='/resources/js/index-slide.js'/>"></script> --%>

<!-- 달력 플러그인  -->
<script src="<c:url value='/resources/js/datepicker.min.js'/>"></script>
<script src="<c:url value='/resources/js/datepicker.en.js'/>"></script>

<!-- detailsumnail slider  -->
<script src="<c:url value='/resources/js/slick.js'/>"></script>
<script src="<c:url value='/resources/js/main-slick.js'/>"></script>

<title>Document</title>
<jsp:include page="../../headerScript.jsp" flush="false" />

<style>
	.datepicker {
		width: 100%;
	}
	
	.dp-note {
	    background: #ccc;
	    width: 4px;
	    height: 4px;
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
		height: 80px;
		border: 1px solid rgba(0, 0, 0, .1);
		border-bottom: none;
		padding: 14px 48px;
		text-align: center;
		/* 원인은 이것이였다...  */
		display: none; 
	}
	
	.schTitle {
	 	font-size: 14px;
	 	color: #585858;
	 	text-align: left;
	}
	
	.schTime > input {
		display:none
	}
	
	.schTime {
		border: 1px solid;
		display: inline-block;
		width: 75px;
		border-radius: 80px;
	}
	
	.schTime:nth-of-type(2) {
		margin-left: 15px;
		margin-right: 15px;
	}
	
</style>
<script>
	$(document).ready(function () {
		
		
		/* $picker.datepicker({
			// 날짜 선택기의 셀이 렌더링 될 때 콜백  
			// html로 입력받아 해석해서 표준 출력 장치(모니터)로 출력
            // 화면에 날짜가 보여질 때 호출???
                            		
			
			onRenderCell: function (date, cellType) {
				// date : 현재 셀  날짜
				//   cellTpe : 현재 셀 유형 (day, month, year)
				
		        var currentDate = date.getDate();
				// 0~11까지 표기한다.  
				var currentMonth = date.getMonth()+1;
		        var currentYear = date.getFullYear();
		        
		        // Add extra element, if `eventDates` contains `currentDate`
		        // currentDate는 출력되는 요일?  
		        
		        // 문자열.indexOf("찾을문자") 문자열과 배열에서 사용 가능...
		        // 해당하는 값이 존재 할 경우 위치를 넘겨줌. 찾다가 해당값이 없을 경우 -1을 리턴하는데
                // 현재 코드에서는 -1이 아닐 경우 즉 찾았을 경우에만 동작하게 되어있다.
		        		
		        if (currentYear == 2020 && currentMonth == 4 && eventDates.indexOf(currentDate) != -1) {
		            if(cellType == "day") {
			        	return {
			            	// 지정한 요일에 점추가되는 span 
			                html: currentDate + '<span class="dp-note"></span>'
			            }
		            }
		        }
		    }	
		}); */
		
		var list = new Array();
		/* ajax를 데이터를 받을 방법을 강구하시오.!  */
		<c:forEach var="itemList" items="${detailSScheDate}" varStatus="listIdx"  >
			list.push("${itemList}");
		</c:forEach>
		console.log(list);
		var $picker = $(".datepicker-here");		

				
		$picker.datepicker({
			// 날짜 선택기의 셀이 렌더링 될 때 콜백  
			// html로 입력받아 해석해서 표준 출력 장치(모니터)로 출력
		    // 화면에 날짜가 보여질 때 호출???
	     	navTitles: {
	     		days: '<span class="1">yyyy</span><span class="2">mm</span>',
       		},               		
			
			onRenderCell: function (date, cellType) {
				/* date : 현재 셀  날짜
				   cellType : 현재 셀 유형 (day, month, year)
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
				                html: currentDate + 
				                	'<span class="dp-note"></span>'
				       //     } // return문 end
			            } // second if문 end
			        } // first if문 end
				 } // for문 end
		    } //, onRenderCell end
		    
		    // 날짜 선택시 콜백한다.
		    /* onSelect: function onSelect(fd, date) {
		    	cnt++;
		    	console.log(cnt);
		    	// fd는 클릭한 날짜의 년월일을 리턴함
		    	// console.log(fd);
		        // If date with event is selected, show it
		        if(cnt==1){
		        	schNo[0] = fd;
		   
			         for (var i = 0; i < list.length; i++) {
				        if (date.getFullYear() == list[i].substring(0, 4) 
				        		&& date.getMonth()+1 == list[i].substring(5, 6) 
				        		&& date.getDate() == list[i].substring(7, 9)) {
				        	$(".choiceSch").css("display","block");
				        } 
			        }   
			        
			        // 임대해주는 날짜가 아닌 경우 이걸 어떻게 아냐고...???
			        // 임대해주는 날짜인지 확인 할 수 있는 트리거가 필요
			        
			        
		        } else if(cnt==2) {
		        	
					schNo[1] = fd;		        	
		        	// 같은거 클릭 했을 때
		        	// 같은 거를 클릭했을 때는 비교하기 위한 배열 두번째 칸에 공백이 담긴다.
		        	if(schNo[1] == "") {
		        		
		        		
		        	} else {
		        		schNo[0] = fd;
		        	
		        	}
		        	
		        	// 다른거 클릭 했을 때
		        	
		        }
		        // $('strong', $content).html(title)
		        // $('p', $content).html(content)
		    } */
		}); // datepicker end
		
		// 한 번 밖에 안 찍히는데 왜 이 방식을 사용하면 전체 작동을 하는가?
		// 플러그인? api의 작동방식의 차이인가?
		// 클릭 했을 때 예약정보가 있을 때만 일정을 불러와야 하고 불러온 일정 중
		// 예약 완료된 것은 다른 상태로 화면에 출력해야 한다.
		
		
		var cnt = 0;
		var schDate = new Array("", "");
		var leaseDate = "";
		$(document).on("click",".datepicker--cell", function () {
			leaseDate = $(".1").text()+"-"+$(".2").text()+"-"+$(this).text();
			$(".schTime").remove();
			
			// 1. 일정이 없는 날은 클릭했을 시 동작을 하면 안 된다.
			// 1.1 무엇을 비교해서 하는가? dot가 없으면 동c작 하지 않게 한다.
			if($(this).children("span").hasClass("dp-note")) {
				cnt++;
				console.log(cnt);
				
				
				
				// 첫번째 클릭
				if(cnt==1) {
					schDate[0] = $(this).text();
					console.log("카운트 1 : "+schDate);
					$(".choiceSch").css("display","block");
					
					// ajax를 통해 실시간으로 일정을 가져오자
					$.ajax({
					    url: "ajaxSDetailData",
					    type: "post",
					    // cache: false, 얘는 뭐냐???
					    // dataType: "json",
					    // 보내는게 뭔지 명시가 되야 함
					    data: {"leaseDate":leaseDate,
					    	   "sNo":"<c:out value='${detailSpace.sNo}' />"	
					    },       
					    // 동적으로 추가된 태그에 css가 적용되지 않는다.
					    success: function(data) {
					    	for (var i = 0; i < data.length; i++) {
								var choiceSch = data[i];
						    		if(choiceSch.lLeasetime == "오전") {
						    			$(".choiceSch").
						    				append("<label class='schTime'>오전<input type='checkbox' name='lNo' value='"+choiceSch.lNo+"' /></label>");
						    		} else if (choiceSch.lLeasetime == "오후") {
						    			$(".choiceSch").
					    					append("<label class='schTime'>오후<input type='checkbox' name='lNo' value='"+choiceSch.lNo+"' /></label>");
						    		} else {
						    			$(".choiceSch").
					    					append("<label class='schTime'>저녘<input type='checkbox' name='lNo' value='"+choiceSch.lNo+"' /></label>");
						    		}
							}
					    },

					    error: function (request, status, error){        
					    	console.log("response no");
					    }
					  });
				} else if(cnt==2) {
					schDate[1] = $(this).text();
					console.log("카운트 2 : "+schDate);
					// 같은 날짜를  클릭했을 때
					// 클릭했을 때 클릭한 날짜의 date을 값을 가져와 배열에 저장한다.
					if(schDate[0] == schDate[1]) {	
						$(".choiceSch").css("display","none");
						// 배열에 저장된 일정 초기화
						schDate[0] = "";
						cnt = 0;
						console.log("같은 일정을 선택");
					} else {
					// 일정상에 다른 날짜를 클릭했을 때
						console.log("다른 일정을 선택");
						schDate[0] = $(this).text();
						// ajax를 통해 실시간으로 일정을 가져오자
						$.ajax({
						    url: "ajaxSDetailData",
						    type: "post",
						    // cache: false, 얘는 뭐냐???
						    // dataType: "html",
						    // 보내는게 뭔지 명시가 되야 함
						    data: {"leaseDate":leaseDate,
						    	   "sNo":"<c:out value='${detailSpace.sNo}' />"	
						    },
						          
						    success: function(data){
						    	for (var i = 0; i < data.length; i++) {
									var choiceSch = data[i];
							    		if(choiceSch.lLeasetime == "오전") {
							    			$(".choiceSch").
							    				append("<label class='schTime'>오전<input type='checkbox' name='lNo' value='"+choiceSch.lNo+"' /></label>");
							    		} else if (choiceSch.lLeasetime == "오후") {
							    			$(".choiceSch").
						    					append("<label class='schTime'>오후<input type='checkbox' name='lNo' value='"+choiceSch.lNo+"' /></label>");
							    		} else {
							    			$(".choiceSch").
						    					append("<label class='schTime'>저녘<input type='checkbox' name='lNo' value='"+choiceSch.lNo+"' /></label>");
							    		}
								}
						    },

						    error: function (request, status, error){        
						    	console.log("response no");
						    }
						  });
						
						
						cnt = 1;	
					}
				}
			} else {
				$(".choiceSch").css("display","none");	
				console.log("예약일정이 없습니다!");
				// 카운트 초기화
				cnt = 0;
				// 데이터 초기화
				schDate = ["",""];
				console.log(schDate);
			}
		}); 
		
		// https://hermeslog.tistory.com/327 체크박스 checked
		$(document).on("click",".schTime", function () {
			if($(this).children("input").is(":checked")) {
				$(this).css("backgroundColor","red");
			} else {
				$(this).css("backgroundColor","white");
			}
		});
		
		$(".btn-payment").on("click", function () {
			// $(location).attr("href", "spacePayment?no=1");
			
			
			
		});
		
		
		
		
	}); // jquery end
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
					<c:forEach varStatus="status" var="item" items="${fn:split(detailSpace.sDetailsumnail, ',')}">
						<li>
							<img src="<c:url value='${item}'/>" alt="" />
						</li>					
					</c:forEach>
				</ul>
				<div class="progressBarContainer">
					<c:forEach varStatus="status" var="item" items="${fn:split(detailSpace.sDetailsumnail,',')}">
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
				<h3>공간 소개</h3>
				<div class="contents">
					${detailSpace.sLongintro}
				</div>
				<!-- <a href="">더보기</a> -->
			</section>
			<!-- 클래스 참고사항,공간 참고사항에 들어간다.  -->
			<!-- 클래스,공간 등록시 입력한 참고사항 데이터 형태 그대로 들어간다. 아래의 id="career" section을 참고하기  -->
			<section class="reference">
				<h3>참고사항</h3>
				<div class="contents">
					<span>${detailSpace.sReference}</span>
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
				<span>${detailSpace.sLoc}</span>
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
				<span>${detailSpace.sConvenient}</span>
			</section>


			<!-- 공간 대한 안전시설이 나와 있다. -->
			<section id="safety">
				<h3>안전시설</h3>
				<!-- 안전 시설에 대한 정보를 db에서 가지고 온다. -->
				<span>${detailSpace.sSafety}</span>

			</section>

		</section>



		<section id="right01">
			<!--title div에는 이름 칭호 경력이 들어간다.(공간,선생님,클래스)  -->
			<div class="title">
				<!-- 이름과 칭호가 들어간다.(칭호는 선생님만) -->
				<h2 class="t-title">
					<!-- 이름이 들어간다.(공간,선생님,클래스) -->
					<span class="name">${detailSpace.sName}</span>

				</h2>
				<!-- 한줄소개(선생님,공간,클래스),해시태그(클래스,공간),경력(선생님),나머지정보(선생님,공간,클래스) -->
				<div class="cont">
					<!-- 한줄소개(선생님,공간,클래스) -->
					<div class="shortIntro">${detailSpace.sShortintro}</div>

					<!-- 해쉬태그(공간,클래스)에 대한 정보가 들어온다.  -->
					<section class="hashTag">
						<!-- db에서 하나씩 가져오면 태그하나당 링크 하나로 처리한다. 링크를 클릭하면 검색페이지로 넘어간다. -->
						<c:forEach var="hashtag" items="${fn:split(detailSpace.sHashtag, ',')}">
							<a href="">#${hashtag}</a>					
						</c:forEach>
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
					class="otherInfoContents">${detailSpace.sTema}</span>

				</li>

				<!-- 위치(공간,클래스)가 들어간다. -->
				<li class="area">
					<!--  위와 동일한 css--> <strong class="otherInfoName">위치</strong> <!-- 위치가 들어간다. -->
					<span class="otherInfoContents">${detailSpace.sLoc}</span>

				</li>

				<!-- 모집(클래스),인원(공간)에 대한 정보  -->
				<li class="capacity">
					<!-- 위와 동일한 css --> <strong class="otherInfoName">인원</strong> <span
					class="otherInfoContents">${detailSpace.sCapacity}명</span>
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

					<div id="scheduleOn">
						<div class="datepicker-here" data-language="en"></div>
					</div>

				</div>
				<!-- 이걸 누르면 scheduleOn이 접힌다.접히게 되면 아이콘이 거꾸로 돌아간다. transform속성을 사용하자. -->
				<!-- <p>
					<a href="javascript:selectBody()">일정 접기 </a>
				</p> -->
				<form action="" method="get">
					<div class="choiceSch">
						<div class="schTitle">선택된 일정</div>
					
						
					</div>
				</form>
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