<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='/resources/css/Header.css'/>">
<link rel="stylesheet"
	href="<c:url value='/resources/css/MainSlider.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/index.css'/>">
<link rel="stylesheet"
	href="<c:url value='/resources/css/index-slide.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/footer.css'/>">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap"
	rel="stylesheet">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="<c:url value='/resources/js/jquery.bxslider.min.js'/>"></script>
<script src="<c:url value='/resources/js/index-slide.js'/>"></script>

<style>
	.mcdetail {
		cursor:pointer;
	}
</style>
<script>
$(document).ready(function () {
	var $mcdetail = $(".mcdetail");
	var $frm = $(".frm");
	
	/* 동적으로 생성된 태그에 이벤트 발생하기 위한 방법  */
	$(document).on("click", ".mcdetail",function () {
		
		$frm.submit();
		
	});
});
</script>
<script>
/*!! 문제점: js파일로 따로 빼버리면 img주소에 contextPath 주소를 넣을 때 오류가 발생함. 아직 해결 못했음.  */
//이미지를 불러와 주소를 입력할 때 contextPath(project명)을 붙여줘야한다. 그 contextPath를 불러오는 기능
var contextPath ='${pageContext.request.contextPath}';
//모듈: Spring controller에서 db 데이터를 불러와 버튼 클릭시 데이터를 비동기 방식으로 추가한다.

//html 코드를 입력할 변수 선언
var contents0, contents1, contents2, contents3, contents4, contents5, contents6, contents7, contents8;

//jQuery의 성능 향상을 위한 frag 사용
var $frag = $(document.createDocumentFragment());
//ajax 요청 멈추기위한 변수 설정
var rtn = false;
//html의 특정 태그 요소보다 script 위치가 위에 있을경우 document.ready를 쓴다.
$(document).ready(function() {
			// 버튼 클릭시 특정 function 작용
			$("#showMoreInfo").on("click", function() {
						// ajax 요청
						$.ajax({
							// 보낼 요청 값 contextPath를 적어주어야한다. (/openkitchen/test) 양식
							url : contextPath + '/test',
							/* get은 되는데 왜 post는 안됨? 모르겟음 */
							/* post는 sercurity때문에 그런것으로 예상 */		
							type : 'GET',
							// 더보기 요청시 몇개 씩 가져올지 결정 하자 .
							data : {
								count : 8
							},
							// 요청 성공시 function 작용
							success : function(data) {
								// 받아온 JSON 사용하기 위한 변수 선언
								var obj = JSON.parse(data);
								// JSON에 담긴 내용을 console창에서 봄
								console.log(obj);
								console.log(obj.length);
								// JSON이 배열 형태로 넘어올경우 넘어오는 데이터마다 HTML 코드를 붙이는 역할
								
								obj.forEach(function(item) {
											contents0 = '<c:url value="'
													+ contextPath + item.cMainsumnail
													+ '"/>';
											contents1 = '<form action="classD" class="frm" method="post">';
											contents2 = '<input type="hidden" name="cno" value="'+ item.cNo +'" />';
											/* contetns3 = '<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />'; */
											contents4 = '<img src="'
													+contents0+'" id="mcimg">';
											contents5 = '<h4>' + item.cName
													+ '</h4>';
											contents6 = '<p>' + item.cShortintro
													+ '</p>';
												
											contents7 = '<div><span>' + item.cTema
													+ ' </span>' + '<span>'
													+ item.tArea + ' </span>'
													+ '<span>앵콜</span></div>';
													/* 역슬래시 특수문자료 표기되서 \\ 2개 해줘야 된다.  */
											contents8 = '<div class="Price"><strong>\\</strong> '+item.cPrice+'</div></form>';
											tag = contents1 + contents2
													+  contents4
													+ contents5 + contents6 + contents7 + contents8;
											// frag에 먼저 append 함.
											$frag.append('<li class="mcdetail">' + tag + '</li>')
													
										});
								// 최종적인 값을 append 함.
								$("#all-content>ul").append($frag);
								// 요청 정지
								return rtn;
							},
							error : function(errorThrown) {
								alert("통신 실패");
							}
						});
					})
		});

