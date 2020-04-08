<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<style>

            #right01 .inp-wrap:nth-child(1) {
                    height: 81px;
                }

             #right01 .inp-wrap:nth-child(1) span:nth-child(1) {
                    display: block;
                    height: 22px;
                    color: #5b5b5b;
                    font-size: 15px;
                    margin: 0px 0px 8px;
                    font-weight: 900;
                }

               #right01 .inp-wrap:nth-child(1) select {
                    width: 905px;
                    height: 50px;
                    background: white;
                    padding: 0px 20px;
                    font-weight: 900;
                    color: #b7b7b7;
                    font-size: 15px;
                    font-family: 'Roboto', 'Noto Sans', 'Noto Sans KR', sans-serif;
                    border: none;
                }

             #right01 .inp-wrap:nth-child(1) option {
                    font-family: 'Roboto', 'Noto Sans', 'Noto Sans KR', sans-serif;
                    font-weight: 900;
                    color: #b7b7b7;
                    font-size: 15px;
                    border: none;
                }

               #right01 .inp-wrap:nth-child(2) {
                    height: 123px;
                }

               #right01 .inp-wrap:nth-child(2)>span {
                    display: block;
                    height: 22px;
                    color: #5b5b5b;
                    font-size: 15px;
                    margin: 40px 0px 8px;
                    font-weight: 900;
                }

                #right01 .inp-wrap:nth-child(2)>div {
                    height: 50px;
                    width: 905px;
                    padding: 0px 32px 0px 12px;
                    background: white;
                }

                #right01 .inp-wrap:nth-child(2)>div>span {
                    font-size: 15px;
                    height: 46px;
                    color: #b7b7b7;
                    display: inline-block;
                    padding-top: 15px;
                }

             #right01 .inp-wrap:nth-child(2) div>div {
                    width: 736px;
                    height: 46px;
                    position: relative;
                    top: 2px;
                    /* background-color: yellow; */
                    padding: 9px 0px;
                    float: right;
                    text-align: right;
                }

           #right01 .inp-wrap:nth-child(2) div>div button {
                    width: 28px;
                    height: 28px;
                    /* background-color: pink; */
                    padding: 0;
                    border-radius: 14px;
                }

               #right01 .inp-wrap:nth-child(2) div>div button:focus {
                    outline: none;
                }

               #right01 .inp-wrap:nth-child(2) div>div button img {
                    width: 28px;
                    height: 28px;
                    margin: 0px;
                    border-radius: 14px;
                }

              #right01 .inp-wrap:nth-child(2) div>div button,
                span {
                    /* position: relative;
          bottom: 25px; */
                    margin: 0px;
                }
