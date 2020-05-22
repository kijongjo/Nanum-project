//페이지 이동하기 	
function action(n) {
	if (n == 1) {
		location.href = "../classBases/"+n;
		$("#list1").addClass("class", "On_active");
		$("#list2").removeClass("class", "On_active");
		$("#list3").removeClass("class", "On_active");

	} else if (n == 2) {
		location.href = "../classSpaces/" + n;
		$("#list2").addClass("class", "On_active");
		$("#list1").removeClass("class", "On_active");
		$("#list3").removeClass("class", "On_active");

	} else {
		location.href = "../classSchedules/" + n;
		$("#list3").addClass("class", "On_active");
		$("#list2").removeClass("class", "On_active");
		$("#list1").removeClass("class", "On_active");
	}

}
