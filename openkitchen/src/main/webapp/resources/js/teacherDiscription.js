//페이지 이동하기 	
function action(n) {
				if (n == 1) {
					location.href = "teacherBase?no=" + n;
			$("#list1").addClass("class", "On_active");
			$("#list2").removeClass("class", "On_active");
	

		} else {
			location.href = "teacherBase?no=" + n;
			$("#list2").addClass("class", "On_active");
			$("#list1").removeClass("class", "On_active");
			


		}

	}

