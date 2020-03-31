<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <style>

        
      /* 날짜 요일 출력 영역 */
.date-wrapper > .date{
    padding-right: 7px;
    position: relative;
    color: rgba(0, 0, 0, 0.4);
}  

/* 공간 대여 시간과 상태를 가지고 있는 영역 */
.time-wrapper > .space-status {
    display: inline-block;
}

.time-wrapper > .space-status:nth-child(2) {
    margin: 0 4.9px
}

/* 공간 대여 시간 출력 */
.space-status > .time-status {
    border: 1px solid gray;
    border-radius: 40px;
    padding: 3px;
    font-size: 16px;
    display: block;
    margin-bottom: 0.3em;
    /* background-color: #959595; */

}

/* 공간 상태 출력 */
.space-status > .more-status{
    position: relative;
    font-size: 15px;
    margin-left: 1.5em;
}

#pop_share {
/* 내용이 잘리게 될때 스크롤바가 보이도록 설정한다. */
    overflow: auto;
    position: fixed;
    z-index: 99;
    left: 0;
    top: 0;
    box-sizing: border-box;
    width: 100%;
    height: 100%;
    padding: 81px 25px 0;
    /* 반투명 설정 */
    background: rgba(0, 0, 0, 0.67);
    display: none;
   
}

/* 팝업창에 대한 css 설정 */    
#pop_inner {
    margin: 95px auto;
    /* 내용물이 가운데로 오도록 설정 */
    padding: 40px 2em;
    /* 550으로 잡아주어야 팝업창 모양이 나온다 안잡아주면 너무 김. */
    max-width: 550px;
    position: relative;
    background: white;
}

/* #pop_title {
    text-align: center;
    font-size: 24px !important;
    font-weight: 800;
    margin-bottom: 0.3em;        
}  */

#pop_content {
    height: 100%;
}



/* /////////////////////////////////////닫기 버튼 설정 시작//////////////////////////////////////// */

#pop_share > #pop_inner > #btn-close {
    position: absolute;
    top: 0;
    left: 100%;
    width: 30px;
    height: 30px;
    margin-left: 10px;
    background: url(../img/btnCloseWhite.png) no-repeat 50%/30px auto;
}

/* 공간을 대여한 클래스와 선생님에 대한 정보 */
.rental_info {
   text-align: center;
   padding-bottom: 1em;
   margin-bottom: 1em;
   border-bottom: 2px solid #e5e5e5     
}

/* 클래스 이미지 감싸는 wrapper */
.rental_info > figure {
    display: inline-block;
    vertical-align: middle;

}

/* 클래스 이미지 */
.rental_info > figure > img {
    width: 130px;

}

/* 클래스의 정보와 선생님 정보를 감싸는 wrapper */
.rental_info > ul {
    display: inline-block;
    vertical-align: middle;
}

/* 출력정보 항목 */
.rental_info > ul > li > dl > dt {
    clear: both;
    float: left;
    min-width: 5em;
    
}

/* 출력정보 내용  */
.rental_info > ul > li > dl > dd {
    float: left;
}

/* 클래스 이름 */
.rental_info > ul > li:first-child {
    padding-bottom: 0.4em;
    font-size: 22px;
    font-weight: 600;
}

 /* 이미지 회색 필터 */
 #contents_border > a > ul > li > img{
    -webkit-filter: grayscale(100%);
    filter: gray;     
}
    </style>
<div id="contents_border">
      <ul>
          <li>
              <a href="#">
                  <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="slide01">
                  <h3>로푸드팜</h3>
                  <div class="date-wrapper">
                      <span class="date">2020.04.23(목)</span>  
                  </div>
              </a>
                  <div class="time-wrapper">
                      <div class="space-status">
                          <span class="time-status">10:00-14:00</span>
                          <span class="more-status">종료<i class="ico-more_arrow"></i></span>
                      </div>
                      <div class="space-status">
                          <span class="time-status">14:00-18:00</span>
                          <span class="more-status">종료<i class="ico-more_arrow"></i></span>
                      </div>
                      <div class="space-status">
                          <span class="time-status">18:00-22:00</span>
                          <span class="more-status">종료<i class="ico-more_arrow"></i></span>
                      </div>
              </li>
              <li>
                  <a href="#">
                      <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="slide01">
                      <h3>로푸드팜</h3>
                      <div class="date-wrapper">
                          <span class="date">2020.04.23(목)</span>  
                      </div>
                  </a>
                  <div class="time-wrapper">
                      <div class="space-status">
                          <span class="time-status">10:00-14:00</span>
                          <span class="more-status">종료<i class="ico-more_arrow"></i></span>
                      </div>
                      <div class="space-status">
                          <span class="time-status">14:00-18:00</span>
                          <span class="more-status">종료<i class="ico-more_arrow"></i></span>
                      </div>
                      <div class="space-status">
                          <span class="time-status">18:00-22:00</span>
                          <span class="more-status">종료<i class="ico-more_arrow"></i></span>
                  </div>
              </li>
              <li>
                  <a href="#">
                      <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="slide01">
                      <h3>로푸드팜</h3>
                      <div class="date-wrapper">
                          <span class="date">2020.04.23(목)</span>  
                      </div>
                  </a>
                  <div class="time-wrapper">
                      <div class="space-status">
                          <span class="time-status">10:00-14:00</span>
                          <span class="more-status">종료<i class="ico-more_arrow"></i></span>
                      </div>
                      <div class="space-status">
                          <span class="time-status">14:00-18:00</span>
                          <span class="more-status">종료<i class="ico-more_arrow"></i></span>
                      </div>
                      <div class="space-status">
                          <span class="time-status">18:00-22:00</span>
                          <span class="more-status">종료<i class="ico-more_arrow"></i></span>
                  </div>    
              </li>                     
          </ul>
              
      <div class="contents-paging">
          <div class="paging-wrapper">
              <a href="" class="extra"></a>
              <a href="" class="extra"></a>
              <ul class="">
                  <li><a href="">1</a></li>
              </ul>
              <a href="" class="extra"></a>
              <a href="" class="extra"></a>
          </div> 
      </div>
  </div>
  
<!-- /////////////////////////////////////공유하기 팝업창 시작//////////////////////////////////////////////// -->

<!-- 이 페이지의 용도 share 링크를 클릭했을 때 공유하기에 관한 div가 나오도록 설정한다. -->
<!-- 팝업형식으로 나온다. -->
<div id="pop_share">
    <!-- 안쪽에 팝업 창에 대한 내용 -->
  <div id="pop_inner">
      <div id="pop_title"></div>
      <div id="pop_content">
          <div class="rental_info">
              <figure>
                  <img src="../img/test01m.jpg" alt="">
              </figure>
              <ul>
                  <li>
                      비건샌드위치와 수제피클    
                  </li>
                  <li>
                      <dl>
                          <dt>
                              수강일
                          </dt>
                          <dd>
                              20.04.04(토) / 13:00 - 14:00
                          </dd>
                          <dt>선생님</dt>
                          <dd>
                              천사의미소 베이킹강사
                          </dd>
                          <dt>
                              주소
                          </dt>
                          <dd>    
                              서울특별시 성북구 성북로6가길
                          </dd>
                      </dl>
                  </li>
              </ul>
          </div>
      </div>
      <div class="msg-wrap"></div>
      <a href="" id="btn-close"></a>
  </div> 
      <!-- 클로즈 버튼  -->
</div>