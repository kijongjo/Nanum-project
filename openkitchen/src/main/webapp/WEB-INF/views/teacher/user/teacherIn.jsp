<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- <script src="<c:url value='/resources/js/jquery.bxslider.min.js'/>"></script>
<script src="<c:url value='/resources/js/index-slide.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/resources/css/index-slide.css'/>"> --%>

<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/contents.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/Header.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/footer.css'/>">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap" rel="stylesheet">

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- slick 슬라이더 css 추가  -->
<link rel="stylesheet" href="<c:url value='/resources/css/slick.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/slick-theme.css'/>">
<!-- slick 슬라이드 커스텀 css  -->
<link rel="stylesheet" href="<c:url value='/resources/css/main-slick.css'/>">
<!-- slick 슬라이더 js 추가  -->
<script src="<c:url value='/resources/js/slick.js'/>"></script>
<script src="<c:url value='/resources/js/main-slick.js'/>"></script>

<script>
/*!! 문제점: js파일로 따로 빼버리면 img주소에 contextPath 주소를 넣을 때 오류가 발생함. 아직 해결 못했음.  */
//이미지를 불러와 주소를 입력할 때 contextPath(project명)을 붙여줘야한다. 그 contextPath를 불러오는 기능
var contextPath ='${pageContext.request.contextPath}';
//모듈: Spring controller에서 db 데이터를 불러와 버튼 클릭시 데이터를 비동기 방식으로 추가한다.

//html 코드를 입력할 변수 선언
var contents0, contents1, contents2, contents3, contents4, contents5;

//jQuery의 성능 향상을 위한 frag 사용
var $frag = $(document.createDocumentFragment());
//ajax 요청 멈추기위한 변수 설정
var rtn = false;
var a = 1;
//html의 특정 태그 요소보다 script 위치가 위에 있을경우 document.ready를 쓴다.
$(document).ready(
		function() {
			console.log("contextPath : " + contextPath);
			// 버튼 클릭시 특정 function 작용
			$("#showMoreInfo").on("click",function() {
				a = a+1;
						// ajax 요청
						$.ajax({
							// 보낼 요청 값 contextPath를 적어주어야한다.
							url : contextPath + '/moreT',
							/* get은 되는데 왜 post는 안됨? 모르겟음 */
							type : 'GET',
							// 더보기 요청시 몇개 씩 가져올지 결정 하자 .
							data : {
								count : $("#showMoreInfo").val()
							},
							// 요청 성공시 function 작용
							success : function(data) {
								// 받아온 JSON 사용하기 위한 변수 선언
								var obj = JSON.parse(data);
								// JSON에 담긴 내용을 console창에서 봄
								// console.log(obj);
								// console.log(obj[0]);
								// console.log(obj.length);
								if(obj.length < 7){
									obj.forEach(function(item) {
										console.log("item : " + item);
										contents0 = '<c:url value="'+ contextPath + item.tMainSumnail+ '"/>';
										contents1 = '<a href="#">';
										contents2 = '<img src="'+contents0+'">';
										contents3 = '<h3>' + item.tHaveNickName+'<span class="expert-name">   '+item.tExpertName+ '</span></h3>';
										contents4 = '<p>' + item.tShortIntro+ '</p>';
										contents5 = '<span>' + item.cTema+ ' | </span>' + '<span>'+ item.tArea + '</span>'+ '</a>';
											tag = contents1 + contents2
													+ contents3 + contents4
													+ contents5 ;
											// frag에 먼저 append 함.
											$frag.append('<li>' + tag+ '</li>')
										});
									// 최종적인 값을 append 함.
									$("#all-content>ul").append($frag);
									$("#showMoreInfo").css("display","none");
									//alert("더이상 보여줄 게 없음");
								}else{
								// JSON이 배열 형태로 넘어올경우 넘어오는 데이터마다 HTML 코드를 붙이는 역할
								obj.forEach(function(item) {
										
									console.log("item : " + item);
									contents0 = '<c:url value="'+ contextPath + item.tMainSumnail+ '"/>';
									contents1 = '<a href="#">';
									contents2 = '<img src="'+contents0+'">';
									contents3 = '<h3>' + item.tHaveNickName+'<span class="expert-name">   '+item.tExpertName+ '</span></h3>';
									contents4 = '<p>' + item.tShortIntro+ '</p>';
									contents5 = '<span>' + item.cTema+ ' | </span>' + '<span>'+ item.tArea + '</span>'+ '</a>';
											tag = contents1 + contents2
													+ contents3 + contents4
													+ contents5 ;
											// frag에 먼저 append 함.
											$frag.append('<li>' + tag+ '</li>')
										});
								// 최종적인 값을 append 함.
								$("#all-content>ul").append($frag);
								$("#showMoreInfo").val(a);
								// 요청 정지
								return rtn;
								}
							},
							error:function(request,status,error){
						        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
						       }
						});
					})
		});

</script>
	<jsp:include page="../../headerScript.jsp" flush="false" />
</head>
<body>
	<jsp:include page="../../header.jsp" flush="false" />
    <div id="content">
        <div id="new-content" class="slideItem">
            <div>
                <h1>새로운 선생님</h1>
            </div>
            <ul class="slider1 t-slide">
            	<c:forEach var="NewTeacher" items="${list }">
	                <li>
	                    <a href="teacherD?no=${NewTeacher.tNo}">
							<img src="<c:url value='${NewTeacher.tMainSumnail }'/>" alt="" />
	                        <h3>${NewTeacher.tHaveNickName } <span class="expert-name">${NewTeacher.tExpertName}</span></h3>
	                        <p>${NewTeacher.tShortIntro}</p>
	                        <div>
	                            <span>${NewTeacher.cTema}</span>
	                            <span class="info-sortation">${NewTeacher.tArea}</span>
	                        </div>
	                    </a>
	                </li>
                </c:forEach>
                
            </ul>
        </div>
		<div>
            <a href="#">
                <img src="<c:url value='/resources/img/testimg/testbanner.jpg'/>" alt="" />
            </a>
        </div>

        <div id="all-content">
            <div class="itemTitle">
                <h2>선생님</h2>
            </div>
            <ul>
                <c:forEach items="${mainContent }" var="mainT">
                <li>
                    <a href="teacherD?no=${mainT.tNo}">
                		<img src="<c:url value='${mainT.tMainSumnail }'/>" alt="" />
                        <h3>${mainT.tHaveNickName } <span class="expert-name">${mainT.tExpertName }</span></h3>
                        <p>${mainT.tShortIntro }</p>
                        <div>
                            <span>${mainT.cTema }</span>
                            <span>${mainT.tArea }</span>
                            <span>수업중</span>
                        </div>
                    </a>
                </li>
               </c:forEach>
            </ul>
        </div>
        <button class="moreInfo" id="showMoreInfo" value="1">
            더 많은 클래스가 궁금하다면?
            <img src='<c:url value='/resources/img/icon/ico-more.png'/>' alt="more">
        </button>
         </div>
    <jsp:include page="../../footer.jsp" flush="false" />
</body>
</html>