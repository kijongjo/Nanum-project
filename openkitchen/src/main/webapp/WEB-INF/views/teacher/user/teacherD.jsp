<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="<c:url value='resources/css/reset.css'/>">
<link rel="stylesheet" href="<c:url value='resources/css/teacherD.css'/>">
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
	<script src="<c:url value='/resources/js/scrollMoving.js'/>"></script>
	<script src="<c:url value='/resources/js/teacherD.js'/>"></script>
	
    <title>Document</title>
  
</head>

<body>
<jsp:include page="../../header.jsp" flush="false" />
    <!-- /////////////////////////////////////공유하기 팝업창 시작//////////////////////////////////////////////// -->
    <!-- fixed로 고정되어 있는 wishlist 버튼이다. 기본값이 fixed였다가 scroll의 y값이 특정 위치에 가게되면
    이 버튼의 position 상태가 변화한다.-->
    <button class="btn-wishlist"></button>
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
                <img src="<c:url value='${detailTeacher.tDetailsumnail}'/>" alt="">
                <!-- share 링크 -->
                <div class="share">
                    <!-- a링크를 누르게 되면 공유 기능이 있는 div가 나온다  -->
                    <a href="#pop_share"></a>
                </div>

            </section>

        </section>



        <section id="left02">
            <!-- 클래스소개,공간소개,선생님소개 들어간다. -->
            <!-- 선생님 등록시 입력한 자기소개 형태 그대로 들어간다. 아래의 id="career" section을 참고하기 -->
            <section class="intro">
                <h3>선생님 소개</h3>
                <div class="contents">
                	<span>${detailTeacher.tLongintro}</span>
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
                             
                                <img src="<c:url value='resources/img/icon/mDefaultIcon.png'/>" alt="">
                            </figure>
                            <!-- 평가와 이름 적은 날짜가 온다. -->
                            <span class="memberInfo">
                                <!-- 평가 이모티콘 -->
                                <figure>
                                
                                <img src="<c:url value='resources/img/icon/smileIcon.png'/>" alt=""></figure><strong>추천해요!</strong>
                             <!--이름과 댓글 등록 날짜가 오게된다. -->
                                <span >
                                    신하림 
                                    <!--등록 날짜가 온다 -->
                                    <em>2020.03.25</em>
                                </span>
                            <p>
                                주스 외에 건강에 관해 여러가지 유익한 말씀도 해주시고 주스 실습때는 어려운 재료손질을 직접 해주시거나 부족한 재료를 바로 구해서 오셔서 정말 감사했어요. 소규모로 진행한 지라 서로에 대해 많은 얘기를 했는데 나와 다른 분야에 있는 사람들과 이야기를 나누는 경험이 특별했습니다. 카페같이 예쁜 장소에서 클렌즈 주스 수업을 듣고싶은 분께 정말 추천드려요!
                            </p>
                            <!-- 더보기 기능이 있는 a태그 -->
                            <a href="javascript:reviewOne(0)">더보기</a>
                            </span>
                        </div>


                    </li>
                    <li>
                        <!-- 클래스,공간,선생님에게 다는 댓글에서 회원의 사진,평가,이름,날짜가 들어온다. -->
                        <div class="reviewInfo">
                            <!-- 회원 이미지가 들어온다. -->
                            <figure>
                                <img src="<c:url value='resources/img/icon/mDefaultIcon.png'/>" alt="">
                            </figure>
                            <!-- 평가와 이름 적은 날짜가 온다. -->
                            <span class="memberInfo">
                                <!-- 평가 이모티콘 -->
                                <figure>
                                <img src="<c:url value='resources/img/icon/smileIcon.png'/>" alt=""></figure><strong>추천해요!</strong>
                             <!--이름과 댓글 등록 날짜가 오게된다. -->
                                <span >
                                    신하림 
                                    <!--등록 날짜가 온다 -->
                                    <em>2020.03.25</em>
                                </span>
                            <p>
                                주스 외에 건강에 관해 여러가지 유익한 말씀도 해주시고 주스 실습때는 어려운 재료손질을 직접 해주시거나 부족한 재료를 바로 구해서 오셔서 정말 감사했어요. 소규모로 진행한 지라 서로에 대해 많은 얘기를 했는데 나와 다른 분야에 있는 사람들과 이야기를 나누는 경험이 특별했습니다. 카페같이 예쁜 장소에서 클렌즈 주스 수업을 듣고싶은 분께 정말 추천드려요!
                            </p>
                            <!-- 더보기 기능이 있는 a태그 -->
                            <a href="javascript:reviewOne(1)">더보기</a>
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
                
            </section>
            <!-- 선생님,클래스,공간에 대한 환불정책이 나와 있다. -->
            <section class="refundPolicy">
                <div>
                <figure><img src="  <c:url value='resources/img/icon/refundPolicy1.png'/>" alt=""></figure>
                <figure><img src="  <c:url value='resources/img/icon/refundPolicy2.png'/>" alt=""></figure>
                <figure><img src="  <c:url value='resources/img/icon/refundPolicy3.png'/>" alt=""></figure>
                </div>
                <a href="javascript:refundPolicy()">펼치기</a>
            
            </section>
        </section>


        



        <section id="right01">
            <!--title div에는 이름 칭호 경력이 들어간다.(공간,선생님,클래스)  -->
            <div class="title">
                <!-- 이름과 칭호가 들어간다.(칭호는 선생님만) -->
                <h2 class="t-title">
                    <!-- 이름이 들어간다.(공간,선생님,클래스) -->
                    <span class="name">${detailTeacher.tHavenickname}</span>
                    <!-- 선생님 칭호가 들어간다.(선생님만) -->
                    <span id="category">${detailTeacher.tExpertname}</span>
                </h2>
                <!-- 한줄소개(선생님,공간,클래스),해시태그(클래스,공간),경력(선생님),나머지정보(선생님,공간,클래스) -->
                <div class="cont">
                    <!-- 한줄소개(선생님,공간,클래스) -->
                    <div class="shortIntro">
                        <span>${detailTeacher.tShortintro}</span>
                    </div>

                    <!-- 경력정보(선생님만) -->
                    <!-- 
                     공백도 같이 입력되도록 설정 즉 쓰는 대로 입력 되는 white-space기능을 넣었다.
                     지금은 보여주기 위해 어쩔 수 없이 text를 br과 조합해서 써놓았지만 선생님 등록시 작성하는 경력에서
                     쓰는 그대로 저장을 하게 되면 career section 태그에 저장된 그대로 보여지도록 설정 되어 있다.
                   
                   ex)
                     경력을
                    -경력1
                    -경력2
                    -경력3
                    -경력4
                    -경력5
                    -경력6
                       이러한 형식으로 쓰도록 만들고 저장할때도 형태를 유지한채로 저장되도록 만든다. 
                    -->
                    <section id="career">
                    	<span>${detailTeacher.tCareer }</span>
                    </section>
                </div>
            </div>
            <!-- 테마(선생님,공간),위치(공간,클래스),인원(공간,클래스),활동지역(선생님)-->
            <ul class="otherInfo">
                <!-- 테마 정보(선생님,공간)가 들어간다. -->
                <li id="theme">
                    <!-- 테마,위치,인원,활동지역이라는 이름이 들어간다. -->
                    <strong class="otherInfoName">테마</strong>
                    <!-- 테마,위치,인원,활동지역의 내용이 들어가게 된다. 만약 주어진 너비를 넘어가게 되면 ...으로 표시한다.-->
                    <c:forEach var="expert" items="${fn:split(detailTeacher.tExpert, ',')}">
	                    <span class="otherInfoContents">${expert}</span>                
                    </c:forEach>
                </li>

                <!-- 활동지역(선생님만)이 들어간다. -->
                <li id="area">
                    <!-- 활동지역 위와 동일한 css-->
                    <strong class="otherInfoName">지역</strong>
                    <!-- 선생님 활동 지역에 대한 정보를 가지고 오자 어느 지역인지 어느 구인지 따로 DB에 저장 되어 있어 
                        SPAN을 나누었음 -->
                    <span class="otherInfoContents">${detailTeacher.tArea}</span>
                </li>


            </ul>
        </section>

    </div>
    <jsp:include page="../../footer.jsp" flush="false" />
</body>

</html>