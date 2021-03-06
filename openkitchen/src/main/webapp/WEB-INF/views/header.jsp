<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

      
<div id="header">
    <div>
        <a href="<c:url value='/index'/>"><img src="<c:url value='/resources/img/icon/teamLogo77.jpg'/>" alt="" /> </a>
    </div>
    <h3><a href="<c:url value='/classIn'/>">클래스</a></h3>
    
    <h3><a href="<c:url value='/teacherIn'/>">선생님</a></h3>
    <h3><a href="<c:url value='/spaceIn'/>">공간</a></h3>
    <div id="serch">
        <img src="<c:url value='/resources/img/icon/serch.png'/>" alt="serch">
        <input type="text" name="" id="" value="" placeholder="나와 맞는 공간을 찾아볼까?" />
    </div>
    
    <div>
        <img src="<c:url value='/resources/img/icon/heart.png'/>" alt="heart">
    </div>
        
    <div>
        <img src="<c:url value='/resources/img/icon/expansion.png'/>" alt="expansion" id="header_user">
    </div>
    <div id="header_nav">
            <ul>
                <li><a href="#">공공의주방 이야기</a></li>
                <li><a href="#">공지사항</a></li>
                <li><a href="#">이벤트</a></li>
                <li><a href="<c:url value="/questions"/>">자주하는 질문</a></li>
            </ul>
            <ul>
                <sec:authorize access="isAnonymous()"><li><a href="<c:url value='/login'/>">로그인</a></li></sec:authorize>
                <sec:authorize access="isAuthenticated()">
                	<li id="logoutBtn"><a href="<c:url value='/logout'/>">로그아웃</a></li >
                	</sec:authorize>
                	<!-- <li id="logoutBtn">로그아웃</li > -->
                <sec:authorize access="hasRole('ROLE_ADMIN')"><li><a href="<c:url value='/admin/in'/>">관리자 페이지</a></li></sec:authorize>
                <sec:authorize access="isAuthenticated()"><li><a href="<c:url value='/mypage/in'/>">마이페이지</a></li></sec:authorize>
                <sec:authorize access="isAnonymous()"><li><a href="<c:url value="/signUp"/>">회원가입</a></li></sec:authorize>
            </ul>
        </div>
</div>
