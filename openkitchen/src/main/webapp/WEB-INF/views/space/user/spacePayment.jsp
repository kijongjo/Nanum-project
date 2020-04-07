<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value='/resources/css/Header.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/footer.css'/>">
    <style>
        /* section{border: 1px solid;} */
        /* 섹션 나누기 */
        #lay03{
            display: grid;
            grid-template-columns: 770px 1fr;
            width: 1200px;
            /* height: 2000px; */
            margin: 0 auto;
            /* background-color: gray; */
        }
        /* 오른쪽 결제창 전체 감싸고 있는 섹션 속성 */
        #lay03 > #right01{
            position: sticky;
            top: 10px;
            /* background-color: blue; */
            margin-left: 60px;
            width: 370px;
            height: 293px;
            padding: 50px 0px;
            /* grid-column: 1/2;
            grid-row: 2/3; */
        }
        /* footer 삽입시 너무 꽉차 보이는것을 방지 하기 위한 margin 추후 수정 필요 */
        #lay03 > #left01{
            margin-bottom: 200px;
        }
        /* 신청 내역 섹션 */
        #lay03 >#left01 > #apply01{
            height: 223px;
            padding: 20px 0px 50px 0px;
            /* background-color: orange; */
            border-bottom: 2px lightgray solid;
        }
        /* 신청 내역에 이미지 크기 */
        #lay03 #apply01 img{
            width: 130px;
            height: 130px;
            /* float: left; */
       }
       /* 신청 내역에 li 스타일 삭제 */
       #lay03 #apply01 li {
           list-style: none;
       }
       /* 신청 내역 h2태그 */
       #lay03 #apply01 h2{
           height: 36px;
           margin: 0px 0px 25px;
       }
       /* 신청 내역의 ul */
       #lay03 #apply01 ul{
           float: left;
           margin: 0px;
           padding: 0px;
       }
       /* 신청내역의 타이틀 */
       #lay03 #apply01 ul #li-title{
           height: 32px;
           margin: 0px 0px 10px;
           font-size: 22px;
           font-weight: 600;
       }
       /* 신청내역의 금액 */
       #lay03 #apply01 ul #li-price{
           height: 24px;
           margin: 6px 0px 0px;
           font-size: 20px;
           font-weight: 500;
       }
       /* 신청 내역의 금액의 ₩ 부분 */
       #lay03 #apply01 ul #li-price em{
           color: #8E0032;
           font-style: normal;
           margin: 0px 5px 0px 0px;
       }
       /* 신청내역의 금액 아래부분 */
       #lay03 #apply01 ul table{
           margin-top: 10px;
       }
       /* 신청 내역의 금액 아래부분의 왼쪽 row */
       #lay03 #apply01 ul table th{
           width: 75px;
           height: 28px;
           color: #838383;
           font-size: 15px;
           padding: 0px;
           text-align: left;
           font-weight: bold;
       }
       /* 신청내역의 금액 아래쪽 부분의 오른쪽 row */
       #lay03 #apply01 ul table td{
           font-size: 15px;
           padding: 0px;
           font-weight: bold;
       }
       /* 신청자 정보 섹션 */
       #lay03 > #left01 > #apply02  {
           height: 489px;
           padding: 50px 0px;
           border-bottom: 2px lightgray solid;
       }
       /* 쿠폰 마일리지 섹션 */
       #lay03 > #left01 > #apply03 {
           height: 379px;
           padding: 50px 0px;
           border-bottom: 2px lightgray solid;
       }
       /* 쿠폰/포인트/마일리지 h3 태그 */
       #lay03 > #left01 > #apply03 h3{
           height: 32px;
           margin: 0px 0px 30px;
           padding: 15px 0px 10px;
           font-size: 22px;
           font-weight: 900;
       }
       /* 쿠포마 부분의 각각의 타이틀 */
       #lay03 > #left01 > #apply03 .cou-title{
           font-size: 20px;
           color: #838383;
           height: 22px;
           margin: 0px 0px 8px;
           font-weight: bold;
       }
       /* 쿠폰 부분을 감싸고 있는 div */
       #lay03 > #left01 > #apply03 #cou-div1{
           height: 83.33px;
       }
       /* 쿠폰 부분의 input:text */
       /* #lay03 > #left01 > #apply03 #cou-div1 select{ */
        #lay03 > #left01 > #apply03 input[type="text"], select{
           background-color: #F6F5F5;
           border: none;
           padding: 0px 20px;
           width: 100%;
           height: 54px;
           font-size: 15px;
           font-weight: 700;
           color: gray;
       }
       /* 포인트와 마일리지를 감싸고 있는 div */
       #lay03 > #left01 > #apply03 .cou-wrap{
            height: 84px;
            margin: 20px 0px 0px;
       }
       /* 포인트 마일리지를 감싸고 있는 div 안에 input:text */
       #lay03 > #left01 > #apply03 .cou-wrap> div input{
           /* width: 566px; */
           width: 73%;
           height: 54px;
           padding: 0px 20px;
           background-color: #F6F5F5;
           border: none;
       }
       /* 포인트 마일리지 안에 있는 잔여 부분 */
       #lay03 > #left01 > #apply03 .cou-wrap small{
           height: 26px;
           font-size: 18px;
           padding: 0px 0px 0px 15px;
           color: black;
           font-weight: 600;
       }
       /* 그 안에 있는 em 태그 */
       #lay03 > #left01 > #apply03 .cou-wrap em{
           font-style: normal;
       }
       /* 쿠포마 부분의 전체 사용 버튼  */
       #lay03 > #left01 > #apply03 .cou-wrap a >input{
           /* width: 150px; */
           width: 20%;
           height: 54px;
           background-color: #8E0032;
           color: white;
           margin: 0px 0px 0px 8px;
           padding: 0px;
           border: none;
           font-size: 20px;
           font-weight: bold;
       }
       /* 결제 페이지 오른쪽 창 */
       #asideApplyPayment{
        /* background-color: red; */
        height: 163px;
        margin: 7px 0px 0px;
        padding: 25px 25px 0px;
        border: 0.5px lightgray solid;
       }
       /* 오른쪽 결제창 결제금액(h3) 속성  */
       #asideApplyPayment h3{
           font-size: 22px;
           margin: 0px 0px 25px;
           padding: 15px 0px 10px;
           height: 58px;
           font-weight: 900;
       }
       /* 오른쪽 결제창 클래스 금액 관련 속성 */
       #right01 > #asideApplyPayment ul {
           padding: 0px;
           height: 54px;
           margin: 25px 0px 0px;
           padding: 0px 0px 30px;
        }
        /* 오른쪽 결제창 클래스 금액 속성 */
        #right01 > #asideApplyPayment ul li{
            height: 21px;
            font-size: 16px;
            font-weight: bold;
        }
         
       /* #rigtht01 > #asideApplyPayment span{ */

        /* 오른쪽 결제금액의 클래스 금액 오른쪽 금액(50,000원) */
        #rightUpSpan{
          /* position: relative;
          left: 160px; */
          float: right;
       }
       /* 결제 페이지 오른쪽 창 li 스타일 제거 */
       #asideApplyPayment li{
           list-style: none;
       }
       /* 결제 페이지 오른쪽 창 총 결제 금액 부분  */
       #rightPaymentP{
           height: 70px;
           padding: 20px 25px;
           margin: 0px;
           border: 0.5px solid lightgray;
           border-top: none;
           overflow: hidden;
       }
       /* 오른쪽 결제창 총 결제 금액 관련 속성 */
       #rightPaymentP strong{
        font-size: 18px;
        font-weight: bold;
       }
       /* 총 결제 금액 왼쪽 '총 결제 금액' 속성 */
       #rightDownSpan{
        font-size: 18px;
        font-weight: 500;
        /* position: relative;
        left: 110px; */
        float: right;
        height: 28.75px;
       }
       /* 총 결제 금액 오른쪽 액수 속성 */
       #rightDownSpan b{
        font-size: 27px;
        font-weight: 500;
        font-weight: bold;
       }

       /* 결제하기 버튼 */
       #right01 #payButton{
        padding: 0px;
        width: 100%;
        height: 54px;
        border: none;
        background-color: #D9D9D9;
        color: white;
        font-size: 18px;
        font-weight: 900;
        border-bottom-left-radius: 5px;
        border-bottom-right-radius: 5px;
       }

       /* 신청 내역 이미지 감싸고 있는 div */
        #applyDiv01{
            width: 160px;
            height: 130px;
            float: left;
        }
        #lay03 > #left01 > #apply04{
            height: 241px;
            padding: 50px 0px;
        }
        /* 결제 방법 선택을 감싼 큰 wrap div */
        #payWayWrap{
            width: 100%;
            height: 66px;
            /* background-color: gray; */
        }
        /* 결제 방법 선택의 각각의 div */
        .payWay{
            padding: 0px 5px;
            width: 32%;
            float: left;
        }
        /* 결제 방법 선택의 각각의 버튼 */
        .payWay input{
            width: 100%;
            height: 66px;
            margin-left: 0.5px;
            font-size: 22px;
            color: #2e2e2e;
            font-weight: bold;
            border: 0.5px gray solid;
            border-radius: 5px;
        }
        /* 결제 방법 선택의 버튼을 누를시 버튼의 테두리가 나오는것을 없앰 */
        .payWay input:focus{
            outline: none;
        }
        /* 결제 방법 선택 h3 태그*/
        #apply04 h3{
            height: 32px;
            margin: 0px 0px 30px;
            padding: 15px 0px 10px;
            font-size: 22px;
            font-weight: bold;
        }
        /* 결제 방법 선택에 체크박스 감싸고 있는div */
        #payWayCheck{
            height: 69px;
            margin: 20px 0px 0px;
        }
        /* 결제 방법 선택에 p태그 */
        #payWayCheck p{
            height: 18.4px;
            margin: 6px 0px 0px;
            padding: 0px 0px 0px 25px;
            font-size: 12px;
            font-weight: 600;
            color: #7f7f7f;
        }
        /* 결제 방법 선택에 체크박스 감싸고 있는 라벨 */
        #payWayCheck label{
            font-size: 16px;
            font-weight: 900;
            color: #7f7f7f;
        }
        /* 신청자 정보 배치 */
        #apply02>h3{
            height: 32px;
            margin: 0px 0px 30px;
            padding: 15px 0px 10px;
            font-size: 22px;
            font-weight: 900;
        }
        /* 신청자 정보 이름 배치 */
        #apply02Name{
            font-size: 15px;
            font-weight: bold;
            color: #838383;
            margin: 0px 0px 8px;
        }
        /* 신청자 정보의 텍스트 넓이 */
        #apply02Name input{
            width: 100%;
        }
        /* 신청자 정보 텍스트 */
        .apply02Input{
            width: 730px;
            height: 48px;
            padding: 0px 20px;
            border: none;
            background: #F6F5F5;
        }
        /* 신청자 정보의 성별을 감싸고 있는 wrap  */
        #apply02Gender{
            width: 100%;
            height: 66px;
            margin: 20px 0px 0px;
            font-size: 20px;
           font-weight: bold;
           color: #838383;
        }
        /* 신청자 정보 성별 배치 */
       #apply02Gender span{
        font-size: 15px;
        font-weight: bold;
        color: #838383;
        display: block;
        height: 22px;
        margin: 0px 0px 8px;
       }
       /* 신청자 정보 생년월일 p태그 */
       #apply02BirthP{
           font-size: 15px;
           font-weight: bold;
           color: #838383;
           height: 26px;
           margin: 0px 0px 10px;
       }
       /* 신청자 정보 생년월일 div margin  */
       #apply02Birth{
           margin-top: 30px;
       }
       /* 신청자 정보 생년월일의 input:text font 속성 */
       #apply02Birth input{
           font-size: 15px;
           font-weight: bold;
       }
       /* 신청자 정보 핸드폰번호 div margin */
       #apply02Phone{
           margin: 30px 0px 0px;
       }
       /* 신청자 정보 핸드폰번호 p태그 */
       #apply02Phone p{
            font-size: 15px;
            font-weight: bold;
            color: #838383;
           margin: 0px 0px 10px;
       }
       /* 신청자 정보 핸드폰 번호 2개의 input 감싸고 있는 div 정보 */
       #apply02Phone div{
          width: 100%; 
          height: 50px;
       }
       /* 신청자 정보 핸드폰 번호 input:text 정보 */
       #apply02Phone div >input:nth-child(1){
           width: 564px;
           height: 50px;
           padding: 0px 30px 0px 12px;
           border: none;
           background: #F6F5F5;
           font-size: 15px;
           font-weight: bold;
       }
       /* 신청자 정보 핸드폰 번호 input:button 정보 */
       #apply02Phone div> a>input{
           width: 147px;
           height: 50px;
           margin: 0px 0px 0px 8px;
           padding: 0px;
           background-color: #D9D9D9;
           color: white;
           border: none;
           font-size: 20px;
           font-weight: 900;
       }
    
        
    </style>