</script>


<style>
	.slide-wrapper {
		position: relative;
	} 
</style>
</head>
<body>
	<jsp:include page="header.jsp" flush="false" />



	<!-- Main -->
	<div id="main-slider">
		<ul class="bxslider1">
			<li><img
				src="<c:url value='/resources/img/testimg/test1.jpg'/>"
				alt="slide01"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test2.jpg'/>"
				alt="slide02"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test3.jpg'/>"
				alt="slide03"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test4.jpg'/>"
				alt="slide04"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test5.jpg'/>"
				alt="slide05"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test6.jpg'/>"
				alt="slide06"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test7.jpg'/>"
				alt="slide07"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test8.jpg'/>"
				alt="slide08"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test9.jpg'/>"
				alt="slide09"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test10.jpg'/>"
				alt="slide10"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test11.jpg'/>"
				alt="slide11"></li>
			<li><img
				src="<c:url value='/resources/img/testimg/test12.jpg'/>"
				alt="slide12"></li>
		</ul>
	</div>


	<section>
		<div id="item01">
			<div class="itemTitle">
				<h2>남택수님,</h2>
				<h2>어떤 클래스를 찾으시나요?</h2>
			</div>
			<ul>
				<li><a href="classIn"> <img
						src="<c:url value='/resources/img/testimg/img-view_class.jpg'/>"
						alt="Class">
				</a></li>
				<li><a href="teacherIn"> <img
						src="<c:url value='/resources/img/testimg/img-view_teacher.jpg'/>"
						alt="teacher">
				</a></li>
				<li><a href="spaceIn"> <img
						src="<c:url value='/resources/img/testimg/img-view_place.jpg'/>"
						alt="place">
				</a></li>
			</ul>
		</div>


		<!-- 베스트 클래스 -->
		<div id="item02" class="slideItem">
			<div class="slide-wrapper">
				<div class="itemTitle">
					<h2>베스트 클래스</h2>
				</div>
				<ul class="bxslider">
					<li><a href="#"> <img
							src="<c:url value='/resources/img/testimg/test1.jpg'/>"
							alt="">
							<h4>자타공인밥도둑, 매콤꽃게무침</h4>
							<div>
								<span>한식</span> <span>경기도 용인시</span> <span>3월~5월</span>
							</div>
							<div class="Price">
								<strong>\</strong> 46,200
							</div>
					</a></li>
					<!-- 테스트용 복사 -->
					<li><a href="#"> <img
							src="<c:url value='/resources/img/testimg/test2.jpg'/>"
							alt="">
							<h4>자타공인밥도둑, 매콤꽃게무침</h4>
							<div>
								<span>한식</span> <span>경기도 용인시</span> <span>3월~5월</span>
							</div>
							<div class="Price">
								<strong>\</strong> 46,200
							</div>
					</a></li>
					<li><a href="#"> <img
							src="<c:url value='/resources/img/testimg/test3.jpg'/>"
							alt="">
							<h4>노오븐'쌀'츄러스</h4>
	                        <div>
	                            <span>베이킹</span>
	                            <span>경기도 김포시</span>
	                            <span>3월 1회 진행</span>
	                        </div>
	                        <div class="Price">
	                            <strong>\</strong> 10,000
	                        </div>
	                    </a>
	                </li>
	                <li>
	                    <a href="#">
	                        <img src="<c:url value='/resources/img/testimg/test4.jpg'/>" alt="">
	                        <h4>노오븐'쌀'츄러스</h4>
	                        <div>
	                            <span>베이킹</span>
	                            <span>경기도 김포시</span>
	                            <span>3월 1회 진행</span>
	                        </div>
	                        <div class="Price">
	                            <strong>\</strong> 10,000
	                        </div>
	                    </a>
	                </li>
	                <!-- 테스트 복사 끝 -->
	            </ul>
            </div>
        </div>


        <div id="item03" class="slideItem">
        <div class="slide-wrapper">
            <div class="itemTitle">
                <h2>가화만사성, 만(滿)원의클래스</h2>
            </div>
            <ul class="bxslider">
               	<c:forEach var="mc" items="${manwonClass}">
		                <li class="mcdetail">
                 		   <form action="classD" class="frm" method="post">
		                       <input type="hidden" name="cno" value="${mc.cNo}" />
		                       <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" /> 
			                       <img src="<c:url value='${mc.cMainsumnail}'/>" alt="이미지" id="mcimg">
			                        <h4>${mc.cName}</h4>
			                        <div>
			                            <span>${mc.cTema}</span>
			                            <span>${mc.tArea}</span>
			                            <span>3월 1회 진행</span>
			                        </div>
			                        <div class="Price">
			                            <strong>\</strong> ${mc.cPrice}
			                        </div>
                    		</form>
		                </li>
                </c:forEach>
                <!-- 테스트용 복사 -->
                <%-- <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test2.jpg'/>" alt="">
                        <h4>노오븐'쌀'츄러스</h4>
                        <div>
                            <span>베이킹</span>
                            <span>경기도 김포시</span>
                            <span>3월 1회 진행</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong> 10,000
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test3.jpg'/>" alt="">
                        <h4>노오븐'쌀'츄러스</h4>
                        <div>
                            <span>베이킹</span>
                            <span>경기도 김포시</span>
                            <span>3월 1회 진행</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong> 10,000
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test4.jpg'/>" alt="">
                        <h4>노오븐'쌀'츄러스</h4>
                        <div>
                            <span>베이킹</span>
                            <span>경기도 김포시</span>
                            <span>3월 1회 진행</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong> 10,000
                        </div>
                    </a>
                </li>   --%>
                <!-- 테스트 복사 끝 -->
            </ul>
            </div>
        </div>


        <div id="item04" class="slideItem">
        <div class="slide-wrapper">
            <div class="itemTitle">
                <h2>단 1명이라도 열리는, 동시모집</h2>
            </div>
            <ul class="bxslider">
            	<c:forEach var="ooc" items="${OnlyOneClass}">
		                <li class="mcdetail">
                 		   <form action="classD" class="frm" method="post">
		                       <input type="hidden" name="cno" value="${ooc.cNo}" />
		                       <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" /> 
			                       <img src="<c:url value='${ooc.cMainsumnail}'/>" alt="이미지" id="mcimg">
			                        <h4>${ooc.cName}</h4>
			                        <div>
			                            <span>${ooc.cTema}</span>
			                            <span>${ooc.tArea}</span>
			                            <span>3월 1회 진행</span>
			                        </div>
			                        <div class="Price">
			                            <strong>\</strong> ${ooc.cPrice}
			                        </div>
                    		</form>
		                </li>
                </c:forEach>
                <%-- <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="">
                        <h4>불타는 금요일에 쿡맥하자!</h4>
                        <div>
                            <span>세계요리</span>
                            <span>경기도 안양시</span>
                            <span>3월~4월</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong> 49,500
                        </div>
                    </a>
                </li>
                <!-- 테스트용 복사 -->
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test2.jpg'/>" alt="">
                        <h4>불타는 금요일에 쿡맥하자!</h4>
                        <div>
                            <span>세계요리</span>
                            <span>경기도 안양시</span>
                            <span>3월~4월</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong> 49,500
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test3.jpg'/>" alt="">
                        <h4>불타는 금요일에 쿡맥하자!</h4>
                        <div>
                            <span>세계요리</span>
                            <span>경기도 안양시</span>
                            <span>3월~4월</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong> 49,500
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test4.jpg'/>" alt="">
                        <h4>불타는 금요일에 쿡맥하자!</h4>
                        <div>
                            <span>세계요리</span>
                            <span>경기도 안양시</span>
                            <span>3월~4월</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong> 49,500
                        </div>
                    </a>
                </li> --%>
                <!-- 테스트용 복사 끝 -->
            </ul>
            </div>
        </div>


        <!-- 광고 이미지 -->
        <div id="Event-AD">
            <img src="<c:url value='/resources/img/testimg/testbanner.jpg'/>" alt="">
        </div>


        <!-- 오늘의 기획전 -->
        <div id="item05" class="slideItem">
        <div class="slide-wrapper">
            <div class="itemTitle">
                <h2>오늘의 기획전</h2>
            </div>
            <ul class="bxslider">
                <li>
                    <a href="#">
                    	<img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="">
                        <h4>집밥처럼 든든한 금손들의 도시락</h4>
                        <p>좋아하는 메뉴로 도시락을 채워봅시다! 곰손도 금손처럼 만들 수 있어요</p>
                        <div class="hashtag">
                            <div>#맛과 비주얼</div>
                            <div>#모두 잡았어요</div>
                            <div>#금손도시락</div>
                            <div>#든든해요</div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                    <img src="<c:url value='/resources/img/testimg/test2.jpg'/>" alt="">
                        <h4>디저트 배는 따로 있잖아요?</h4>
                        <p>배가 불러도 디저트는 꼭 드시는 분들은 주목하세요</p>
                        <div class="hashtag">
                            <div>#디저트배는</div>
                            <div>#따로있으니까</div>
                            <div>#기분좋은단맛</div>
                            <div>예술적디저트</div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test3.jpg'/>" alt="">
                        <h4>지금 꼭 먹어야 할 제철요리</h4>
                        <p>재료의 풍미를 끌어 올려주는 특별한 레시피로 제철요리를 맘껏 즐겨봅시다</p>
                        <div class="hashtag">
                            <div>#지금이가장</div>
                            <div>#맛있는메뉴</div>
                            <div>#이달의재료는</div>
                            <div>#딸기입니다</div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="<c:url value='/resources/img/testimg/test4.jpg'/>" alt="">
                        <h4>지금 꼭 먹어야 할 제철요리</h4>
                        <p>재료의 풍미를 끌어 올려주는 특별한 레시피로 제철요리를 맘껏 즐겨봅시다</p>
                        <div class="hashtag">
                            <div>#지금이가장</div>
                            <div>#맛있는메뉴</div>
                            <div>#이달의재료는</div>
                            <div>#딸기입니다</div>
                        </div>
                    </a>
                </li>
            </ul>
            </div>
        </div>


        <!-- 인기 클래스 -->
        <div id="all-content">
            <div class="itemTitle">
                <h2>인기 클래스</h2>
            </div>
            <ul>
            	<c:forEach var="mc" items="${popularClass}">
		                <li class="mcdetail">
                 		   <a href="classD?no=${mc.cNo}">
		                       <input type="hidden" name="cno" value="${mc.cNo}" />
		                       <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" /> 		                    
		                       <img src="<c:url value='${mc.cMainsumnail}'/>" alt="이미지" id="mcimg">
		                        <h4>${mc.cName}</h4>
		                        <p>${mc.cShortintro}</p>
		                        <div>
		                            <span>${mc.cTema}</span>
		                            <span>${mc.tArea}</span>
		                            <span>앵콜</span>
		                        </div>
		                        <div class="Price">
		                            <strong>\</strong> ${mc.cPrice}
		                        </div>		                    
                    		</a>
		                </li>
                </c:forEach> 
               <%--  <li>
                    <a href="#">
                    	<img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="">
                        <h4>향 은은 얼그레이 초코쿠키</h4>
                        <p>얼그레이 초코 쿠키 만들기와 모카포트를 이요한 커피 내리기 과정이 진행됩니다.</p>
                        <div>
                            <span>베이킹</span>
                            <span>서울특별시 송파구</span>
                            <span>앵콜</span>
                        </div>
                    </a>
                </li> --%>
                <!-- 테스트용 복사코드-->
            </ul>
        </div>

        <button class="moreInfo" id="showMoreInfo">
            더 많은 클래스가 궁금하다면?
            <img src='<c:url value='/resources/img/icon/ico-more.png'/>' alt="more">
        </button>
    </section>
    <jsp:include page="footer.jsp" flush="false" />
</body>
</html>