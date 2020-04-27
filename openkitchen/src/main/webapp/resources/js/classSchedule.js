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
				url : '/openkitchen/mypage' + '/totalScheduleList',

				type : 'POST',
				success : function(data) {
					var obj = JSON.parse(data);
					if (obj == "noregist") {
						alert("클래스 등록,공간 등록 먼저 해주시기 바랍니다.")
					} else {

						temp = {};
						obj = obj.filter(function(e) {
							if (temp.hasOwnProperty(e.lLeasedate)) {
								temp[e.lLeasedate].lLeasetime += ','
										+ e.lLeasetime;
								return false;
							} else {
								temp[e.lLeasedate] = e;
								return true;
							}

						})

						obj
								.forEach(function(item, i) {
									// json안의 시간요소를 하나씩 꺼내서 넣기 위한 변수
									var leasetime = obj[i].lLeasetime.split(",");
											
									var li="";
									for (var z = 0; z < obj[i].lLeasetime
											.split(",").length; z++) {
										if (leasetime[z] == "오전") {
											li += "<li>" + leasetime[z]
													+ "(10:00-14:00)" + "</li>";
										} else if (leasetime[z] == "오후") {
											li += "<li>" + leasetime[z]
													+ "(14:00-18:00)" + "</li>";
										} else {
											li += "<li>" + leasetime[z]
													+ "(18:00-22:00)" + "</li>";
										}
									}

									contents1 = "<div class='oftenQuestion'><strong>"
											+ item.lLeasedate
											+ "</strong></div>";
									contents2 = "<div class='timeLine'>";
									contents3 ='<ul>'+li+'</ul>' + '</div>';
									
									tag =contents1+ contents2 + contents3 ;
									$frag.append(tag);

								});// foreachend
						$("#scheduleDiv").append($frag);
					}
					// 요청 정지
					return rtn;

				}// success end

			})// ajax end

	// 등록하기 버튼

	// 등록 완료 버튼 클릭시 class 등록하기
	$('#complete').on('click', function() {
		
		

			$.ajax({
				type : 'POST',
				contentType : "application/json; charset=utf-8",
				url : '/openkitchen/mypage' + '/completeSch',
				
				success : function(result) {
					var obj = JSON.parse(result);
					if (obj == "noregist") {
						alert("등록할 수 없습니다.");
					} else {
						$(location).attr('href', "in");

					}

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

