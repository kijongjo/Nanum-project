var $frag = $(document.createDocumentFragment());
// html 코드를 입력할 변수 선언
var contents1, contents2, contents3, contents4, contents5, contents6;
// 요청 정지 신호
var rtn = false;
$(function() {
	// session에서 mNo 값 가져오기
	var mNo = sessionStorage.getItem("mNo");
	console.log("mNo:" + mNo);
	showCookBookList(mNo);
})
function showCookBookList(mNo) {

	// 공간 예약 목록
	$.ajax({
		url : '../cookBookList',
		type : 'GET',
		contentType : 'application/json;charset=utf-8',
		dataType : 'json',
		success : appendCookList,
		beforeSend : function() {

			$('.wrap-loading').removeClass('display-none');

		}// beforeSend end

		,
		complete : function() {

			$('.wrap-loading').addClass('display-none');

		}// complete end

	})// ajax end
}
function appendCookList(xhr) {

	if (xhr.result == false) {
		alert("강의실 예약이 필요합니다.")
	} else {
		var list = xhr.data;
		list.forEach(function(item) {

			contents1 = item.cMainsumnail;

			contents2 = '<a href="../../../../classD?no=' + item.cNo + '"><img src="'
					+ contents1 + '">';
			contents3 = '<h3>' + item.cName + '</h3>';
			contents4 = '<div class="Price"><strong>￦</strong>'
					+ item.cPrice.toLocaleString() + '</div>';
			contents5 = '<p>' + item.recPerstatus
					+ '<i class="ico-more_arrow"></i>' + '</p>' + '</a>';

			tag = contents2 + contents3 + contents4 + contents5;
			$frag.append('<li>' + tag + '</li>');

		});// foreachend
		$("#contents_border>ul").append($frag);
	}
	// 요청 정지
	return rtn;

}// success end

