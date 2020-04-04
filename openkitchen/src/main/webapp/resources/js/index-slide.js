$(document).ready(function() {
		$('.bxslider').bxSlider({
			/* 슬라이드 최소 노출 개수 
			   최소 노출개수와 최대 노출개수가 같아지면
			   width값이 고정된다 주의 할 것
			 */
			minSlides : 1,
			/* 슬라이드 최대 노출 개수 */
			maxSlides : 4,
			/* 슬라이드 이동 갯수 */
			moveSlides : 1,
			/* 슬라이드 너비 */
			slideWidth : 340,
			/* 슬라이드 여백 */
			slideMargin : 15,
			/* 이동 동그라미 노출 여부 */
			pager : false,
			/* 슬라이드 무한 반복 제어 */
			infiniteLoop : false,
			/* 이미지 첫번째 또는 마지막 일때 prev와 next 버튼 비활성/활성화 */
			hideControlOnEnd : true,
			adaptiveHeight : true,

			// 슬라이드 속도(숫자가 커질수록 느려짐)
			speed : 450,
			// a태그 동작을 위한 태그 설정
			/*touchEnabled : (navigator.maxTouchPoints > 0)*/

		});
		
		$('.bxslider1').bxSlider({
			/* 슬라이드 최소 노출 개수 
			   최소 노출개수와 최대 노출개수가 같아지면
			   width값이 고정된다 주의 할 것
			 */

			minSlides : 1,
			/* 슬라이드 최대 노출 개수 */
			maxSlides : 1,
			/* 슬라이드 이동 갯수 */
			moveSlides : 1,
			/* 슬라이드 너비 */
			slideWidth : 1440,
			/* 슬라이드 여백 */
			slideMargin : 15,
			/* 이동 동그라미 노출 여부 */
			pager : true,

			/* 슬라이드 무한 반복 제어 */
			infiniteLoop : true,

			/* 이미지 첫번째 또는 마지막 일때 prev와 next 버튼 비활성/활성화 */
			hideControlOnEnd : false,
			/* 높이 고정 제어 */
			adaptiveHeight : true,

			/* 마우스 드래그로 슬라이드 이동 */
			touchEnabled : true,

			/* 컨트롤 버튼 화면 출력 제어  */
			controls : false,
			// 슬라이드 속도(숫자가 커질수록 느려짐)
			speed : 450,
			/* 슬라이드 자동 실행 제어*/
			auto : true,
			/* 슬라이드 자동 시간 제어 */
			pause : 4000,
			// a태그 동작을 위한 터치 설정
			/*touchEnabled : (navigator.maxTouchPoints > 0) */

		});
	});