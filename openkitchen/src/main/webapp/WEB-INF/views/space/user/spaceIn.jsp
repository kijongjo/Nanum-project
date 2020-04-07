<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/contents.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/Header.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/footer.css'/>">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap" rel="stylesheet">

<link rel="stylesheet" href="<c:url value='/resources/css/index-slide.css'/>">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="<c:url value='/resources/js/jquery.bxslider.min.js'/>"></script>
<script src="<c:url value='/resources/js/index-slide.js'/>"></script>
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
							url : contextPath + '/moreS',
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
										contents0 = '<c:url value="'+ contextPath + item.sMainSumnail+ '"/>';
										contents1 = '<a href="#">';
										contents2 = '<img src="'+contents0+'">';
										contents3 = '<h4>' + item.sName	+ '</h4>';
										contents4 = '<p>' + item.sShortIntro+ '</p>';
										contents5 = '<span>' + item.sTema+ ' | </span>' + '<span>'+ item.sLoc + '</span>'+ '</a>';
										tag = contents1 + contents2	+ contents3 + contents4	+ contents5;
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
										contents0 = '<c:url value="'+ contextPath + item.sMainSumnail+ '"/>';
										contents1 = '<a href="#">';
										contents2 = '<img src="'+contents0+'">';
										contents3 = '<h4>' + item.sName	+ '</h4>';
										contents4 = '<p>' + item.sShortIntro+ '</p>';
										contents5 = '<span>' + item.sTema+ ' | </span>' + '<span>'+ item.sLoc + '</span>'+ '</a>';
										tag = contents1 + contents2	+ contents3 + contents4	+ contents5;
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
							error : function(errorThrown) {
								alert("통신 실패");
							}
						});
					})
		});

</script>
</head>
<body>
<%-- <h3>${list }</h3> --%>
	<jsp:include page="../../header.jsp" flush="false" />
    <div id="content">
        <div id="new-content" class="s-slide">
            <div>
                <h1>새로운 공간</h1>
            </div>
            <ul class="bxslider">
            	<c:forEach items="${list }" var="spaceIndex">
	                <li>
	                    <a href="#">
							<img src="<c:url value='${spaceIndex.sMainSumnail }'/>" alt="" />
	                        <h3>${spaceIndex.sName}</h3>
	                        <p>${spaceIndex.sShortIntro}</p>
	                        <div>
	                            <span>${spaceIndex.sTema}</span>
	                            <span class="info-sortation">${spaceIndex.sLoc}</span>
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
                <h2>공간</h2>
            </div>
            <ul>
            <c:forEach items="${mainContent }" var="mainS">
                <li>
                    <a href="#">
                		<img src="<c:url value='${mainS.sMainSumnail }'/>" alt="" />
                        <h3>${mainS.sName }</h3>
                        <p>${mainS.sShortIntro }</p>
                        <div>
                            <span>${mainS.sTema }</span>
                            <span>${mainS.sLoc }</span>
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