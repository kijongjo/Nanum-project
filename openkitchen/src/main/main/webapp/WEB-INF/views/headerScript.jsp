<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
window.onload=function(){
    var $header_user = $("#header_user");
    var $header_nav = $("#header_nav");
    var header_nav_togle_cnt = 0;
    $header_user.on("click",function(){
    	
        if(header_nav_togle_cnt %2 === 0 ){
            $header_nav.css("display","block");
            $header_user.attr("src","<c:url value='/resources/img/icon/expansion-On.png'/>");
        }else{
            $header_nav.css("display","none");
            $header_user.attr("src","<c:url value='/resources/img/icon/expansion.png'/>");
        }
        header_nav_togle_cnt++;
    });



	
	var $kakaoLogin = $("#kakao-login-btn");
	var $Logout = $("#logoutBtn");
	
	var userIdCode = "";
	
	document.cookie = '_kadub=; expire=2017; domain=accounts.kakao.com;  path=/';

	/* CT3zYfTU96JGec5r_1586776139893
	도메인
	accounts.kakao.com
	경로
	/ */
	
	
	/* 카카오 로그인 처리 */
	$kakaoLogin.on("click",function(){
			/* 로그인 성공시  */
		Kakao.Auth.login({
			  success: function(response) {
			    var access_token = response.access_token;
			    var refresh_token = response.refresh_token;
			    console.log(access_token);
			    console.log(refresh_token);
			    console.log(response+"성공");
			  },
			  fail: function(error) {
			    console.log("에러");
			  },
			});
		
	
	})/* 카카오 로그인 이벤트 처리 end */
	
	/* 카카오 로그아웃 */
	$Logout.on("click",function(){
		if (!Kakao.Auth.getAccessToken()) {
		  console.log('로그인 상태가 아닙니다.');
		  return;
		}else{
			
			/* 토큰 만료 */
			console.log(Kakao.Auth.logout());
			/* doit(); */
			/* console.log(shim); */
		}
	})
	
	
}

/* function doit() {
    var shim = {
      _data: {},
      setItem: function setItem(id, val) {
        return this._data[id] = String(val);
      },
      getItem: function getItem(id) {
        return this._data.hasOwnProperty(id) ? this._data[id] : null;
      },
      removeItem: function removeItem(id) {
        return delete this._data[id];
      },
      clear: function clear() {
        return this._data = {};
      }
} */


</script>