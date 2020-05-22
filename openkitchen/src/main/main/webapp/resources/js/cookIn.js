//페이지 이동하기 	
function action(n) {
	// session값 가지고 오기
	var mNo = sessionStorage.getItem("mNo");
	if (n == 1) {
		location.href =  "../cookBooks/" + n;
		$("#list1").addClass("class", "On_active");
		$("#list2").removeClass("class", "On_active");
		$("#list3").removeClass("class", "On_active");

	} else if (n == 2) {
		location.href ="../cookRefunds/" + n;
		$("#list2").addClass("class", "On_active");
		$("#list1").removeClass("class", "On_active");
		$("#list3").removeClass("class", "On_active");

	} else {
		location.href ="../cookEnds/" + n;
		$("#list3").addClass("class", "On_active");
		$("#list2").removeClass("class", "On_active");
		$("#list1").removeClass("class", "On_active");
	}

}