<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
window.onload=function(){
    var $header_user = $("#header_user");
    var $header_nav = $("#header_nav");
    var header_nav_togle_cnt = 0;
    $header_user.on("click",function(){
    	console.log("asd")
        if(header_nav_togle_cnt %2 === 0 ){
            $header_nav.css("display","block");
            $header_user.attr("src","<c:url value='/resources/img/icon/expansion-On.png'/>");
        }else{
            $header_nav.css("display","none");
            $header_user.attr("src","<c:url value='/resources/img/icon/expansion.png'/>");
        }
        header_nav_togle_cnt++;
    });
}
</script>