</head>
<body>
	<jsp:include page="../../header.jsp" flush="false" />
    <div id="lay03">
        <section id="left01">
            <section id="apply01">
                <h2>신청내역</h2>
                <div id="applyDiv01">
                    <img src="<c:url value='resources/img/icon/smileIcon.png' />" alt="">
                </div> 
                    <ul id="applyUl">
                        <li id="li-title">봄나물 밥과 달래장 & 떡갈비</li>
                        <li id="li-price"><em>₩</em>50000</li>
                        <table>
                            <tr>
                                <th>대여일</th>
                                <td>20.05.19 (화) / 10:30 - 12:30</td>
                            </tr>
                            <tr>
                                <th>호스트</th>
                                <td>노마의주방</td>
                            </tr>
                            <tr>
                                <th>주소</th>
                                <td>경기도 용인시 수지구 문인로31번길</td>
                            </tr>
                        </table>

                    </ul>
                 
            </section>
            <section id="apply02">
                <h3>신청자 정보</h3>
            <div>
                <span id="apply02Name">이름</span>
                <input type="text" name="" id="a" class="apply02Input">
            </div>
            <div id="apply02Gender">
                <span>성별</span>
                <!-- 라디오 버튼 성늘을 위한 name 입력(테스트) 수정 해도 됨 -->
                <input type="radio" name="appGen" id="" style="width: 18px; height: 18px;">남자
                <input type="radio" name="appGen" id="" style="width: 18px; height: 18px;">여자
                
            </div>
            <div id="apply02Birth">
                <p id="apply02BirthP">생년월일</p>
                <input type="text" name="" id="b" class="apply02Input" placeholder="8자리로 입력해 주세요(예시 : 19880101)">
            </div>
            <div id="apply02Phone">
                <p>핸드폰 번호 인증</p>
                <div>
                    <input type="text" name="" id="" placeholder="‘ - ’ 빼고 입력해주세요">
                    <a href=""><input type="button" value="인증번호 발송"></a>
                </div>
            </div>
             </section>
             <section id="apply03">
                <h3>쿠폰/포인트/마일리지</h3>
                <div id="cou-div1">
                    <p class="cou-title">쿠폰</p>
                    <select name="" id="">
                        <option value="">쿠폰을 선택해 주세요.</option>
                    </select>
                </div>
                <div class="cou-wrap">
                <p class="cou-title">
                    포인트 사용
                    <small>
                        잔여 포인트
                        <em>0</em>
                        P
                    </small>
                </p>
                <div>
                <input type="text" name="" id="d" placeholder="0원">
                <a href=""><input type="button" value="전체사용"></a>
                </div>
             </div>
            <div class="cou-wrap">
                <p class="cou-title">
                    마일리지 사용
                    <small>
                        잔여 마일리지
                        <em>0</em>
                        원
                    </small>
                </p>
                <div>
                <input type="text" name="" id="e" placeholder="0원">
                <a href=""><input type="button" value="전체사용"></a>
                </div>
            </div>
            </section>
            <section id="apply04">
                <h3>결제방법 선택</h3>
                <div id="payWayWrap">
                    <div class="payWay">
                        <input type="button" value="신용/체크카드" >
                    </div>
                    <div class="payWay">
                        <input type="button" value="계좌이체">
                    </div>
                    <div class="payWay">
                        <input type="button" value="휴대폰결제">
                    </div>
                </div>

                <!-- label사용을 위해서 임의로 id를 설정 !!! 바꿔야 할 상황에 바꾸면 됨 -->
                <div id="payWayCheck">
                    <label for="orderAgree" style="cursor: pointer;"><input type="checkbox" name="" id="orderAgree">주문내역 확인 동의(필수)</label>
                    <p>클래스/선생님/공간정보, 가격, 할인내역, 환불정책등을 최종확인하였으며, 구매에 동의하시겠습니까? (전자상거래법 제 8조 2항)</p>
                </div>

            </section>
        </section>
        <section id="right01">
            <div id="asideApplyPayment">
                <h3>결제 금액</h3>
                <ul>
                    <li>
                        <strong>클래스 금액</strong>
                        <span id="rightUpSpan">50,000원</span>
                    </li>
                </ul>
            </div>
            <div>
            <p id="rightPaymentP">
                <strong>총 결제 금액</strong>
                <span id="rightDownSpan">
                    <b>50,000</b>원
                </span>
            </p>
            </div>
            <a href=""><input type="button" value="결제하기" id="payButton" disabled></a>
        </section>
    </div>
    <jsp:include page="../../footer.jsp" flush="false" />
</body>
</html>