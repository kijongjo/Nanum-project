<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans|Noto+Sans+KR|Open+Sans|Roboto&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="reset.css">
	<link rel="stylesheet" href="lay03_sideBar.css">
	
    <style>
      

        /* 오른쪽 */
        #point{
            background-color: #F6F5F5;
            padding: 40px;
            overflow: hidden;
        }
        #point p:nth-child(n+2){
            font-size: 13px;
            line-height: 22px;
        }
        #point div{
            margin: 10px 0 30px;
            color: #8e0032;
            font-size: 53px
        }
        #point span{
            margin-top: -20px;
            font-size: 15px;
            float: right;
        }


        #right01 > div:nth-child(2){
            overflow: hidden;
        }
        #right01 > div:nth-child(2) {
            padding: 20px 23px 20px 0;
            font-weight: 600;
            font-size: 17px;
            /* border-bottom: 1px solid #F6F5F5; */
            border-bottom: 3px solid #F6F5F5;
            text-align: right;
            position: relative;
        }
        #right01 > div:nth-child(2)::after {
            content: "";
            position: absolute; top: 23px; right: 0;
            display: block;
            width: 15px; height: 15px;
            background-image: url("../icon/ico-more.png");
            background-size: 15px;
        }
        #table{
            display: table;
            height: 354px;
            width: 100%;
        }
        #table div{
            font-size: 20px;
            display: table-cell;
            vertical-align: middle;
            padding: 100px 0;
            text-align: center;
            font-weight: 400;
        }
    </style>
</head>
<body>
    <div id="lay03">
        <section id="left01">
            <p>마이 페이지</p>
            <h1>포인트</h1>
        </section>
        <section id="right01">
            <div id="point">
                <p>사용가능 포인트</p>
                <div>0P</div>
                <p>• 적립된 포인트는 유효기간 만료일까지 사용 가능합니다.</p>
                <p>• 최근 24개월 포인트 적립/사용 내역을 확인할 수 있습니다.</p>
                <span>30일 이내 만료예정 : 0P</span>
            </div>
            <div>전체</div>
            <div>
                <div id="table">
                    <div>
                        포인트 내역이 없어요
                    </div>
                    <table>
                        <tr>
                            
                        </tr>
                    </table>
                </div>
            </div>
        </section>
    </div>
</body>
</html>