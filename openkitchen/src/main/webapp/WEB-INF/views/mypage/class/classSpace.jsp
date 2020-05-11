<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="contents_border">
	<ul>
		
	</ul>
	<input type="hidden" id="cNo" value="${cNo}" />
	<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
	<!-- submit -->
	<div id="btn-form-wrap">
		<input type="button" value="다음" id="complete"> <input
			type="button" value="돌아가기" id="go">
	</div>
	  <div class="wrap-loading display-none">

    <div><i class="fas fa-spinner fa-spin fa-4x "></i></div>
</div>   
</div>