#right01 .inp-wrap:nth-child(2) div>div span {
                    display: inline-block;
                    width: 108px;
                    height: 19px;
                    font-size: 15px;
                    color: #2e2e2e;
                    text-align: center;
                    position: relative;
                    bottom: 8px;
                }

                #right01 .inp-wrap:nth-child(3) {
                    height: 120px;
                }

               #right01 .inp-wrap:nth-child(3) span:nth-child(1) {
                    display: block;
                    height: 22px;
                    color: #5b5b5b;
                    font-size: 15px;
                    margin: 0px 0px 8px;
                    font-weight: 900;
                }

                #right01 .inp-wrap:nth-child(3) input[type="text"] {
                    width: 905px;
                    padding: 0px 20px;
                    background: rgba(255, 255, 255, 0.6);
                    height: 50px;
                    font-size: 15px;
                    border: none;
                    font-weight: 900;
                }

                #right01 .inp-wrap:nth-child(3) input[type="text"]::placeholder {
                    color: #b7b7b7;
                }

                #right01 .inp-wrap:nth-child(3) input[type="text"]:focus {
                    outline: none;
                    border: 2px solid #8e0032;
                }

                #right01 .inp-wrap:nth-child(4) {
                    height: 120px;
                }

                #right01 .inp-wrap:nth-child(4) span:nth-child(1) {
                    display: block;
                    height: 22px;
                    color: #5b5b5b;
                    font-size: 15px;
                    margin: 0px 0px 8px;
                    font-weight: 900;
                }

                #right01 .inp-wrap:nth-child(4) span:nth-child(1)>span {
                    color: #7f7f7f;
                    font-size: 16px;
                    height: 22px;
                    float: right;
                    font-weight: 500;
                }

                #right01 .inp-wrap:nth-child(4) span:nth-child(1)>span em {
                    font-style: normal;
                }

               #right01 .inp-wrap:nth-child(4) input[type="text"] {
                    width: 905px;
                    padding: 0px 20px;
                    background: rgba(255, 255, 255, 0.6);
                    height: 50px;
                    font-size: 15px;
                    border: none;
                    font-weight: 900;
                }

                #right01 .inp-wrap:nth-child(4) input[type="text"]::placeholder {
                    color: #b7b7b7;
                }

               #right01 .inp-wrap:nth-child(4) input[type="text"]:focus {
                    outline: none;
                    border: 2px solid #8e0032;
                }

                #right01 .inp-wrap:nth-child(5) {
                    height: 81px;
                }

                #right01 .inp-wrap:nth-child(5) span:nth-child(1) {
                    display: block;
                    height: 22px;
                    color: #5b5b5b;
                    font-size: 15px;
                    margin: 0px 0px 8px;
                    font-weight: 900;
                }

                #right01 .inp-wrap:nth-child(5) span:nth-child(2) {
                    display: inline-block;
                    height: 50px;
                    width: 905px;
                    /* background-color: orange; */
                }

               #right01 .inp-wrap:nth-child(5) span:nth-child(2) input[type="text"] {
                    height: 50px;
                    width: 905px;
                    padding: 0px 20px;
                    background: rgba(255, 255, 255, 0.6);
                    height: 50px;
                    font-size: 15px;
                    border: none;
                    font-weight: 900;
                }

                #right01 .inp-wrap:nth-child(5) span:nth-child(2) input[type="text"]::placeholder {
                    color: #b7b7b7;
                }

               #right01 .inp-wrap:nth-child(5) span:nth-child(2) input[type="text"]:focus {
                    outline: none;
                    border: 2px solid #8e0032;
                }

                #right01 .inp-wrap:nth-child(5) span:nth-child(2) img {
                    margin: 0px;
                    width: 20px;
                    height: 20px;
                }

                #lay03spaceRegister2>#right01 .inp-wrap:nth-child(5) span:nth-child(2) button {
                    margin: 0px;
                    padding: 0px;
                    width: 20px;
                    height: 20px;
                    float: right;
                    position: relative;
                    bottom: 35px;
                    right: 20px;
                }

                #lay03spaceRegister2>#right01 .inp-wrap:nth-child(5) span:nth-child(2) button:focus {
                    outline: none;
                }

                #lay03spaceRegister2>#right01 .inp-wrap:nth-child(6) {
                    height: 700.5px;
                    margin-top: 80px;
                }

                #lay03spaceRegister2>#right01 .inp-wrap:nth-child(6)>span:nth-child(1) {
                    display: block;
                    height: 22px;
                    color: #5b5b5b;
                    font-size: 15px;
                    margin: 40px 0px 8px;
                    font-weight: 900;
                }

               #right01 .inp-wrap:nth-child(6)>div {
                    width: 905px;
                    height: 650.5px;
                    padding: 20px;
                    background-color: white;
                }

                #right01 .inp-wrap:nth-child(6)>div p {
                    color: #b7b7b7;
                    font-size: 15px;
                    font-weight: 600;
                }

               #right01 .inp-wrap:nth-child(6)>div>div:nth-child(2) {
                    /* background-color: pink; */
                    width: 427.5px;
                    height: 294.91px;
                    margin-top: 25px;
                    padding-right: 5px;
                    /* display: inline-block; */
                    float: left;
                }

               #right01 .inp-wrap:nth-child(6)>div>div:nth-child(2)>div:nth-child(1) {
                    color: #5b5b5b;
                    margin-bottom: 8px;
                    font-size: 14px;
                    display: inline-block;
                    height: 20px;
                    font-weight: 700;
                }

                #right01 .inp-wrap:nth-child(6)>div>div:nth-child(2)>div:nth-child(2) {
                    /* background-color: greenyellow; */
                    width: 100%;
                    height: 266.91px;
                }

               #right01 .inp-wrap:nth-child(6)>div>div:nth-child(2)>div:nth-child(2) label {
                    display: inline-block;
                    width: 420.5px;
                    padding: 239.91px 0px 0px;
                    line-height: normal;
                    /* vertical-align: middle; */
                    cursor: pointer;
                    /* background-color: white; */
                    border: 0.5px dotted black;
                }

                #right01 .inp-wrap:nth-child(6)>div>div:nth-child(2)>div:nth-child(2) input[type="file"] {
                    position: absolute;
                    width: 1px;
                    height: 1px;
                    padding: 0;
                    margin: -1px;
                    overflow: hidden;
                    border: 0;
                }

               #right01 .inp-wrap:nth-child(6)>div>div:nth-child(2)>div:nth-child(2) label span {
                    font-size: 19px;
                    color: #838383;
                    width: 106.44px;
                    height: 79px;
                    /* background-color: skyblue; */
                    position: relative;
                    bottom: 120px;
                    left: 150px;
                }

                #right01 .inp-wrap:nth-child(6)>div>div:nth-child(3) {
                    /* background-color: pink; */
                    width: 427.5px;
                    height: 450.5px;
                    margin-top: 25px;
                    padding-left: 5px;
                    display: inline-block;
                }

               #right01 .inp-wrap:nth-child(6)>div>div:nth-child(3)>div:nth-child(2) {
                    /* background-color: greenyellow; */
                    width: 100%;
                    height: 100%;
                }

                #right01 .inp-wrap:nth-child(6)>div>div:nth-child(3)>div:nth-child(2) label {
                    display: inline-block;
                    width: 420.5px;
                    padding: 400.5px 0px 0px;
                    line-height: normal;
                    vertical-align: middle;
                    cursor: pointer;
                    /* background-color: white; */
                    border: 0.5px dotted black;
                }

                #right01 .inp-wrap:nth-child(6)>div>div:nth-child(3)>div:nth-child(2) input[type="file"] {
                    position: absolute;
                    width: 1px;
                    height: 1px;
                    padding: 0;
                    margin: -1px;
                    overflow: hidden;
                    border: 0;
                }

                #right01 .inp-wrap:nth-child(6)>div>div:nth-child(3)>div:nth-child(2) label span {
                    font-size: 19px;
                    color: #838383;
                    width: 106.44px;
                    height: 79px;
                    /* background-color: skyblue; */
                    position: relative;
                    bottom: 210px;
                    left: 150px;
                }

                #right01 .inp-wrap:nth-child(6)>div>div:nth-child(3)>div:nth-child(1) {
                    color: #5b5b5b;
                    margin-bottom: 8px;
                    font-size: 14px;
                    display: inline-block;
                    height: 20px;
                    font-weight: 700;
                }
                /* 9장 style */

                #right01 .inp-wrap:nth-child(7) {
                    /* display: flex; */
                    width: 905px;
                    /* width: 2000px; */
                    height: 257px;
                    /* overflow: hidden; */
                    /* background-color: skyblue; */
                    /* display: block; */
                    overflow-x: auto;
                    overflow-y: hidden;
                }

                #right01 .inp-wrap:nth-child(7)>span:nth-child(1) {
                    display: block;
                    height: 23px;
                    color: #5b5b5b;
                    font-size: 15px;
                    margin: 0px 0px 8px;
                    font-weight: 900;
                }

               #right01 .inp-wrap:nth-child(7)>span:nth-child(1) small {
                    color: #838383;
                    font-size: 14px;
                    padding-left: 8px;
                }

                #right01 .inp-wrap:nth-child(7)>div {
                    width: 230%;
                    height: 110%;
                    display: block;
                    /* border: 1px solid black; */
                }

                #right01 .inp-wrap:nth-child(7)>div>div {
                    height: 195px;
                    width: 195px;
                    display: inline-block;
                    /* background-color: seagreen; */
                }

                #right01 .inp-wrap:nth-child(7)>div>div input[type="file"] {
                    position: absolute;
                    width: 1px;
                    height: 1px;
                    padding: 0;
                    margin: -1px;
                    overflow: hidden;
                    border: 0;
                }

                #right01 .inp-wrap:nth-child(7)>div>div label {
                    display: inline-block;
                    width: 195px;
                    height: 195px;
                    /* padding: 400.5px 0px 0px; */
                    cursor: pointer;
                    text-align: center;
                    font-size: 50px;
                    font-weight: 700;
                    color: black;
                    /* background-color: white; */
                    background-color: white;
                    /* border: 0.5px dotted black; */
                }

                #right01 .inp-wrap:nth-child(8) {
                    width: 905px;
                    height: 410px;
                }

                #right01 .inp-wrap:nth-child(8) span:nth-child(1) {
                    display: block;
                    height: 22px;
                    color: #5b5b5b;
                    font-size: 15px;
                    margin: 40px 0px 8px;
                    font-weight: 900;
                }

                #right01 .inp-wrap:nth-child(8) textarea {
                    width: 100%;
                    height: 400px;
                    padding: 20px;
                    background: #ffffff;
                    resize: none;
                    border: none;
                    text-align: left;
                }

                #right01 .inp-wrap:nth-child(8) textarea:focus {
                    border: 2px solid #8e0032;
                    outline: none;
                }

                #right01 .inp-wrap:nth-child(8) textarea::placeholder {
                    font-size: 15px;
                    color: lightgray;
                    font-weight: bold;
                }

                #right01 .inp-wrap:nth-child(9) {
                    height: 180px;
                }

                #right01 .inp-wrap:nth-child(9) span:nth-child(1) {
                    display: block;
                    height: 22px;
                    color: #5b5b5b;
                    font-size: 15px;
                    margin: 40px 0px 8px;
                    font-weight: 900;
                }

                #right01 .inp-wrap:nth-child(9) textarea {
                    width: 100%;
                    height: 140px;
                    padding: 20px;
                    background: #ffffff;
                    resize: none;
                    border: none;
                    text-align: left;
                }

                #right01 .inp-wrap:nth-child(9) textarea:focus {
                    border: 2px solid #8e0032;
                    outline: none;
                }

               #right01 .inp-wrap:nth-child(9) textarea::placeholder {
                    font-size: 15px;
                    color: lightgray;
                    font-weight: bold;
                }

               #right01 .inp-wrap:nth-child(10) {
                    height: 236px;
                }

               #right01 .inp-wrap:nth-child(10)>span:nth-child(1) {
                    display: block;
                    height: 22px;
                    color: #5b5b5b;
                    font-size: 15px;
                    margin: 15px 0px 8px;
                    font-weight: 900;
                }

                #right01 .inp-wrap:nth-child(10)>div {
                    width: 905px;
                    height: 166px;
                    /* background-color: slateblue; */
                }

                #right01 .inp-wrap:nth-child(10)>div>div {
                    width: 100%;
                    height: 50px;
                    /* background-color: steelblue; */
                }

                #right01 .inp-wrap:nth-child(10)>div>div input[type="text"] {
                    border: none;
                    background-color: rgba(255, 255, 255, 0.6);
                    padding: 0px 20px;
                    height: 50px;
                    width: 735px;
                    font-size: 16px;
                    font-weight: 900;
                }

                #right01 .inp-wrap:nth-child(10)>div>div input[type="button"] {
                    width: 156px;
                    height: 50px;
                    font-size: 16px;
                    background-color: #8e0032;
                    margin-left: 8px;
                    color: white;
                    font-weight: 900;
                    border: none;
                    border-radius: 3px;
                    cursor: pointer;
                }

               #right01 .inp-wrap:nth-child(10)>div>div input:focus {
                    outline: none;
                }

               #right01 .inp-wrap:nth-child(10)>div>input[type="text"]:nth-child(2) {
                    width: 905px;
                    height: 50px;
                    background-color: rgba(255, 255, 255, 0.6);
                    margin: 8px 0px 0px;
                    padding: 0px 20px;
                    border: none;
                }
