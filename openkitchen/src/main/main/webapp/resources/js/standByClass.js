var $frag = $(document.createDocumentFragment());
// html 코드를 입력할 변수 선언
var contents0, contents1, contents2, contents3, contents4, contents5;
// 요청 정지 신호
var rtn = false;

var contextPath;
$(function() {
	contextPath=getContextPath() ;
	var mNo = sessionStorage.getItem("mNo");
	console.log("mNo:" + mNo);
	showStandByClassList(mNo);
})
function showStandByClassList(mNo) {
	
	// 공간 예약 목록
	$.ajax({
		url :  '../standByList',
		type : 'GET',
		contentType : 'application/json;charset=utf-8',
		dataType : 'json',			
		success : appendList
		,
		beforeSend : function() {

			$('.wrap-loading').removeClass('display-none');

		}// beforeSend end

		,
		complete : function() {

			$('.wrap-loading').addClass('display-none');

		}// complete end

	})// ajax end
};
function appendList(xhr){

	if (xhr.result == false) {
		alert("목록이 없습니다.")
	} else {
		var list = xhr.data;
		list.forEach(function(item) {
                  
				contents1 = item.cMainsumnail;

				contents2 = '<a href="../../../../classD?no=' + item.cNo
						+ '"><img src="' + contents1 + '">';
				contents3 = '<h3>' + item.cName + '</h3>';
				contents4 = '<div class="time-wrapper"><span class="date">'
						+ item.cRegdate + '</span><span class="date">'
						+ '등록일' + '</span></div>';
				contents5 = '<span class="more-type2">' + "심사 중"
						+ '<i class="ico-more_arrow"></i>' + '</span>'
						+ '</a>';

				tag = contents2 + contents3 + contents4 + contents5;
				$frag.append('<li>' + tag + '</li>');

			});// foreachend
			$("#contents_border>ul").append($frag);
		}
		// 요청 정지
		return rtn;

	}// success end
	
function getContextPath() {
	  var hostIndex = location.href.indexOf( location.host ) + location.host.length;
	  return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
	};
