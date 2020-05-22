<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="contents_border">
      <ul>
          <li>
              <a href="#">
                  <img class="finishedImg" src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="slide01">
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
                      <img class="finishedImg" src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="slide01">
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
                      <img class="finishedImg" src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="slide01">
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