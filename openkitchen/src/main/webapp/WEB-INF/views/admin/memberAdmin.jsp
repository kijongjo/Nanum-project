<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="UTF-8">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portfolio - Dark Admin</title>
    <!-- jquery 쓰기  -->
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
       <!-- 부트스트랩  -->
   <script type="text/javascript" src="<c:url value='resources/js/bootstrap/bootstrap.min.js' />"></script>
     <!-- 부트 스트랩 css 첫번째에 두기  -->
    <link rel="stylesheet" type="text/css" href=" <c:url value='resources/css/bootstrap/bootstrap.min.css'/>" />
     <!-- layout 뼈대 css 두번째에 두기 -->
     <link rel="stylesheet" type="text/css" href="<c:url value='resources/css/bootstrap/local.css'/>">
    <!-- memberAdmin 페이지 css 세번째에 두기 -->
    <link rel="stylesheet" type="text/css" href="<c:url value='resources/css/memberAdmin.css'/>">
    <!-- 폰트 가지고오기 -->
    <script src="https://kit.fontawesome.com/e87b1eec4b.js" crossorigin="anonymous"></script>
    <!-- 구글 폰트 사용하기  -->
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
                <a class="navbar-brand" href="adminIndex.html">
                   <img id="logo3" src="<c:url ref='img/icon/logo3.png' />" alt="">
                </a>
            </div>

            <!-- 사이드바 -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul id="active" class="nav navbar-nav side-nav">
                    <li>
                        <p></p>
                        <h1>회원관리</h1>
                    </li>
                   <li>
                        <a href="adminIndex">
                            <span class="selected"><i class="fa fa-bar-chart-o"></i> 사업그래프</span>
                        </a>
                    </li>
                    <li>
                    <a href="memberAdmin"><span class="selected"><i class="fa fa-tasks"></i> 회원관리</span>
                    </a>
                    </li>
                    <li><a href="perAdmin"><span class="selected"><i class="fa fa-globe"></i> 상태관리</span></a></li>
                    <!--  <li><a href="bootstrap-elements.html"><i class="fa fa-list-ul"></i> Bootstrap Elements</a></li>
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
        <!-- 팀프로젝트 소개에 대한 내용이 나오게 됩니다. -->



        <div class="container">

            <div>
                <div class="ad_serch">
                    <input type="text">
                    <span class="iconify" data-icon="fe:search" data-inline="false"></span>
                </div>

                <!-- 정렬기능이다.  -->
                <div id="Sort">
                    <!-- 회원등급, 날짜 2개 항목으로 정렬 할 수 있다. -->
                    <select id="sortMember">
                            <option value="회원등급">회원등급</option>
                            <option value="날짜">날짜</option>
                          
                        </select>
                </div>

            </div>
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

            <!-- 테이블 시작 -->
            <table>
                <thead>
                    <tr>
                        <th><input type="checkbox" name="" class="tableCheckbox"></th>
                        <th>아이디</th>
                        <th>이름</th>
                        <th>폰번호</th>
                        <th>생년월일</th>
                        <th>회원등급</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th><input type="checkbox" name="" class="tableCheckbox"></th>
                        <td>sunday1123</td>
                        <td>조승원</td>
                        <td>010-3379-1123</td>
                        <td>1994.10.12</td>
                        <td>선생님</td>
                    </tr>
                    <tr>
                        <th><input type="checkbox" name="" class="tableCheckbox"></th>
                        <td>z1t1ccc</td>
                        <td>김진아</td>
                        <td>010-7883-9899</td>
                        <td>1987.03.27</td>
                        <td>호스트</td>
                    </tr>
                    <tr>
                        <th><input type="checkbox" name="" class="tableCheckbox"></th>
                        <td>monthely99</td>
                        <td>원재영</td>
                        <td>010-3788-2221</td>
                        <td>1968.06.01</td>
                        <td>회원</td>
                    </tr>
                    <tr>
                        <th><input type="checkbox" name="" class="tableCheckbox"></th>
                        <td>gjwo991</td>
                        <td>박허재</td>
                        <td>011-211-7183</td>
                        <td>1972.08.01</td>
                        <td>호스트</td>
                    </tr>


                </tbody>
            </table>



        </div>
    </div>

</body>

</html>