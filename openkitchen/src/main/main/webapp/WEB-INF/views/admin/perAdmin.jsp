<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portfolio - Dark Admin</title>
    <!-- jquery 사용 cdn -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- bootstrap js파일 -->
 <script type="text/javascript" src="<c:url value='/resources/js/bootstrap/bootstrap.min.js' />"></script>
 <!-- 부트스트랩 css 설정 -->
    <link rel="stylesheet" type="text/css" href=" <c:url value='/resources/css/bootstrap/bootstrap.min.css'/>" />
     <!--layout css 설정  -->
     <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/bootstrap/local.css'/>">
     <!-- 페이지 css 적용 -->
     <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/perAdmin.css'/>">
<!-- 폰트와 icon 적용 -->
    <script src="https://kit.fontawesome.com/e87b1eec4b.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+HK&display=swap" rel="stylesheet">
  
 
    
    

</head>

<body>

    <div id="wrapper">

        <!-- 헤더 -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- 로고파일 -->
                <a class="navbar-brand" href="adminIndex.html">
                   <img id="logo3" src="<c:url value='/resources/img/icon/logo3.png' />" alt="">
                </a>
            </div>

            <!-- 사이드바 -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul id="active" class="nav navbar-nav side-nav">
                    <li>
                        <p></p>
                        <h1>상태관리</h1>
                    </li>
                   <li>
                        <a href="<c:url value="/admin/in"/>">
                            <span class="selected"><i class="fa fa-bar-chart-o"></i> 사업그래프</span>
                        </a>
                    </li>
                    <li>
                    <a href="<c:url value="/admin/memberAdmin"/>"><span class="selected"><i class="fa fa-tasks"></i> 회원관리</span>
                    </a>
                    </li>
                    <li><a href="<c:url value="/admin/perAdmin"/>"><span class="selected"><i class="fa fa-globe"></i> 상태관리</span></a></li>
                    <!--   <li><a href="bootstrap-elements.html"><i class="fa fa-list-ul"></i> Bootstrap Elements</a></li>
                    <li><a href="bootstrap-grid.html"><i class="fa fa-table"></i> Bootstrap Grid</a></li> -->
                </ul>

                <!-- 헤더 사이드바 -->
                <ul class="nav navbar-nav navbar-right navbar-user">
                    <li>
                        <form class="navbar-search" id="searchBar">
                            <input type="text" placeholder="Search" class="form-control">
                        </form>
                    </li>
                    <li class="dropdown user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user fa-2x"></i> <b class="caret"></b></a>
                        <ul class="dropdown-menu">

                            <li><a href="#"><i class="fa fa-gear"></i> 공공의주방 이야기</a></li>
                            <li><a href="#"><i class="fa fa-gear"></i> 공지사항</a></li>
                            <li><a href="#"><i class="fa fa-gear"></i> 이벤트</a></li>
                            <li><a href="#"><i class="fa fa-gear"></i> 자주하는 질문</a></li>
                            <li><a href="#"><i class="fa fa-gear"></i> 공지사항</a></li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="fa fa-user"></i> 마이페이지</a></li>
                            <li><a href="#"><i class="fa fa-power-off"></i> 로그아웃</a></li>

                        </ul>
                    </li>
                    <li class="divider-vertical"></li>
                </ul>
            </div>
        </nav>

        <hr />
        <!-- 페이지의 내용 : 테이블 구성 + 팀 소개 +검색창 + selector -->
        <div class="container">

            <div>
                <!-- 검색창 -->
                <div class="ad_serch">
                    <input type="text">
                    <span class="iconify" data-icon="fe:search" data-inline="false"></span>
                </div>


                <!-- 정렬기능이다.  -->
                <div id="Sort">
                    <!-- 신청,보류,승인으로 정렬 할 수 있다. -->
                    <select id="sortStatus">
                        <option value="apply">신청</option>
                        <option value="nonallow">보류</option>
                        <option value="allow">승인</option>
                      
                    </select>
                    <!--  1개월 순 2개월 순 3개월 순 항목으로 정렬 할 수 있다. -->
                    <select id="sortMonth">
                        <option value="1month">1개월 순</option>
                        <option value="2month">2개월 순</option>
                        <option value="3month">3개월 순</option>
                      
                    </select>
                    <!-- 선생님 공간 클래스 항목으로 정렬 할 수 있다. -->
                    <select id="sortContents">
                        <option value="teacher">선생님</option>
                        <option value="class">클래스</option>
                        <option value="class">공간</option>
                      
                    </select>
                </div>

            </div>
            <!-- 팀소개 정보 -->
            <div id="teamIntro">
                <div>共享</div>
                <ul>
                    <li>팀 프로젝트</li>
                    <li>
                        <span>정용</span>
                        <span>우진</span>
                        <span>택수</span>
                        <span>경태</span>
                        <span>기종</span>
                    </li>
                    <li>주방 공유 &nbsp 쿠킹 클래스 플랫폼 사이트</li>

                </ul>
            </div>
            <table>
                <thead>
                    <!-- 해당 회원정보의 상세 페이지로 갈 수 있는 data 가지고 와서 name에 넣어준다." -->
                    <!-- tr 클릭시 상세 정보 보기로 넘어간다  -->
                    <tr name="">

                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>날짜</th>
                        <th>상태</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- 해당 회원정보의 상세 페이지로 갈 수 있는 data 가지고 와서 name에 넣어준다." -->
                    <!-- tr 클릭시 상세 정보 보기로 넘어간다  -->
                    <tr name="">

                        <td>47</td>
                        <td>이유의계절:봄-레몬파운드케익</td>
                        <td>이채원</td>
                        <td>2020.01.12</td>
                        <td>신청</td>
                    </tr>
                    <!-- 해당 회원정보의 상세 페이지로 갈 수 있는 data 가지고 와서 name에 넣어준다." -->
                    <!-- tr 클릭시 상세 정보 보기로 넘어간다  -->
                    <tr name="">

                        <td>92</td>
                        <td>내몸을 건강하게! 클렌즈주스</td>
                        <td>daniel</td>
                        <td>2020.02.01</td>
                        <td>보류</td>
                    </tr>
                    <!-- 해당 회원정보의 상세 페이지로 갈 수 있는 data 가지고 와서 name에 넣어준다." -->
                    <!-- tr 클릭시 상세 정보 보기로 넘어간다  -->
                    <tr name="">

                        <td>281</td>
                        <td>무설탕얼그레이스콘&수제딸기잼</td>
                        <td>경현재</td>
                        <td>2020.03.28</td>
                        <td>승인</td>
                    </tr>


                </tbody>
            </table>

        </div>
    </div>

</body>

</html>