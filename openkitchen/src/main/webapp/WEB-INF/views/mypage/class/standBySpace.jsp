<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <style>
      .more-type2{
    padding: 0;
    font-size: 15px;
}
.more-type2::after{
    right: -25px;
}
.date{
    padding-right: 7px;
    position: relative;
    color: rgba(0, 0, 0, 0.4);
}

.date:nth-child(1)::after{
    content: "";
    position: absolute; 
    top: 1px; right: 0;
    background-color: #8D8D8D;
    width: 1px; height: 14px;
}     
/* 날짜 밑에 여백 설정 */
#contents_border .time-wrapper {
    padding-bottom: 10px;
}

.select-On {
    color: #8E0032;
    
    border-bottom: 3px solid #8E0032;
    font-weight: bold;
    
} 
    </style>
<div id="contents_border">
    <ul>
        <li>
            <a href="#">
                <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="slide01">
                <h3>로푸드팜</h3>
                <div class="time-wrapper">
                    <span class="date">2020.04.23(목)</span>
                    <span class="date"> 10:00 -14:00</span>
                </div>
            </a>
                <span class="more-type2">승인 중<i class="ico-more_arrow"></i></span>
            </li>
            <li>
                <a href="#">
                    <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="slide01">
                    <h3>로푸드팜</h3>
                    <div class="time-wrapper">
                        <span class="date">2020.04.23(목)</span>
                        <span class="date"> 10:00 -14:00</span>
                    </div>
                </a>
                <span class="more-type2">승인 중<i class="ico-more_arrow"></i></span>
            </li>
            <li>
                <a href="#">
                    <img src="<c:url value='/resources/img/testimg/test1.jpg'/>" alt="slide01">
                    <h3>로푸드팜</h3>
                    <div class="time-wrapper">
                        <span class="date">2020.04.23(목)</span>
                        <span class="date"> 10:00 -14:00</span>
                    </div>
                </a>
                <span class="more-type2">승인 중<i class="ico-more_arrow"></i></span>
            </li>   
                  
        </ul>
    <div class="contents-paging">
        <div class="paging-wrapper">
            <a href="" class="extra"></a>
            <a href="" class="extra"></a>
            <ul class="">
                <li><a href="">1</a></li>

            </ul>
            <a href="" class="extra"></a>
            <a href="" class="extra"></a>
        </div>
    </div>
</div>
