var $frag = $(document.createDocumentFragment());
// html 코드를 입력할 변수 선언
var contents0, contents1, contents2, contents3, contents4, contents5;
// 요청 정지 신호
var rtn = false;
$(function() {
	var mNo = sessionStorage.getItem("mNo");
	console.log("mNo:" + mNo);
	showOngoingClassList(mNo);

})

//진행 중 클래스 리스트
function showOngoingClassList(mNo) {
	// 공간 예약 목록
	$.ajax({
		url :  '../ongoingClassList',
		type : 'GET',
		contentType : 'application/json;charset=utf-8',
		dataType : 'json',
		success : appendList,
		beforeSend : function() {

			$('.wrap-loading').removeClass('display-none');

		}// beforeSend end

		,
		complete : function() {

			$('.wrap-loading').addClass('display-none');

		}// complete end

	})// ajax end
}

//list 붙이기 
function appendList(xhr) {

	if (xhr.result == false) {
		alert("목록이 없습니다.")
	} else {
		var list = xhr.data;
		list.forEach(function(item) {

			if (item.lLeasetime == "오전") {
				contents0 = "10:00-14:00";
			} else if (item.lLeasetime == "오후") {
				contents0 = "14:00-18:00";
			} else {
				contents0 = "18:00-22:00";
			}

			contents1 = item.cMainsumnail;
			contents2 = '<a href="../../../../classD?no=' + item.cNo + '"><img  src="'
					+ contents1 + '">';
			contents3 = '<h3>' + item.cName + '</h3>';
			contents4 = '<div class="time-wrapper"><span class="date">'
					+ item.lLeasedate + '</span><span class="date">'
					+ contents0 + '</span></div>';
			contents5 = '<div class="person-status">'
					+ '<span class="more-type2">인원현황(<span>' + item.eApply
					+ '/' + item.cMaxRecruitPerson + '</span>)</span>'
					+ '<br><span class="more-type2">' + item.cPerstatus
					+ '<i class="ico-more_arrow"></i>' + '</span>' + '</a>';

			tag = contents2 + contents3 + contents4 + contents5;
			$frag.append('<li>' + tag + '</li>');

		});// foreachend
		$("#contents_border>ul").append($frag);
	}
	// 요청 정지
	return rtn;

}// success end