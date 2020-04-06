<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="header">
    <div>
        <a href="index"><img src="<c:url value='/resources/img/icon/logo.png'/>" alt="" /> </a>
    </div>
    <h3><a href="<c:url value='/classIn'/>">클래스</a></h3>
    
    <h3><a href="<c:url value='/teacherIn'/>">선생님</a></h3>
    <h3><a href="<c:url value='/spaceIn'/>">공간</a></h3>
    <div id="serch">
        <img src="<c:url value='/resources/img/icon/serch.png'/>" alt="serch">
        <input type="text" name="" id="" value="">
        <span>나와 맞는 공간을 찾아볼까?</span>
    </div>
    
    <div>
        <img src="<c:url value='/resources/img/icon/heart.png'/>" alt="heart">
    </div>
        
    <div>
        <a href="<c:url value='/mypage/in'/>"><img src="<c:url value='/resources/img/icon/expansion.png'/>" alt="expansion"></a>
    </div>
    <div id="header_nav">
            <ul>
                <li><a href="#">공공의주방 이야기</a></li>
                <li><a href="#">공지사항</a></li>
                <li><a href="#">이벤트</a></li>
                <li><a href="#">자주하는 질문</a></li>
                <li><a href="<c:url value='/admin/in'/>">관리자 페이지</a></li>
            </ul>
            <ul>
                <li><a href="<c:url value='/login'/>">로그인</a></li>
                <li><a href="#">회원가입</a></li>
                <li><a href="#">로그아웃</a></li>
            </ul>
        </div>
</div>
