

//댓글 한개 전체  보기  기능
/* 모듈: 특정 태그 클릭 시 div가 늘어나고 줄어드는 기능이다.   */
/*참고: 늘어나는 div를 overflow로 감싸야 더 보기 기능이 완성됨. */




/* 'id또는 태그'를 눌렀을때 기능을 하도록 설정한다. */
/* a태그를 통해 javascript function의 매개변수 값을 전달 받는다. */
function reviewOne(a) {
	/* 클래스로 지정한 경우 해당 선택자찾기를 사용해주세요 */
	/* .memberInfo class를 가지는 span중에서 a번째 span을 찾는다. */
	/* 배열의 Index 값으로 매개변수 전달 */
	var selector = $('span.memberInfo:eq(' + a + ')>p');
	var atxt = $('span.memberInfo:eq(' + a + ')>a');
	/* 늘어나는 기능 */
	if (atxt.text()=="더보기") {
		/* ('늘어날 div의 id 또는 class').animate({높이:+=기존높이에 추가될 값},속도) */
		selector.animate({
			height : '+=200px'
		}, 500);
		
		
		atxt.text("접기");
		/* 줄어드는 기능 */
	} else if (atxt.text()=="접기") {
		/* ('늘어날 div의 id 또는 class').animate({높이:-=기존높이에 줄어들 값},속도) */
		selector.animate({
			height : '-=200px'
		}, 500);
		
		atxt.text("더보기");
	}
}




//취소 환불 정책 펼치기 접기 기능


function refundPolicy() {
          var selector= $('.refundPolicy>div')
          var atxt = $('.refundPolicy>a');
	/* 늘어나는 기능 */
	if (atxt.text() == "펼치기") {
		/* ('늘어날 div의 id 또는 class').animate({높이:+=기존높이에 추가될 값},속도) */
		selector.animate({
			height : '+=695px'
		}, 500);
		/* state를 0으로 줘서 한 번 늘어난 후에는 줄어들도록 설정 */
		policyStatus = 0;
		atxt.text("접기");
		/* 줄어드는 기능 */
	} else if (atxt.text()=="접기") {
		/* ('늘어날 div의 id 또는 class').animate({높이:-=기존높이에 줄어들 값},속도) */
		selector.animate({
			height : '-=695px'
		}, 500);
		/* 줄어들었으니 늘어나도록 설정 */
		policyStatus = 1;
		atxt.text("펼치기");
	}
}

//selectBody의 펼치기 접기 오른쪽 layout에 있는 스케쥴표
var sbodyStatus = 1;
function selectBody() {
          var selector= $('.selectBody')
          var atxt = $('.selectSchedule>p>a');
          
          var icon=$('#right02>.selectSchedule>p>a');
          
	/* 늘어나는 기능 */
	if (sbodyStatus == 1) {
		/* ('늘어날 div의 id 또는 class').animate({높이:+=기존높이에 추가될 값},속도) */
		selector.animate({
			height : '+=200px'
		}, 500);
		icon.css('transform','rotate(180deg)');
		/* state를 0으로 줘서 한 번 늘어난 후에는 줄어들도록 설정 */
		sbodyStatus = 0;
		atxt.text("일정 접기");
		//가상 선택자에 class 지정하여 돌리기위함
		icon.toggleClass('changed');
		/* 줄어드는 기능 */
	} else if (sbodyStatus == 0) {
		/* ('늘어날 div의 id 또는 class').animate({높이:-=기존높이에 줄어들 값},속도) */
		selector.animate({
			height : '-=200px'
		}, 500);
		/* 줄어들었으니 늘어나도록 설정 */
		sbodyStatus = 1;
		atxt.text("펼치기");
		icon.toggleClass('changed');
	}
}




