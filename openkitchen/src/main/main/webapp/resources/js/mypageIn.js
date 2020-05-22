var mNo;
$(function() {
	// mypageIn 시작
	// mNo값 받아오기
	mNo = $("#mNo").val();
	console.log("mypageIn의 mNo->" + mNo);

	// 회원번호 session 담기
	if (sessionStorage.getItem("mNo") == null) {
		// session에 담기
		sessionStorage.setItem('mNo', mNo);
		console.log("들어옴");
	}

	// session 담겨진 클래스 번호 지우기
	if (sessionStorage.key("cNo") != null) {
		sessionStorage.removeItem("cNo");
	}

});

function getBookList(no) {

	if (no == 1) {
		location.href = mNo + "/cookBooks/1";

	} else if (no == 2) {
		location.href = mNo + "/cookRefunds/2";
	} else {
		location.href = mNo + "/cookEnds/3";
	}

}
function getClassList(no) {
	if (no == 1) {
		location.href = mNo + "/standByClasses/1";
	} else if (no == 2) {
		location.href = mNo + "/ongoingClasses/2";
	} else {
		location.href = mNo + "/completeClasses/3";
	}

}
function getRegistPage(page){

		location.href = mNo + "/"+page+"/1";
	
}