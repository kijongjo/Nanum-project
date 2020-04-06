<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
      /* 화면 처음 로딩했을 때 기본 상태 */
      $(document).ready(function() {
        $("#all").css("color", "#000000");
        $("#theme").hide();
        $("#area").hide();
        $("#month").hide();
      });

      $(function() {
        $("#keyword_sch").on("focus", function() {
          //커서가 검색창에 있을 때 빨간색 밑줄 활성화
          $("#search_wrap").css("border-bottom", "46px solid #8C0032");
        });
        //커서가 검색창 말고 다른 곳에 있을 때 회색 밑줄 활성화
        $("#keyword_sch").on("blur", function() {
          $("#search_wrap").css("border-bottom", "46px solid #d9d9d9");
        });
        /* 검색 아이콘  클릭하면*/
        $("button").on("click", function() {
          $(location).attr("href", "#"); //이동할 페이지 지정
        });
        //tab_title에서 '전체'를 클릭하면
        $("#all").on("click", function() {
          //전체 타이틀만 검정색
          $("#all").css("color", "#000000");
          //나머지 타이틀은 회색
          $("#class").css("color", "#bfbfbf");
          $("#teacher").css("color", "#bfbfbf");
          $("#space").css("color", "#bfbfbf");
          //전체 타이틀을 눌렀을 때 이동할 페이지
          $(location).attr("href", "#"); //이동할 페이지 지정!!!!!!
          /* select-option 숨기기 */
          $("#theme").hide();
          $("#area").hide();
          $("#month").hide();
        });
        //tab_title에서 '클래스'를 클릭하면
        $("#class").on("click", function() {
          //클래스 타이틀만 검정색
          $("#class").css("color", "#000000");
          //나머지 타이틀은 회색
          $("#all").css("color", "#bfbfbf");
          $("#teacher").css("color", "#bfbfbf");
          $("#space").css("color", "#bfbfbf");
          //클래스 타이틀을 눌렀을 때 이동할 페이지
          $(location).attr("href", "#"); //이동할 페이지 지정!!!!!!
          /* select-option 보이기 */
          $("#theme").show();
          $("#area").show();
          $("#month").show();
        });
        // tab_title에서 '선생님'을 클릭하면
        $("#teacher").on("click", function() {
          //선생님 타이틀만 검정색
          $("#teacher").css("color", "#000000");
          //나머지 타이틀은 회색
          $("#all").css("color", "#bfbfbf");
          $("#class").css("color", "#bfbfbf");
          $("#space").css("color", "#bfbfbf");
          //선생님 타이틀을 눌렀을 때 이동할 페이지
          $(location).attr("href", "#"); //이동할 페이지 지정!!!!!!
          /* select-option 숨기기, 보이기 */
          $("#theme").show();
          $("#area").show();
          $("#month").hide();
        });
        // tab_title에서 '공간'을 클릭하면
        $("#space").on("click", function() {
          //공간 타이틀만 검정색
          $("#space").css("color", "#000000");
          //나머지 타이틀은 회색
          $("#all").css("color", "#bfbfbf");
          $("#teacher").css("color", "#bfbfbf");
          $("#class").css(
            "c//선생님 타이틀을 눌렀을 때 이동할 페이지olor",
            "#bfbfbf"
          );
          //공간 타이틀을 눌렀을 때 이동할 페이지
          $(location).attr("href", "#"); //이동할 페이지 지정!!!!!!
          /* select-option 숨기기, 보이기 */
          $("#theme").show();
          $("#area").show();
          $("#month").hide();
        });
      });
    </script>
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>" />
    <link rel="stylesheet" href="<c:url value='/resources/css/Header.css'/>" />
    <link rel="stylesheet" href="<c:url value='/resources/css/footer.css'/>" />
    <link rel="stylesheet" href="<c:url value='/resources/css/searchIn.css'/>" />
    
  </head>

  <body>
  <%@ include file="/WEB-INF/views/header.jsp" %>
    <div id="content">
      <section id="sch_header">
        <div id="search_wrap">
          <input
            type="search"
            name="keyword"
            id="keyword_sch"
            maxlength="15"
            placeholder="클래스 / 선생님 / 공간 검색"
          />
          <button type="button"></button>
        </div>
        <div id="tab_title">
          <a href="#" id="all">전체</a>
          <a href="#" id="class">클래스</a>
          <a href="#" id="teacher">선생님</a>
          <a href="#" id="space">공간</a>
        </div>
        <h2>총 0개의 검색결과</h2>
      </section>
      <section id="result">
        <div>
          <select name="" id="theme">
            <option value="테마">테마</option>
            <option value="커피">커피</option>
            <option value="음료">음료</option>
          </select>
          <select name="" id="area">
            <option value="지역">지역</option>
            <option value="서울">서울</option>
            <option value="경기">경기</option>
          </select>
          <select name="" id="month">
            <option value="월별">월별</option>
            <option value="1개월">1개월</option>
            <option value="2개월">2개월</option>
            <option value="3개월">3개월</option>
          </select>
        </div>

        <p id="no_msg">검색된 내용이 없어요.</p>
      </section>
    </div>
    <%@ include file="/WEB-INF/views/footer.jsp" %>
  </body>
</html>
