<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/footer.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/Header.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/sns-login.css'/>">
    <style>
        body{
            line-height: 1.3;
        }
        h2{
            margin-bottom: 30px;
            width: 350px; height: 40px;
            font-weight: 800;
            font-size: 30px;
        }
        #loginBox{
            width: 350px;
            margin: 0 auto 120px;
        }

        /* input 관련 */
        input{
            border: none;
        }
        table input{
            width: 100%;
            height: 50px;
            background-color: #F6F5F5;
            line-height: 1;
            color: #2e2e2e;
        }
        #login_submit input{
            background-color: #D9D9D9;
            color: #fff;
            font-size: 18px;
            line-height: 56px;
        }
        
        /* table */
        table{
            width: 350px;
        }
        table td{
            padding-top: 8px;
        }
        #login_submit{
            padding-top: 20px;
        }

        /* 찾기 / 회원가입 */
        #loginBox > div:nth-child(3){
            margin-top: 20px;
            display: flex;
        }
        #loginBox > div:nth-child(3) span{
            display: block;
            flex-grow: 1;
            text-align: center;
        }
        #loginBox > div:nth-child(3) span a{
            display: block;
            width: 90%;
            font-size: 14px;
            font-weight: 400;
            letter-spacing: -0.025em;
        }
        #loginBox > div:nth-child(3) > span:nth-child(1) > a,
        #loginBox > div:nth-child(3) > span:nth-child(2) > a{
            position: relative;
        }
        #loginBox > div:nth-child(3) > span:nth-child(1) > a::after,
        #loginBox > div:nth-child(3) > span:nth-child(2) > a::after{
            content: "";
            display: block;
            width: 1px; height: 13px;
            background-color: #2e2e2e;
            position: absolute; right: -5px; top: 5px;
        }

        
        
        
        
        </style>
</head>
<body>
	<jsp:include page="../header.jsp" flush="false" />
    <div id="loginBox">
        <h2>로그인</h2>
        <form action="" method="post">
        <table>
            <tr>
                <td><input type="text" name="email" id="eMail" value=""></td>
            </tr>
            <tr>
                <td><input type="text" name="memberPassword" id="" value=""></td>
            </tr>
            <tr>
                <td id="login_submit"><input type="submit" value="로그인"></td>
            </tr>
        </table>
        <div> 
            <span><a href="#">이메일 찾기</a></span>
            <span><a href="#">비밀번호 찾기</a></span>
            <span><a href="signUp">회원가입</a></span>
        </div>
		<div>${access}</div>
        <div id="sns_login">
            <div><a href="#">페이스북으로 로그인하기</a></div>
            <div><a href="#">네이버로 로그인하기</a></div>
            <div><a href="#">카카오로 로그인하기</a></div>
        </div>
        <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
        </form>
    </div>
	<jsp:include page="../footer.jsp" flush="false" />
</body>
</html>