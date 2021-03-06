<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/Header.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/footer.css'/>">
    <style>
        #lay03spaceRegister1{
        display: grid;
        grid-template-columns: 285px 1fr;
        width: 1200px;
        margin: 0 auto;
        }
        #lay03spaceRegister1 #left01{
            width: 100%;
        }
        #lay03spaceRegister1 #left01>div:nth-child(1){
            width: 100%;
            height: 222px;
            margin-bottom: 60px;
        }
        #lay03spaceRegister1 #left01>div>p:nth-child(1){
            height: 24px;
            font-size: 16px;
            /* color: red; */
        }
        #lay03spaceRegister1 #left01>div> h1{
            font-size: 30px;
            height: 86px;
        }
        #lay03spaceRegister1 #left01>div>p:nth-child(3){
            width: 219px;
            height: 48px;
            margin: 24px 0px 0px;
            font-size: 15px;
            /* color: blue; */
        }
        #lay03spaceRegister1 #left01>div>a:nth-child(4){
            display: inline-block;
            height: 24px;
            font-size: 15px;
            margin: 16px 0px 0px;
            color: #838383;
        }
        #lay03spaceRegister1 #left01>div:nth-child(2) a{
            display: block;
        }

        #lay03spaceRegister1 #left01>div:nth-child(2) .active{
            color: black;
            font-size: 17px;
            margin: 0px 0px 20px;
            padding: 0px 0px 2px;
            height: 30px;
            font-weight: 900;
            position: relative;
            z-index : 1;
        }
        #lay03spaceRegister1 #left01>div:nth-child(2) .active::before{
            content: "";
            position: absolute;
            left: 0;
            bottom: 0;
            height: 1px;
            width: 85px;
            border-bottom: 3px solid #8e0032;
        }
        #lay03spaceRegister1 #left01>div:nth-child(2) .dim{
            color: black;
            font-size: 17px;
            margin: 0px 0px 20px;
            padding: 0px 0px 2px;
            height: 30px;
        }
        #lay03spaceRegister1 #left01 .guideLineI>img{
            width: 15px;
            height: 15px;
            margin: -3px 0px 0px 6px;
            position: relative;
            top: 2px;
        }
        #lay03spaceRegister1 #left01>div:nth-child(2) img{
            width: 18px;
            height: 18px;
            margin: 0px 0px 0px 6px;
            position: relative;
            top: 3px;
        }
        #lay03spaceRegister1 #right01>div {
            background-color: #f6f5f5;
            width: 965px;
            /* margin: -46px 0px -120px; */
            padding: 45px 0px 120px 60px;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(1){
            width: 100%;
            height: 81px;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(1) span{
            font-size: 15px;
            margin: 0px 0px 8px;
            color: #5b5b5b;
            display: block;
            font-weight: bold;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(1) input[type="text"]{
            width: 100%;
            padding: 0px 20px;
            background: rgba(255, 255, 255, 0.6);
            font-weight: bold;
            border: none;
            height: 50px;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(1) input[type="text"]:focus{
            outline: none;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(2){
            height: 66px;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(2)>span:nth-child(1){
            display: block;
            height: 22px;
            font-size: 15px;
            font-weight: bold;
            color: #5b5b5b;
            margin: 40px 0px 8px;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(2)>span:nth-child(3){
            margin-left: 20px;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(2) input[type="radio"]{
            display: none;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(2) input[type="radio"] + label{
            position: relative;
            padding-left: 25px;
            cursor: pointer;
            font-size: 15px;
            color: #838383;
            font-weight: 700;
            margin-top: 15px;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(2) input[type="radio"] + label::before{
            content: '';
            width: 18px;
            height: 18px;
            margin-right: 10px;
            position: absolute;
            top: -2px;
            left: 0;
            background-color: white;
            text-align: center;
            border: 0.5px solid #838383;
            border-radius: 9px;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(2) input[type="radio"]:checked + label::before{
            content: '';
            font-size: 15px;
            font-weight: 900;
            /* color: red; */
            background-color: #8e0032;
            text-align: center;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(2) input[type="radio"]:checked + label::after{
            content: '';
            position: absolute;
            top: 4px;
            left: 6px;
            width: 7px;
            height: 7px;
            background-color: white;
            border-radius: 3.5px;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(2) input[type="radio"]:checked + label{
            color: black;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(3){
            height: 430px;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(3)>span:nth-child(1){
            display: block;
            height: 22px;
            font-size: 15px;
            font-weight: bold;
            color: #5b5b5b;
            margin: 40px 0px 8px;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(3)>span:nth-child(1)>span{
            float: right ;
            font-size: 15px;
            font-weight: bold;
            color: #5b5b5b;
            margin-right: 10px;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(3) textarea{
            width: 100%;
            background: #ffffff;
            padding: 20px;
            border: none;
            resize: none;
            font-weight: bold;

        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(3) textarea::placeholder{
            color: #b7b7b7;
            font-size: 15px;
            font-weight: bold;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(3) textarea:focus{
            border: 2px solid #8e0032;
            outline: none;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(4){
            height: 67px;
            margin-top: 30px;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(4)>span:nth-child(1){
            display: block;
            height: 22px;
            font-size: 15px;
            font-weight: bold;
            color: #5b5b5b;
            margin: 0px 0px 8px;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(4)> span:nth-child(n+3){
            margin-left: 20px;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(4) input[type="radio"]{
            display: none;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(4) input[type="radio"] + label{
            position: relative;
            padding-left: 25px;
            cursor: pointer;
            font-size: 15px;
            color: #838383;
            font-weight: 700;
            margin-top: 15px;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(4) input[type="radio"] + label::before{
            content: '';
            width: 18px;
            height: 18px;
            margin-right: 10px;
            position: absolute;
            top: -2px;
            left: 0;
            background-color: white;
            text-align: center;
            border: 0.5px solid #838383;
            border-radius: 9px;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(4) input[type="radio"]:checked + label::before{
            content: '';
            font-size: 15px;
            font-weight: 900;
            /* color: red; */
            background-color: #8e0032;
            text-align: center;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(4) input[type="radio"]:checked + label::after{
            content: '';
            position: absolute;
            top: 4px;
            left: 6px;
            width: 7px;
            height: 7px;
            background-color: white;
            border-radius: 3.5px;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(4) input[type="radio"]:checked + label{
            color: black;
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(5){
            height: 120px;
            /* background: blue; */
        }
        #lay03spaceRegister1> #right01 .inp-wrp:nth-child(5)>span:nth-child(1){
            display: block;
            height: 22px;
            font-size: 15px;
            font-weight: bold;
            color: #5b5b5b;
            margin: 40px 0px 8px;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(5) input[type="text"]{
            width: 100%;
            padding: 0px 20px;
            background: rgba(255, 255, 255, 0.6);
            font-weight: bold;
            border: none;
            height: 50px;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(5) input[type="text"]::placeholder{
            color: #b7b7b7;
            font-size: 15px;
            font-weight: bold;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(5) input[type="text"]:focus{
            outline: none;
            border: 2px solid #8e0032;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(6){
            height: 80px;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(6)>span:nth-child(1){
            display: block;
            height: 22px;
            font-size: 15px;
            font-weight: bold;
            color: #5b5b5b;
            margin: 10px 0px 8px;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(6) select{
            width: 100%;
            height: 50px;
            padding: 0px 20px;
            border: none;
            font-weight: 900;
            font-family: 'Roboto','Noto Sans', 'Noto Sans KR', sans-serif;
            color: gray;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(6) select:focus{
            outline: none;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(6) option{
            color: gray;
            font-family: 'Roboto','Noto Sans', 'Noto Sans KR', sans-serif;
            font-weight: 700;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(7){
            height: 80px;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(7)>span:nth-child(1){
            display: block;
            height: 22px;
            font-size: 15px;
            font-weight: bold;
            color: #5b5b5b;
            margin: 30px 0px 8px;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(7) input[type="text"]{
            width: 100%;
            padding: 0px 20px;
            background: rgba(255, 255, 255, 0.6);
            font-weight: bold;
            border: none;
            height: 50px;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(7) input[type="text"]::placeholder{
            color: #b7b7b7;
            font-size: 15px;
            font-weight: bold;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(7) input[type="text"]:focus{
            outline: none;
            border: 2px solid #8e0032;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(8){
            height: 80px;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(8)>span:nth-child(1){
            display: block;
            height: 22px;
            font-size: 15px;
            font-weight: bold;
            color: #5b5b5b;
            margin: 30px 0px 8px;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(8) input[type="text"]{
            width: 100%;
            padding: 0px 20px;
            background: rgba(255, 255, 255, 0.6);
            font-weight: bold;
            border: none;
            height: 50px;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(8) input[type="text"]::placeholder{
            color: #b7b7b7;
            font-size: 15px;
            font-weight: bold;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(8) input[type="text"]:focus{
            outline: none;
            border: 2px solid #8e0032;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(9){
            height: 80px;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(9)>span:nth-child(1){
            display: block;
            height: 22px;
            font-size: 15px;
            font-weight: bold;
            color: #5b5b5b;
            margin: 30px 0px 8px;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(9) input[type="file"]{
            position:absolute;
            width: 1px; 
            height: 1px; 
            padding: 0; 
            margin: -1px; 
            overflow: hidden; 
            border: 0;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(9) label{
            display: inline-block;
            cursor: pointer;
            border-radius: 3px;
            height: 50px;
            width: 905px;
            padding: 0px 30px 0px 20px;
            background-color: white;
        }
        #lay03spaceRegister1 #right01 .inp-wrp:nth-child(9) label span{
            font-weight: bold;
            font-size: 15px;
            position: relative;
            top: 13px;
            color: #b7b7b7;
        }
        #lay03spaceRegister1 #right01 #btn-form-wrap{
            height: 64px;
            margin: 100px 0px 0px;
        }
        #lay03spaceRegister1 #right01 #btn-form-wrap input[type="submit"]{
            float: right;
            font-size: 18px;
            height: 64px;
            width: 168px;
            border-radius: 3px;
            border: none;
            cursor: pointer;
        }
        #lay03spaceRegister1 #right01 #btn-form-wrap input[type="submit"]:nth-child(1){
            background: #8e0032;
            color: white;
            margin-left: 12px;
        }
        #lay03spaceRegister1 #right01 #btn-form-wrap input[type="submit"]:nth-child(2){
            background: white;
            color: #2e2e2e;
        }

    </style>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script type="text/javascript">
        function fileName(){
            var fileValue = $("#bankBook").val().split("\\");
            var fileName = fileValue[fileValue.length-1]; // 파일명
            console.log(fileValue);
            console.log(fileName);
            $("#bankBookImg").html(fileName);
        }
        $(function(){
            $('.introduce').keyup(function (e){
                var content = $(this).val();
                $('#introduce-counting').html(content.length+" / 1500");    //글자수 실시간 카운팅

                if (content.length > 1500){
                    alert("최대 1500자까지 입력 가능합니다.");
                    $(this).val(content.substring(0, 1500));
                    $('#introduce-counting').html("1500 / 1500");   
                }
            });
        });

    </script>
    
</head>
<body>
	<jsp:include page="../../header.jsp" flush="false" />
    <div id="lay03spaceRegister1">
        <section id="left01">
            <div>
                <p>마이페이지</p>
                <h1>공간<br>등록하기</h1>
                <p>공간을 등록하기 전에 가이드라인과 <br>운영원칙을 확인해주세요</p>
                <a href="" >
                    가이드라인 확인하기
                    <i class="guideLineI"><img src="../img/ico-tooltip.png" alt=""></i>
                </a>
            </div>
            <div>
                <a href="" class="active">기본정보<img src="../img/red-check.png" alt=""></a>
                <!-- 임시방편으로 a태그에 넣은거임  -->
                <a href="spaceIntro" class="dim">공간소개<img src="../img/gray-check.png" alt=""></a>
                <a href="" class="dim">공유일정<img src="../img/gray-check.png" alt=""></a>
            </div>
        </section>
        <section id="right01">
            <div>
                <form action="">
                <div class="inp-wrp">
                    <span>이름</span>
                    <input type="text" name="" id="" readonly="readonly">
                </div>
                <div class="inp-wrp">
                    <span>성별</span>
                    <span>
                        <input type="radio" name="gender" id="manS"><label for="manS">남자</label>
                    </span>
                    <span>
                        <input type="radio" name="gender" id="womanS"><label for="womanS">여자</label>
                    </span>
                </div>
                <div class="inp-wrp">
                    <span>자기소개<span id="introduce-counting">0/1500</span></span>
                    <textarea name="" class="introduce" id="" cols="30" rows="18" maxlength="1500" placeholder="공공의주방은 수강생, 선생님, 호스트와의 관계를 기반으로 만들어졌습니다. 호스트가 어떤 사람인지 친절하게 알려주세요&#13;&#10;예시 : 반갑습니다. 저는 잠실에서 쿠킹스튜디오, OOO라는 공간을 운영하고 있습니다. 평소 요리를 너무 좋아하고 가끔 수업도 합니다. 평소 이 공간은 요리수업이 진행되는 곳으로 보다 다양한 선생님들의 수업이 진행되면 좋을 것 같아 공간을 공유합니다."></textarea>
                </div>
                <div class="inp-wrp">
                    <span>사업자 유형</span>
                    <span>
                        <input type="radio" name="provider" id="personal"><label for="personal">개인</label>
                    </span>
                    <span>
                        <input type="radio" name="provider" id="normal"><label for="normal">일반과세자</label>
                    </span>
                    <span>
                        <input type="radio" name="provider" id="notax"><label for="notax">면세사업자</label>
                    </span>
                    <span>
                        <input type="radio" name="provider" id="simpleTax"><label for="simpleTax">간이과세자</label>
                    </span>
                </div>
                <div class="inp-wrp">
                    <span>대표자명</span>
                    <input type="text" name="" id="" placeholder="텍스트를 입력해 주세요.">
                </div>
                <div class="inp-wrp">
                    <span>은행/증권사 선택</span>
                    <select name="" id="">
                        <option value=>선택해주세요</option>
                        <option value="">국민</option>
                        <option value="">기업</option>
                        <option value="">농협</option>
                        <option value="">산업</option>
                        <option value="">신한</option>
                        <option value="">우리</option>
                        <option value="">한국씨티</option>
                        <option value="">KEB하나</option>
                        <option value="">SC제일</option>
                        <option value="">경남</option>
                        <option value="">광주</option>
                        <option value="">대구</option>
                        <option value="">부산</option>
                        <option value="">새마을금고</option>
                        <option value="">수협</option>
                        <option value="">신협</option>
                        <option value="">우체국</option>
                        <option value="">전북</option>
                        <option value="">제주</option>
                        <option value="">카카오뱅크</option>
                        <option value="">케이뱅크</option>
                    </select>
                </div>
                <div class="inp-wrp">
                    <span>계좌번호</span>
                    <input type="text" name="" id="" placeholder="‘ - ’ 제외하고 숫자만 입력해주세요">
                </div>
                <div class="inp-wrp">
                    <span>예금주 명</span>
                    <input type="text" name="" id="" placeholder="입력해주세요">
                </div>
                <div class="inp-wrp">
                    <span>통장 사본 첨부</span>
                    <input type="file" name="" id="bankBook" placeholder="이미지를 첨부해주세요" onchange="fileName()"><label for="bankBook"><span id="bankBookImg">사진 첨부 하기(클릭)</span></label>
                </div>

                <div id="btn-form-wrap">
                    <input type="submit" value="다음">
                    <input type="submit" value="임시저장">
                </div>
            </form> 
            </div>
        </section>
    </div>
    <jsp:include page="../../footer.jsp" flush="false" />
</body>
</html>