<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
							url : contextPath + '/moreC',
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
											contents0 = '<c:url value="'
													+ contextPath + item.cMainsumnail
													+ '"/>';
											contents1 = '<a href="#">';
											contents2 = '<img src="'
													+contents0+'">';
											contents3 = '<h4>' + item.cName
													+ '</h4>';
											contents4 = '<p>' + item.cShortIntro
													+ '</p>';
											contents5 = '<span>' + item.cTema
													+ ' | </span>' + '<span>'
													+ item.tArea + '</span>'
													+ '</a>';
											contents6 = '<div><strong>₩</strong>'+item.cPrice+'</div>';
											tag = contents1 + contents2
													+ contents3 + contents4
													+ contents5 + contents6;
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
										//console.log(item[0].cName);
										//console.log(item[0].shortIntro);
										//console.log(item[0].expert);
											contents0 = '<c:url value="'
													+ contextPath + item.cMainsumnail
													+ '"/>';
											contents1 = '<a href="#">';
											contents2 = '<img src="'
													+contents0+'">';
											contents3 = '<h4>' + item.cName
													+ '</h4>';
											contents4 = '<p>' + item.cShortIntro
													+ '</p>';
											contents5 = '<span>' + item.cTema
													+ ' | </span>' + '<span>'
													+ item.tArea + '</span>'
													+ '</a>';
											contents6 = '<div><strong>₩</strong>'+item.cPrice+'</div>';
											tag = contents1 + contents2
													+ contents3 + contents4
													+ contents5 + contents6;
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
<jsp:include page="../../headerScript.jsp" flush="false" />
</head>
<body>
	<jsp:include page="../../header.jsp" flush="false" />
    <div id="content">
        <div id="new-content" class="c-slide">
            <div>
                <h1>새로운 클래스</h1>
            </div>
            <ul class="bxslider">
               	<c:forEach var="classfive" items="${list}">
	                <li>
	                    <a href="#">
							<img src=<c:url value="${classfive.cMainsumnail }"/> alt="" />
	                        <h3> ${classfive.cName }</h3>
	                        <p>${classfive.cShortIntro }</p>
	                        <div>
	                            <span>${classfive.cTema}</span>
	                            <span>${classfive.tArea}</span>
	                            <span>4월6회 진행</span>
	                        </div>
	                        <div class="Price">
	                            <strong>\</strong><fmt:formatNumber value="${classfive.cPrice}" groupingUsed="true" />
	                        </div>
	                    </a>
	                </li>
                </c:forEach>
            </ul>
        </div>

		<!-- 배너 부분 -->
        <div>
            <a href="#">
                <img src="<c:url value='/resources/img/testimg/testbanner.jpg'/>" alt="">
            </a>
        </div>

		<!-- 메인 컨텐츠  -->
        <div id="all-content">
            <div class="itemTitle">
                <h2>클래스</h2>
            </div>
            <ul>
           	<c:forEach items="${mainContent }" var="mainC">
                <li>
                    <a href="classD?no=${mainC.cNo }">
                		<img src="<c:url value='${mainC.cMainsumnail }'/>" alt="">
                        <h4>${mainC.cName }</h4>
                        <p>${mainC.cShortIntro }</p>
                        <div>
                            <span>${mainC.cTema }</span>
                            <span>${mainC.tArea }</span>
                            <span>진행중</span>
                        </div>
                        <div class="Price">
                            <strong>\</strong><fmt:formatNumber value="${mainC.cPrice }" groupingUsed="true" />
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