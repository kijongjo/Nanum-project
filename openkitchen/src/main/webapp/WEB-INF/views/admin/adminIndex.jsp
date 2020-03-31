<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
<html lang="en">
                       
                        
                      
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Dark Admin</title>
    <!-- 부트스트랩 css와 js 첫번째에 두기-->
    <link rel="stylesheet" type="text/css" href=" <c:url value='resources/css/bootstrap/bootstrap.min.css'/>" />
      <!-- layout 뼈대 css  두번째에 두기  -->
    <link rel="stylesheet" type="text/css" href="<c:url value='resources/css/bootstrap/local.css'/>">
    <!-- adminIndex css  세번째에 두기 -->
    <link rel="stylesheet" href=" <c:url value='resources/css/adminIndex.css'/>"/>
   
   
    <!-- jquery 불러오기 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    <script type="text/javascript" src="<c:url value='resources/js/bootstrap/bootstrap.min.js'/>"></script>
    
    <!-- 글자종류 link -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap" rel="stylesheet">
    <!-- fontawesome icon링크 -->
    <script src="https://kit.fontawesome.com/e87b1eec4b.js" crossorigin="anonymous"></script>
    <!-- font 설정 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+HK&display=swap" rel="stylesheet">

    <!-- 그래프 사용 -->
    <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" />
    <link id="gridcss" rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/dark-bootstrap/all.min.css" />
    <script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
    <script type="text/javascript" src="http://www.prepbootstrap.com/Content/js/gridData.js"></script>
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
                
                <a class="navbar-brand" href="adminIndex">
                    <img src="<c:url value='resources/img/icon/logo3.png' />" alt="">
                   
                </a>
            </div>

            <!-- 사이드바 -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul id="active" class="nav navbar-nav side-nav">
                    <li>
                        <p></p>
                        <h1>사업그래프</h1>
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
                    <!-- <li><a href="bootstrap-elements.html"><i class="fa fa-list-ul"></i> Bootstrap Elements</a></li>
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user fa-2x"></i> <b class="caret "></b></a>
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
        <!-- 컨텐츠 -->
        <div id="page-wrapper">

            <div class="row">
                <div class="col-md-12">
                    <!-- 이부분부터 그래프 part이다.  -->
                    <div class="panel panel-primary">
                        <!-- 매출현황에 대한 그래프  -->
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 매출현황</h3>
                        </div>
                        <div class="panel-body">
                            <!-- 첫번째 차트로써 매출현황에 대해 나온다. -->
                            <div id="income-graph"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">

                    <div class="panel panel-primary">
                        <!-- 회원현황에 대한 원그래프 -->
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 회원현황</h3>
                        </div>
                        <!-- 그래프 표현 -->
                        <div class="panel-body">
                            <!-- shieldui-chart2 그래프를 사용함 -->
                            <div id="member-graph"></div>
                        </div>
                    </div>
                </div>

                <!-- 회원 비율을 텍스트로 표현하기  -->
                <!-- 제목 MemberRate를 줄여 MR로 표기 -->
                <div class="col-md-8" id="MR-panel">

                    <span id="MR-title">MemberRate</span>
                    <div class="panel panel-primary">
                        <div id="MR-total"><strong>총 회원 수</strong><span>4,321</span></div>
                        <div id="MR-family">
                            <div id="MR-member"><strong>멤버 수</strong><span>3,321</span>
                                <p>80% </p>
                            </div>
                            <div id="MR-teacher"><strong>선생님 수</strong><span>711</span>
                                <p>12% </p>
                            </div>
                            <div id="MR-host"><strong>호스트 수</strong><span>289</span>
                                <p>8% </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- class 선생님 공간 현황을 텍스트로 보여주는 row이다. 
                1.해당 월 신규 신청 선생님 전월 대비 증감수
                2.해당 월 신규 개설에 대한 신청 클래스 수             
                3.해당 월 진행 클래스 수
                4.해당 월 등록 공간
                5.해당 월 대여 공간
                6.해당 월 선생님 대여중인 공간을 나타낸다. 
                    클래스에서 진행 예정 클래스 수는 뺏다. 해당월이 아니기 때문에  -->
            <!-- 클래스 선생님 공간의 앞자를 따와서 CTS라고 표현했음 -->

            <div class="row" id="CTS-row">
                <!-- 이건 div크기 유형을 말함 col-lg-12 col-lg-8 col-lg-4  등이있음   -->
                <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <!-- 제목 -->
                        <span id="CTS-title">Month Over Month</span>
                        <div class="panel-body">
                            <ul>
                                <li>
                                    <p>선생님 신청</p>
                                    <!-- 증감수 숫자표현  -->
                                    <p>122</p>
                                    <!-- !로직처리: 증가이면 증가를 나타내는 색으로 CTS-pn의 색을 color:#ff8589로 표현하며 뒤쪽에 up icon이 들어가도록 설정한다.  -->
                                    <!-- !로직처리:감소면 감소를 나타내는 색으로 CTS-pn(percent의 약자)의 색을 color:#로 표현하며 뒤쪽에 down icon이 들어가도록 설정한다. -->
                                    <!-- !퍼센티지가 감소 증가냐에 따라서 글자의 색을 바꾸기 위해 속성값을 태그 안에 주었다.  -->
                                    <span id="CTS-p1" style="color:#ff8589">4  &nbsp;%</span> <span class="CTS-pIcon" id="CTS-p1Icon" style="color:#ec1c24"><i class="fas fa-caret-up fa-2x "></i></span>
                                </li>
                                <li>
                                    <p>클래스 개설</p>

                                    <p>3,202</p>
                                    <!-- icon에서 vertical은 icon 뒤집기를 의미 - 감소를 표현했다. 감소를 하게 되면  icon을 감싸는 style의 color 속성을 #0418ea로 주자 -->
                                    <span id="CTS-p2" style="color:#56abe0 ">12 &nbsp;%</span><span class="CTS-pIcon" id="CTS-p2Icon" style="color:#0418ea"><i class="fas fa-caret-down fa-2x  "></i></span>
                                </li>
                                <li>
                                    <p>
                                        </span>진행 클래스 </p>

                                    <p>1,017</p>

                                    <span id="CTS-p3" style="color:#ff8589">8 &nbsp;%</span> <span class="CTS-pIcon" id="CTS-p3Icon" style="color:#ec1c24"><i class="fas fa-caret-up fa-2x "></i></span>
                                </li>
                            </ul>
                            <ul>
                                <li>

                                    <p>공간 등록</p>

                                    <p>899</p>
                                    <!-- 변동이 없으면 Icon 아무것도 안나오도록 설정하기 -->
                                    <span id="CTS-p4" style="color:#56abe0">12 &nbsp;%</span><span class="CTS-pIcon" id="CTS-p4Icon" style="color:#0418ea"><i class="fas fa-caret-down fa-2x"></i></span>
                                </li>
                                <li>
                                    <!-- 아이콘 설정 -->
                                    <p>대여 가능 공간 </p>

                                    <p>1,099</p>
                                    </span>
                                    <span id="CTS-p5" style="color:#56abe0">8 &nbsp;%</span> <span class="CTS-pIcon" id="CTS-p5Icon" style="color:#0418ea"><i class="fas fa-caret-down fa-2x "></i></span>
                                </li>

                                <li>
                                    <p>대여 중인 공간</p>

                                    <p>122</p>

                                    <span id="CTS-p3" style="color:#ff8589">21 &nbsp;%</span><span class="CTS-pIcon" id="CTS-p6Icon" style="color:#ec1c24"><i class="fas fa-caret-up fa-2x "></i></span>

                                </li>
                            </ul>

                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- 이건 div크기 유형을 말함 col-lg-12 col-lg-8 col-lg-4  등이있음   -->
                <div class="col-lg-6">
                    <!-- 이부분부터 그래프 part이다.  -->
                    <div class="panel panel-primary">
                        <!--선생님 현황에 대한 그래프  -->
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 선생님 현황</h3>
                        </div>
                        <div class="panel-body">
                            <!-- 첫번째 차트로써 전월대비 증감률에 대한 선생님현황에 대해 나온다. -->
                            <div id="teacher-graph"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <!-- 이부분부터 그래프 part이다.  -->
                    <div class="panel panel-primary">
                        <!--신청클래스(해당 월 새 클래스), 개강예정클래스(해당 월 기준), 진행클래스(해당 월
업 진행 클래스)에 대한 그래프  -->
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 클래스현황</h3>
                        </div>
                        <div class="panel-body">
                            <!-- 첫번째 차트로써 매출현황에 대해 나온다. -->
                            <div id="class-graph"></div>
                        </div>
                    </div>
                </div>
            </div>






            <div class="row">
                <div class="col-lg-12">
                    <!-- 이부분부터 그래프 part이다.  -->
                    <div class="panel panel-primary">
                        <!--해당 월 등록 공간, 대여공간(총 공간), 선생님 대여 중인 공간을 그래프로 출력 -->
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 공간현황</h3>
                        </div>
                        <div class="panel-body">
                            <!-- 첫번째 차트로써 매출현황에 대해 나온다. -->
                            <div id="space-graph"></div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- /#wrapper -->


    <script type="text/javascript">
        jQuery(function($) {
            /*첫번째 그래프  값 넣기 */
            var performance = [12, 43, 34, 22, 12, 33, 4, 17, 22, 34, 54, 67],
                visits = [123, 323, 443, 32];
            /* 첫번째 그래프에 데이터를 넣는다. */
            $("#income-graph").shieldChart({
                theme: "dark",

                primaryHeader: {
                    text: "매출"
                },
                exportOptions: {
                    image: false,
                    print: false
                },
                dataSeries: [{
                    seriesType: "area",
                    collectionAlias: "당기순이익(만원)",
                    data: performance
                }]
            });



            /* 원그래프에 대한 로직  */
            var memberRate = [500, 100, 10];
            $("#member-graph").shieldChart({
                theme: "dark",
                primaryHeader: {
                    text: "회원비율"
                },
                exportOptions: {
                    image: false,
                    print: false
                },

                dataSeries: [{
                    /* 데이터 종류 */
                    seriesType: "pie",
                    /* 단위표시 */
                    collectionAlias: ["회원", "선생님", "호스트"],
                    data: memberRate
                }]
            });
            /*  */
            $("#teacher-graph").shieldChart({
                theme: "dark",

                primaryHeader: {
                    text: "선생님 현황"
                },
                exportOptions: {
                    image: false,
                    print: false
                },
                dataSeries: [{
                    seriesType: "area",
                    collectionAlias: "선생님 증감률",
                    data: performance
                }]
            });
            $("#class-graph").shieldChart({
                theme: "dark",

                primaryHeader: {
                    text: "클래스 진행 현황"
                },
                exportOptions: {
                    image: false,
                    print: false
                },
                dataSeries: [{
                    seriesType: "bar",
                    collectionAlias: "개강수",
                    data: performance
                }]
            });
            $("#space-graph").shieldChart({
                theme: "dark",

                primaryHeader: {
                    text: "대여현황"
                },
                exportOptions: {
                    image: false,
                    print: false
                },
                dataSeries: [{
                    seriesType: "line",
                    collectionAlias: "대여수",
                    data: performance
                }]
            });


        });
    </script>
</body>

</html>