#right01 .inp-wrap:nth-child(10)>div>input[type="text"]:nth-child(2):focus {
                    outline: none;
                }

               #right01 .inp-wrap:nth-child(10)>div>input[type="text"]:nth-child(3) {
                    width: 100%;
                    height: 50px;
                    margin-top: 8px;
                    padding: 0px 20px;
                    background: white;
                    border: none;
                    font-size: 15px;
                    font-weight: 700;
                }

              #right01 .inp-wrap:nth-child(10)>div>input[type="text"]:nth-child(3):focus {
                    outline: none;
                    border: 2px solid #8e0032;
                }

               #right01 .inp-wrap:nth-child(10)>div>input[type="text"]:nth-child(3)::placeholder {
                    color: #b7b7b7;
                }

               #right01 .inp-wrap:nth-child(11),
               #right01 .inp-wrap:nth-child(12) {
                    position: relative;
                    height: 80px;
                    /* background-color: yellow; */
                }

                #right01 .inp-wrap:nth-child(11)>span:nth-child(1),
               #right01 .inp-wrap:nth-child(12)>span:nth-child(1) {
                    display: block;
                    height: 23px;
                    color: #5b5b5b;
                    font-size: 15px;
                    margin: 10px 0px 8px;
                    font-weight: 900;
                }

               #right01 .inp-wrap:nth-child(11)>span:nth-child(1)>small,
                #right01 .inp-wrap:nth-child(12)>span:nth-child(1)>small {
                    padding-left: 8px;
                    font-size: 14px;
                    color: #838383;
                    height: 19px;
                }

                #right01 .inp-wrap:nth-child(11)>span:nth-child(n+3),
                #right01 .inp-wrap:nth-child(12)>span:nth-child(n+3) {
                    margin-left: 19px;
                }

               #right01 .inp-wrap:nth-child(11) input[type="checkbox"],
                #right01 .inp-wrap:nth-child(12) input[type="checkbox"] {
                    display: none;
                }

                #right01 .inp-wrap:nth-child(11) input[type="checkbox"]+label,
                #right01 .inp-wrap:nth-child(12) input[type="checkbox"]+label {
                    display: inline-block;
                    position: relative;
                    padding-left: 25px;
                    cursor: pointer;
                    font-size: 15px;
                    color: #838383;
                    font-weight: 700;
                }

               #right01 .inp-wrap:nth-child(11) input[type="checkbox"]+label::before,
                #right01 .inp-wrap:nth-child(12) input[type="checkbox"]+label::before {
                    content: '';
                    width: 16px;
                    height: 16px;
                    margin-right: 10px;
                    position: absolute;
                    top: 2px;
                    left: 0;
                    background-color: white;
                    text-align: center;
                    border: 0.5px solid #838383;
                    border-radius: 8px;
                }

               #right01 .inp-wrap:nth-child(11) input[type="checkbox"]:checked+label::before,
                #right01 .inp-wrap:nth-child(12) input[type="checkbox"]:checked+label::before {
                    content: '';
                    font-size: 15px;
                    font-weight: 900;
                    /* color: red; */
                    background-color: #8e0032;
                    text-align: center;
                }

                #right01 .inp-wrap:nth-child(11) input[type="checkbox"]:checked+label::after,
               #right01 .inp-wrap:nth-child(12) input[type="checkbox"]:checked+label::after {
                    content: '';
                    position: absolute;
                    top: 7px;
                    left: 5px;
                    width: 7px;
                    height: 7px;
                    background-color: white;
                    border-radius: 3.5px;
                }

               #right01 .inp-wrap:nth-child(13) {
                    height: 141px;
                    /* background-color: tomato; */
                }

                #right01 .inp-wrap:nth-child(13)>span:nth-child(1) {
                    display: block;
                    height: 22px;
                    color: #5b5b5b;
                    font-size: 15px;
                    margin: 15px 0px 8px;
                    font-weight: 900;
                }

                #right01 .inp-wrap:nth-child(13) input[type="radio"] {
                    display: none;
                }

               #right01 .inp-wrap:nth-child(13) input[type="radio"]+label {
                    display: block;
                    position: relative;
                    padding-left: 25px;
                    cursor: pointer;
                    font-size: 15px;
                    color: #838383;
                    font-weight: 700;
                    margin-top: 15px;
                }

               #right01 .inp-wrap:nth-child(13) input[type="radio"]+label::before {
                    content: '';
                    width: 16px;
                    height: 16px;
                    margin-right: 10px;
                    position: absolute;
                    top: 2px;
                    left: 0;
                    background-color: white;
                    text-align: center;
                    border: 0.5px solid #838383;
                    border-radius: 8px;
                }

                #right01 .inp-wrap:nth-child(13) input[type="radio"]:checked+label::before {
                    content: '';
                    font-size: 15px;
                    font-weight: 900;
                    /* color: red; */
                    background-color: #8e0032;
                    text-align: center;
                }

                #right01 .inp-wrap:nth-child(13) input[type="radio"]:checked+label::after {
                    content: '';
                    position: absolute;
                    top: 7px;
                    left: 5px;
                    width: 7px;
                    height: 7px;
                    background-color: white;
                    border-radius: 3.5px;
                }

                #right01 .inp-wrap:nth-child(13) input[type="radio"]:checked+label {
                    color: black;
                }

                 #right01 #btn-form-wrap {
                    height: 64px;
                    margin: 100px 0px 0px;
                }

                 #right01 #btn-form-wrap input[type="submit"] {
                    float: right;
                    font-size: 18px;
                    height: 64px;
                    width: 168px;
                    border-radius: 3px;
                    border: none;
                    cursor: pointer;
                }

                #right01 #btn-form-wrap input[type="submit"]:nth-child(1) {
                    background: #8e0032;
                    color: white;
                    margin-left: 12px;
                }

                #right01 #btn-form-wrap input[type="submit"]:nth-child(2) {
                    background: white;
                    color: #2e2e2e;
                }
                /* 임시저장 버튼 */

                #go {
                    float: right;
                    font-size: 18px;
                    height: 64px;
                    width: 168px;
                    border-radius: 3px;
                    border: none;
                    cursor: pointer;
                    background: white;
                    color: #2e2e2e;
                }
                /* ////////////////////////////////////////////////////////////////////////////// */
                /* 썸네일 관련 css */
                /* /////////////////////////////////////////////////////////////////////////// */

                #mainThum img {
                    width: 100%;
                    height: 100%;
                }

                #mainThum p {
                    text-overflow: ellipsis;
                    display: inline-block;
                    overflow: hidden;
                }

                #mainThum .preview-box {
                    width: 100%;
                    height: 100%;
                    /* border: 1px solid; */
                    margin: 0px;
                    padding: 0px;
                    position: relative;
                    bottom: 269px;
                }

                #mainThum button {
                    width: 10px;
                    height: 10px;
                    padding: 0px;
                    margin: 0px;
                    font-weight: 900;
                    float: right;
                    position: relative;
                    right: 30px;
                }

                #mainThum button:hover {
                    color: #8e0032;
                }

                #detailThum img {
                    width: 100%;
                    height: 100%;
                }

                #detailThum p {
                    text-overflow: ellipsis;
                    display: inline-block;
                    overflow: hidden;
                }

                #detailThum .preview-box {
                    width: 100%;
                    height: 100%;
                    /* border: 1px solid; */
                    margin: 0px;
                    padding: 0px;
                    position: relative;
                    bottom: 430px;
                }

                #detailThum button {
                    width: 10px;
                    height: 10px;
                    padding: 0px;
                    margin: 0px;
                    font-weight: 900;
                    float: right;
                    position: relative;
                    right: 30px;
                }

                #detailThum button:hover {
                    color: #8e0032;
                }
                /* 9장 상세 이미지 style */

                #input-detail-img {
                    display: inline-block;
                }

                #input-detail-img img {
                    width: 50%;
                    height: 50%;
                }

                #input-detail-img p {
                    text-overflow: ellipsis;
                    /* display: inline-block; */
                    overflow: hidden;
                }

                #input-detail-img .preview-box {
                    width: 195px;
                    height: 175px;
                    /* border: 1px solid #b7b7b7; */
                    background-color: white;
                    /* padding: 0px; */
                    text-align: center;
                    margin-left: 20px;
                    /* margin-bottom: 10px; */
                    float: left;
                    /* padding-left: 20px; */
                    padding-top: 15px;
                }

                #input-detail-img button {
                    width: 10px;
                    height: 10px;
                    padding: 0px;
                    margin: 0px;
                    font-weight: 900;
                }

                .hashTxt {
                    font-size: 15px;
                    padding-left: 10px;
                    color: #b7b7b7;
                    border: 0.5px solid gray;
                    border-radius: 20px;
                    width: 130px;
                }

                .hashTxt:focus {
                    outline: none;
                }

                .delHash {
                    width: 15px;
                    height: 15px;
                    padding: 0;
                    margin: 0;
                    /* background-color: orange; */
                    position: relative;
                    right: 20px;
                    top: 3px;
                }

                .delHash img {
                    width: 15px;
                    height: 15px;
                    padding: 0;
                    margin: 0;
                }

                #hashField {
                    margin-top: 30px;
                }

                #oftenQuestion {
                    width: 905px;
                    height: 63px;
                    
                    padding: 0px 18px;
                    background-color: #5b5b5b;
                    display: inline-block;
                }

                #oftenQuestion strong {
                    font-size: 16px;
                    color: white;
                    position: relative;
                    top: 20px;
                    height: 43px;
                    display: block;
                    padding-left: 10px;
                }

                #oftenQuestion button {
                    display: block;
                    width: 63px;
                    height: 63px;
                    padding: 0;
                    margin: 0;
                    float: right;
                    position: relative;
              
                    right: 10px;
                    bottom: 20px;
                }

                .qnaInner {
                    width: 905px;
                    height: 483px;
                    padding: 20px 27px 5px;
                    position: relative;
                    right: 28px;
                    top: 20px;
                    background-color: white;
                }

                .qnaInner1 {
                    width: 851px;
                    height: 194px;
                }

                .qnaInner2 {
                    width: 851px;
                    height: 264px;
                    padding: 35px 0px;
                }

                .qna-title {
                    margin: 0px -7px 20px;
                    font-size: 14px;
                    color: #838383;
                    display: inline-block;
                }

                .qna-textarea {
                    width: 851px;
                    height: 132px;
                    background-color: #f6f5f5;
                    margin: -2px 0px 20px;
                    padding: 16px 20px;
                    border: none;
                    font-weight: bold;
                }

                .qna-textarea:focus {
                    outline: none;
                    border: 2px solid #8e0032;
                }

                .qna-textarea::placeholder {
                    font-weight: bold;
                    color: #b7b7b7;
                }
            </style>
      
<div id="header">
    <div>
        <a href="<c:url value='/index'/>"><img src="<c:url value='/resources/img/icon/logo.png'/>" alt="" /> </a>
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
                <sec:authorize access="isAuthenticated()"><li><a href="<c:url value='/logout'/>">로그아웃</a></li></sec:authorize>
                <sec:authorize access="hasRole('ROLE_ADMIN')"><li><a href="<c:url value='/admin/in'/>">관리자 페이지</a></li></sec:authorize>
                <sec:authorize access="isAuthenticated()"><li><a href="<c:url value='/mypage/in'/>">마이페이지</a></li></sec:authorize>
                <sec:authorize access="isAnonymous()"><li><a href="#">회원가입</a></li></sec:authorize>


            </ul>
        </div>
</div>
