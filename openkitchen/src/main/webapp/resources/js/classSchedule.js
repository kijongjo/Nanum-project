//달력 api 사용을 위한 list
var list = new Array();
//달력 api를 둘 태그 
var $picker = $(".datepicker-here");

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
				url : '/openkitchenFinal/mypage' + '/totalScheduleList',

				type : 'POST',
				success : function(data) {
					var obj = JSON.parse(data);
					if (obj == "noValue") {
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
									//달력 api에 사용하기 위해 전역 변수로 선언한 list에 날짜를 담아준다.    
									console.log("?"+item.lLeasedate);
									list.push(item.lLeasedate);
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
					
					$picker.datepicker({
					    // 날짜 선택기의 셀이 렌더링 될 때 콜백
					    // html로 입력받아 해석해서 표준 출력 장치(모니터)로 출력
					    // 화면에 날짜가 보여질 때 호출???


					    onRenderCell: function(date, cellType) {
					            /* date : 현재 셀  날짜
					               cellType : 현재 셀 유형 (day, month, year)
					            */
					            var currentDate = date.getDate();
					            
					            /* 0~11까지 표기한다.  */
					            var currentMonth = date.getMonth() + 1;
					           
					            var currentYear = date.getFullYear();
					            console.log("현재 연월일"+currentYear+" "+currentMonth+" "+currentDate);
					

					            for (var i = 0; i < list.length; i++) {
					           	 console.log("list :   ",list[i]);
					            	var array=list[i].split("-");
					                var eventYear = array[0].replace(/(^0+)/, "");
					                console.log(eventYear +"eY vs cY" +currentYear);
					                var eventMonth = array[1].replace(/(^0+)/, "");
					                console.log(eventMonth +"eM vs cM" +currentMonth);
					                var eventDate = array[2].replace(/(^0+)/, "");
					                console.log(eventDate +"eD vs cD" +currentDate);

					                if (currentYear == eventYear && currentMonth == eventMonth && currentDate == eventDate) {
					                    // if(cellType == "day") {
					                    return {
					                        /* 지정한 요일에 점추가되는 span  */
					                        html: currentDate +
					                            '<span class="dp-note"></span>'
					                            //     } // return문 end
					                    } // second if문 end
					                } // first if문 end
					            } // for문 end
					        } // onRenderCell end
					}); // datepicker end
					
					
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
				url : '/openkitchenFinal/mypage' + '/completeSch',
				
				success : function(result) {
					var obj = JSON.parse(result);
					if (obj == "noValue") {
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

