<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:url value="/common/customLogout" />
	<form action="<c:url value="/common/customLogout" />" method="post">
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
	    <input type="submit" value="로그아웃" />
	</form>
</body>
</html>