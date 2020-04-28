$(function() {
	console.log("하이")
	/* 전문분야 주기. name 지정 비지정으로 결정함 */
	$("#contents_border>ul>li").click(function() {
		var indexNo = $(this).index();
		// 이름이 있으면 이름을 지움
		if ($(this).is('[name]')) {
			$(this).removeAttr("name");
			$(this).css({
				'border-color' : '#8E0032',
				'color' : '#b7b7b7'
			});
			
			// 체크icon div
			$(this).children('.iconDiv').css({
				
				'opacity' : 0,
				'z-index':-1
			})
          
			// 이름이 없으면 이름을 부여함
		} else {
			$(this).attr({
				name : "tExpertList"
			});

			$(this).css({
				'border-color' : '#ff2222',
				'color' : '#FFFFFF'
			});

			$(this).children('.iconDiv').css({
				
				'opacity' : 1,
				'z-index':1
			});
		} // else end
	}) // click end
})
