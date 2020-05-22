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
<link rel="stylesheet" href="<c:url value="/resources/css/reset.css" />">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style>
body{
    line-height: 1.3;
}
p{
    line-height: 27.9px;
    font-size: 18px;
    font-weight: 200;
    word-break: keep-all;
}
h2{
    margin-bottom: 30px;
    width: 350px; height: 40px;
    font-weight: 800;
    font-size: 30px;
    letter-spacing: -0.025em;
    line-height: 39px;
}
#loginBox{
    width: 350px;
    margin: 0 auto;
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

/* sns login */
#loginBox > div:nth-child(4){
    border-top: 1px solid #e5e5e5;
    margin-top: 50px;
    padding-top: 50px;
}
#loginBox > div:nth-child(4) div{
    border-radius: 10px;
}
#loginBox > div:nth-child(4) div:nth-child(1){
    border: 2px solid #405ea8;
}

#loginBox > div:nth-child(4) div:nth-child(n+2){
    margin-top: 8px;
}
#loginBox > div:nth-child(4) div:nth-child(2){
    border: 2px solid #4fae48;
}
#loginBox > div:nth-child(4) div:nth-child(3){
    border: 2px solid #efda43;
}

/* sns login link */
#loginBox > div:nth-child(4) div a{
    position: relative;
    display: block;
    padding: 13px 0;
    font-weight: 400;
    font-size: 15px;
    text-align: center;
    border-radius: 3px;
    line-height: 18px;
}

#loginBox > div:nth-child(4) div:nth-child(1) a::before{
    content: "";
    position: absolute;
    left: 75px;
    width: 10px; height: 17px;
    background-image: url("../icon/facebook_Color.png");
    background-size: 100%;
}
#loginBox > div:nth-child(4) div:nth-child(2) a::before{
    content: "";
    position: absolute;
    top: 15px; left: 75px;
    width: 13px; height: 18px;
    background-image: url("../icon/naver_Color.png");
    background-size: 100%;
    background-repeat: no-repeat;
}
#loginBox > div:nth-child(4) div:nth-child(3) a::before{
    content: "";
    position: absolute;
    top: 16px; left: 75px;
    width: 13px; height: 18px;
    background-image: url("../icon/kakao_Color.png");
    background-size: 100%;
    background-repeat: no-repeat;
}
</style>
<jsp:include page="../headerScript.jsp" flush="false" />
</head>
<body>
<jsp:include page="../header.jsp" flush="false" />
    <div id="loginBox">
        <h2>이메일 찾기</h2>
        <p>
            회원정보에 등록되어 있는 이름과 <br/>
            이메일로 계정을 찾을 수 있습니다.
        </p>
        <table>
            <tr>
                <td>
                    <input type="text" name="" id="">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" name="" id="">
                </td>
            </tr>
            <tr>
                <td id="login_submit">
                    <input type="submit" value="다음단계로">
                </td>
            </tr>
        </table>
    </div>
</body>
</html>