var mNo;
var contextPath;
$(function(){
	
	console.log($("#mNo").val());
	contextPath=getContextPath();
})

function getContextPath() {
  var hostIndex = location.href.indexOf( location.host ) + location.host.length;
  return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
};
function moveToMypage(){
	// session값 가져오기 session에 mNo가 담겨져있는지 유무는 security에서 판단해 처리함.
	mNo = $("#mNo").val();
	location.href=contextPath+"/mypage/users/"+mNo;
}

