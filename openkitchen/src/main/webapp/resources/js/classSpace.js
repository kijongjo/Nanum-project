var $frag = $(document.createDocumentFragment());
// html 코드를 입력할 변수 선언
var contents1, contents2, contents3, contents4, contents5, contents6;
// 요청 정지 신호
var rtn = false;
// session에 담긴 class번호를 이용.
var cNo;
// 몇개 골랏는지 알기 위함 .
var formSize = 0;

$(function() {
	// 공간 예약 목록
	$
			.ajax({
				url : 'spaceBookList',
				type : 'POST',
				success : function(data) {

					if ($("#cNo").val() == null) {
						alert("클래스 정보를 먼저 등록해 주세요.");
					} else {
						cNo = $("#cNo").val();
					}

					var obj = JSON.parse(data);
					if (obj == "noValue") {
						alert("강의실 예약이 필요합니다.")
					} else {
						obj
								.forEach(function(item) {

									contents1 = item.sMainsumnail;
									console.log(contents1);
									contents2 = '<img src="' + contents1 + '">';
									contents3 = '<div>' + "No. " + item.renNo
											+ '</div>';
									contents4 = '<h3><a href="classSchedule?no=2">'
											+ item.sName + '</a></h3>';
									contents5 = '<p>' + item.lLeasedate
											+ item.lLeasetime + '</p>';
									contents6 = '<div class="iconDiv"><i class="fas fa-check"></i></div></li>';

									tag = contents2 + contents3 + contents4
											+ contents5 + contents6;
									$frag.append('<li class="selectBox">' + tag
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

				}// beforeSend end

				,
				complete : function() {

					$('.wrap-loading').addClass('display-none');

				}// complete end

			})// ajax end

	/* 전문분야 주기. name 지정 비지정으로 결정함 */
	// !!동적으로 지정한 태그에 대해서는 document on을 써야한다.
	$(document).on("click", "#contents_border>ul>li", function() {
		console.log("하이");
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
				'z-index' : -1
			})

			// 이름이 없으면 이름을 부여함
		} else {
			$(this).attr({
				name : "cSpaceList"
			});

			$(this).css({
				'border-color' : '#ff2222',
				'color' : '#FFFFFF'
			});

			$(this).children('.iconDiv').css({

				'opacity' : 1,
				'z-index' : 1
			});
		} // else end
	}) // click end

	// contextPath 구하는 function jstl로 하면 편하지만 프론트단에서 모두 처리하도록 해봣음.
	function getContextPath() {
		var hostIndex = location.href.indexOf(location.host)
				+ location.host.length;
		return location.href.substring(hostIndex, location.href.indexOf('/',
				hostIndex + 1));

	}

	// 등록하기 버튼

	// 등록 완료 버튼 클릭시 class 등록하기
	$('#complete').on('click', function() {
		var jso = appendForm();
		console.log(jso);
		// 필수 등록 수 12를 넘지 못하면 다음으로 이동 불가
		if (formSize < 1) {
			alert("공간은 최소 1개 이상 선택해야 합니다.");

		} else {

			$.ajax({
				type : 'POST',
				contentType : "application/json; charset=utf-8",
				url : '/openkitchen/mypage' + '/classSpaceRegist',
				data : jso,
				success : function(result) {
					var obj = JSON.parse(result);
					if (obj == "regist") {
						$(location).attr('href', "classSchedule?no=3");
					} else {
						alert("등록할 수 없습니다.");

					}

				}// success function

			// 전송실패에대한 핸들링은 고려하지 않음
			}); // ajax end
		}// null값 없는지 체크 end

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

