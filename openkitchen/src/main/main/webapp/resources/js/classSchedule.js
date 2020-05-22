//달력 api 사용을 위한 list
var list = new Array();
// 달력 api를 둘 태그
var $picker = $(".datepicker-here");

var $frag = $(document.createDocumentFragment());
// html 코드를 입력할 변수 선언
var contents1, contents2, contents3, contents4, contents5, contents6;
// 요청 정지 신호
var rtn = false;
// session에 담긴 class번호를 이용.
var cNo;
var mNo;
// 몇개 골랏는지 알기 위함 .
var formSize = 0;

$(function() {
	// session값 가져오기
	mNo = sessionStorage.getItem("mNo");
	cNo = sessionStorage.getItem("cNo");
	showScheduleList();
	appendForm();

	// 등록 완료 버튼 클릭시 class 등록하기
	$('#complete').on('click', function() {

		$.ajax({
			type : 'PUT',
			contentType : "application/json; charset=utf-8",
			url : '../../../users/teachers/' + mNo + '/' + cNo + '/completeSch',

			success : function(result) {

				$(location).attr('href', "../../"+mNo);

			}// success function

		// 전송실패에대한 핸들링은 고려하지 않음
		}); // ajax end

	}); // o n click end

	function appendForm() {
     
		var cSpaceList = new Array();
		var recPerstatus = "모집";
		/* cSpaceList구문 */
		$("ul>li[name='cSpaceList']").each(function(i) {
			var renNo = $(this).children("div").text().substring(3);
			var data = new Object();
			data.renNo = renNo;
			data.recPerstatus = recPerstatus;
			data.cNo = cNo;
			cSpaceList.push(data);
			formSize++;
			console.log("formSize : " + formSize);

		})
		var jsonData = JSON.stringify(cSpaceList);
		return jsonData;
	}// appendForm 끝

})// $function end

function showScheduleList() {
	// 공간 예약 목록
	$.ajax({
		url : '../../../users/teachers/' + mNo + '/' + cNo + '/totalScheduleList',
		type : 'GET',
		success : appendList,
		error: function(jqXHR, exception) {
	        if (jqXHR.status === 0) {
	            alert('Not connect.\n Verify Network.');
	        } 
	        else if (jqXHR.status == 400) {
	            alert('Server understood the request, but request content was invalid. [400]');
	        } 
	        else if (jqXHR.status == 401) {
	            alert('Unauthorized access. [401]');
	        } 
	        else if (jqXHR.status == 403) {
	            alert('Forbidden resource can not be accessed. [403]');
	        } 
	        else if (jqXHR.status == 404) {
	            alert('Requested page not found. [404]');
	        } 
	        else if (jqXHR.status == 500) {
	            alert('Internal server error. [500]');
	        } 
	        else if (jqXHR.status == 503) {
	            alert('Service unavailable. [503]');
	        } 
	        else if (exception === 'parsererror') {
	            alert('Requested JSON parse failed. [Failed]');
	        } 
	        else if (exception === 'timeout') {
	            alert('Time out error. [Timeout]');
	        } 
	        else if (exception === 'abort') {
	            alert('Ajax request aborted. [Aborted]');
	        } 
	        else {
	            alert('Uncaught Error.n' + jqXHR.responseText);
	        }
	    }

	})// ajax end

	// 등록하기 버튼

}
function appendList(xhr) {

	if (xhr.result == false) {
		alert("클래스 등록,공간 등록 먼저 해주시기 바랍니다.")
	} else {
		var scheduleList = xhr.data;
		temp = {};
		scheduleList = scheduleList.filter(function(e) {
			if (temp.hasOwnProperty(e.lLeasedate)) {
				temp[e.lLeasedate].lLeasetime += ',' + e.lLeasetime;
				return false;
			} else {
				temp[e.lLeasedate] = e;
				return true;
			}

		})

		scheduleList.forEach(function(item, i) {
			// json안의 시간요소를 하나씩 꺼내서 넣기 위한 변수
			var leasetime = scheduleList[i].lLeasetime.split(",");
			// 달력 api에 사용하기 위해 전역 변수로 선언한 list에 날짜를 담아준다.
			console.log("?" + item.lLeasedate);
			list.push(item.lLeasedate);
			var li = "";
			for (var z = 0; z < scheduleList[i] .lLeasetime.split(",").length; z++) {
				if (leasetime[z] == "오전") {
					li += "<li>" + leasetime[z] + "(10:00-14:00)" + "</li>";
				} else if (leasetime[z] == "오후") {
					li += "<li>" + leasetime[z] + "(14:00-18:00)" + "</li>";
				} else {
					li += "<li>" + leasetime[z] + "(18:00-22:00)" + "</li>";
				}
			}

			contents1 = "<div class='oftenQuestion'><strong>" + item.lLeasedate
					+ "</strong></div>";
			contents2 = "<div class='timeLine'>";
			contents3 = '<ul>' + li + '</ul>' + '</div>';

			tag = contents1 + contents2 + contents3;
			$frag.append(tag);

		});// foreachend
		$("#scheduleDiv").append($frag);
	}

	$picker.datepicker({
		// 날짜 선택기의 셀이 렌더링 될 때 콜백
		// html로 입력받아 해석해서 표준 출력 장치(모니터)로 출력
		// 화면에 날짜가 보여질 때 호출???

		onRenderCell : function(date, cellType) {
			/*
			 * date : 현재 셀 날짜 cellType : 현재 셀 유형 (day, month, year)
			 */
			var currentDate = date.getDate();

			/* 0~11까지 표기한다. */
			var currentMonth = date.getMonth() + 1;

			var currentYear = date.getFullYear();
			console.log("현재 연월일" + currentYear + " " + currentMonth + " "
					+ currentDate);

			for (var i = 0; i < list.length; i++) {
				console.log("list :   ", list[i]);
				var array = list[i].split("-");
				var eventYear = array[0].replace(/(^0+)/, "");
				console.log(eventYear + "eY vs cY" + currentYear);
				var eventMonth = array[1].replace(/(^0+)/, "");
				console.log(eventMonth + "eM vs cM" + currentMonth);
				var eventDate = array[2].replace(/(^0+)/, "");
				console.log(eventDate + "eD vs cD" + currentDate);

				if (currentYear == eventYear && currentMonth == eventMonth
						&& currentDate == eventDate) {
					// if(cellType == "day") {
					return {
						/* 지정한 요일에 점추가되는 span */
						html : currentDate + '<span class="dp-note"></span>'
					// } // return문 end
					} // second if문 end
				} // first if문 end
			} // for문 end
		} // onRenderCell end
	}); // datepicker end

	// 요청 정지
	return rtn;

}// success end

