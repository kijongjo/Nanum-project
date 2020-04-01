<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<form action="" id="makeTeacher01">
	<h4>프로필 사진</h4>
	<div class="basic_apply image_upload" id="apply01">
	    <p>
	        선생님 소개 페이지에서 보여지는 사진입니다. 수강생들에게 선생님의 모습을 멋지게 보여주세요.
	        Tip. 선생님의 얼굴이 보이는 상반신의 인물 사진
	    </p>
	    <div>
	        <!-- 사진 파일 업로드/삭제 api ? -->
	    </div>
	</div>
	
	<h4>이름</h4>
	<div class="basic_apply">
	    <input type="text">
	</div>
	
	<h4>닉네임</h4>
	<div class="Off-checkBox On-CheckBox">클래스 등록 시 닉네임을 사용합니다</div>
	<div class="basic_apply" id="apply02">
	    <input type="text" name="" id="" value="최대 한글 10자, 영문 20자, 숫자 혼용 가능">
	    <p>이미 활동중인 닉네임이 있는 선생님만 사용 부탁드리며, 없으실 경우 실명으로 사용하실 것을 권장합니다.</p>
	</div>
	
	<!-- 전문분야 -->
	<h3>전문 분야 <span>*중복 선택 가능</span></h3>
	<div id="Specialty">
	    <ul>
	        <li class="On-Specialty">커피</li>
	        <li>음료</li>
	        <li>티</li>
	        <li>피자</li>
	        <li>파스타</li>
	        <li>베이킹</li>
	        <li>디저트</li>
	        <li>도시락</li>
	        <li>샌드위치</li>
	        <li>반찬</li>
	        <li>웰빙</li>
	        <li>오가닉</li>
	        <li>발효</li>
	        <li>약선</li>
	        <li>세계요리</li>
	        <li>중식</li>
	        <li>일식</li>
	        <li>퓨전</li>
	        <li>한식</li>
	        <li>손님초대</li>
	        <li>데코레이션</li>
	        <li>스타일링</li>
	        <li>설명회</li>
	    </ul>
	</div>
	
	<h4>전문분야 호칭</h4>
	<div class="basic_apply">
	    <input type="text" name="" id="" value="">
	</div>
	
	<h4>주요활동 지역</h4>
	<div class="basic_apply">
	    <input type="text" name="" id="" value="">
	</div>
	
	<h4>한줄 소개</h4>
	<div class="basic_apply">
	    <input type="text" name="" id="" value="">
	</div>
	
	<h4>주요 활동</h4>
	<div class="basic_apply" id="txtarea01" >
	    <textarea name="" id="asd" cols="30" rows="10"></textarea>
	</div>
	
	<h4>자기 소개</h4>
	<div class="basic_apply" id="txtarea02">
	    <textarea name="" id="" cols="30" rows="10"></textarea>
	</div>
	
	<h4>사업자 유형</h4>
	<div class="buisness">
	    <span>개인</span>
	    <span>일반과세자</span>
	    <span>면세사업자</span>
	    <span class="On-CheckBox">간이과세자</span>
	</div>
	
	<h4>업체명</h4>
	<div class="basic_apply" >
	    <input type="text" name="" id="">
	</div>
	
	<h4>은행/증권사 선택</h4>
	<div class="basic_apply" >
	    <input type="text" name="" id="">
	</div>
	
	<h4>계좌번호</h4>
	<div class="basic_apply" >
	    <input type="text" name="" id="">
	</div>
	
	<h4>예금주 명</h4>
	<div class="basic_apply" >
	    <input type="text" name="" id="">
	</div>
	
	<h4>통장 사본 첨부</h4>
	<div class="basic_apply" >
	    <!-- 첨부구역은 안만들었습니다 -->
	</div>
	
	<h4>사업자등록증 첨부</h4>
	<div class="basic_apply" >
	    <!-- 첨부구역은 안만들었습니다 -->
	</div>

<!-- submit -->
    <div id="btn_submit">
        <div>
            <input type="submit" value="임시저장">
 			<a href="teacherSpace?no=2"><input type="button" value="다음"></a>
        </div>
    </div>

</form>