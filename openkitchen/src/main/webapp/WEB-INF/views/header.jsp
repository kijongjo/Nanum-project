<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="header">
    <div>
        <a href="index"><img src="<c:url value='/resources/testimg/logo.png'/>" alt="" /> </a>
    </div>
    <h3><a href="classIn">클래스</a></h3>
    <h3><a href="teacherIn">선생님</a></h3>
    <h3><a href="spaceIn">공간</a></h3>
    <div id="serch">
        <img src="<c:url value='/resources/testimg/icon/serch.png'/>" alt="serch">
        <input type="text" name="" id="" value="">
        <span>나와 맞는 공간을 찾아볼까?</span>
    </div>
    
    <div>
        <img src="<c:url value='/resources/testimg/icon/heart.png'/>" alt="heart">
    </div>
        
    <div>
        <img src="<c:url value='/resources/testimg/icon/expansion.png'/>" alt="expansion">
    </div>
   
</div>