<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="classSchedule">
	<div>



		<form action="" id="uploadForm" enctype="multipart/form-data"
			method="post">


			<div class="inp-wrap">
				<span>일정 선택</span>
				<div>
					<p>선택된 일정을 확인하실 수 있습니다.</p>
					<div>
						<div>이번 달</div>
						<div id="mainThum"></div>
					</div>
					<div>
						<div>다음 달</div>
						<div id="detailThum"></div>
					</div>
				</div>
			</div>

			<!-- 커버 이미지 선택란 끝 -->



			<div class="inp-wrap" id="#scheduleList">
				<span>강의 시간</span>
				
			<!-- 	<div class="oftenQuestion">
					<strong>
                        04.24(금)
					</strong>
					
				</div>
				<div class="timeLine">
					<ul>
					<li>오전(10:00-14:00)</li>
					<li>오후(14:00-18:00)</li>
					<li>저녁(18:00-22:00)</li>
					</ul>
					</div>
					
					
					<div class="oftenQuestion">
					<strong>
                        04.24(금)
					</strong>
					
				</div>
				<div class="timeLine">
					<ul>
					<li>오전(10:00-14:00)</li>
					<li>저녁(18:00-22:00)</li>
					</ul>
					</div> -->
				
              <div id="scheduleDiv"></div>

				<div id="btn-form-wrap">
					<input type="button" value="다음" id="complete"> <input
						type="button" value="돌아가기" id="go">
				</div>
			</div>
		</form>
	</div>
</div>