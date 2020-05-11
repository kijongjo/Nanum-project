var $frag = $(document.createDocumentFragment());
// html 코드를 입력할 변수 선언
var contents0, contents1, contents2, contents3, contents4, contents5;
// 요청 정지 신호
var rtn = false;
$(function() {
	// 공간 예약 목록
	$
			.ajax({
				url : 'completeClassList',
				type : 'POST',
				success : function(data) {
					var obj = JSON.parse(data);
					console.log(obj);
					if (obj == "noValue") {

					} else {
						obj
								.forEach(function(item) {

									if (item.lLeasetime == "오전") {
										contents0 = "10:00-14:00";
									} else if (item.lLeasetime == "오후") {
										contents0 = "14:00-18:00";
									} else {
										contents0 = "18:00-22:00";
									}

									contents1 = item.cMainsumnail;
									contents2 = '<a href="../classD?no='+item.cNo+'"><img class="finishedImg" src="'
											+ contents1 + '">';
									contents3 = '<h3>' + item.cName + '</h3>';
									contents4 = '<div class="time-wrapper"><span class="date">'
											+ item.lLeasedate
											+ '</span><span class="date">'
											+ contents0 + '</span></div>';
									contents5 = '<span class="more-type2">'
											+ "종료"
											+ '<i class="ico-more_arrow"></i>'
											+ '</span>' + '</a>';

									tag = contents2 + contents3 + contents4
											+ contents5;
									$frag.append('<li>' + tag + '</li>');

								});// foreachend
						$("#contents_border>ul").append($frag);
					}
					// 요청 정지
					return rtn;

				}// success end
				,
				beforeSend : function() {

					$('.wrap-loading').removeClass('display-none');

				}// beforeSend end

				,
				complete : function() {

					$('.wrap-loading').addClass('display-none');

				}// complete end

			})// ajax end
})
