var $frag = $(document.createDocumentFragment());
// html 코드를 입력할 변수 선언
var contents1, contents2, contents3, contents4, contents5, contents6;
// 요청 정지 신호
var rtn = false;
$(function() {
	// 공간 예약 목록
	$
			.ajax({
				url : 'cookBookList',
				type : 'POST',
				success : function(data) {
					var obj = JSON.parse(data);
					if (obj == "noValue") {
						alert("강의실 예약이 필요합니다.")
					} else {
						obj
								.forEach(function(item) {
                                        
									contents1 = item.cMainsumnail;
				
									contents2 = '<a href="classD?no=1"><img src="' + contents1 + '">';
									contents3 = '<h3>'+item.cName+'</h3>';
									contents4 = '<div class="Price"><strong>￦</strong>'+item.cPrice.toLocaleString()+'</div>';
									contents5 = '<p>'+item.recPerstatus +'<i class="ico-more_arrow"></i>'+'</p>'+'</a>';
									
									tag = contents2 + contents3 + contents4
											+ contents5 ;
									$frag.append('<li>' + tag
											+ '</li>');

								});// foreachend
						$("#contents_border>ul").append($frag);
					}
					// 요청 정지
					return rtn;

				}// success end
			,
			beforeSend : function() {

				$('.wrap-loading').removeClass('display-none');

			}//beforeSend end

			,
			complete : function() {

				$('.wrap-loading').addClass('display-none');

			}//complete end

			})// ajax end
})
