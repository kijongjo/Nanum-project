<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form action="" id="">
	<div class="checkboxWrap">
		<div class="checkBox">
		    <input type="checkbox" name="nomal" id="" >
		    <label for="checkbox"></label>
	    </div>
	    <div class="checkBox">
		    <input type="checkbox" name="manwon" id="" >
		    <label for="checkbox"></label>
	    </div>
	    <div class="checkBox">
		    <input type="checkbox" name="onepeople" id="" >
		    <label for="checkbox"></label>
	    </div>
	</div>
    <h4>최소 인원</h4>
	<div class="basic_apply">
	    <input type="text" name="" id="" value="">
	</div>

    <h4>최대 인원</h4>
	<div class="basic_apply">
	    <input type="text" name="" id="" value="">
	</div>

    <h4>최대 인원</h4>
	<div class="basic_apply">
	    <input type="text" name="" id="" value="">
	</div>

    <h4>가격</h4>
	<div class="basic_apply">
	    <input type="text" name="" id="" value="">
	</div>

    <h4>강좌명</h4>
	<div class="basic_apply">
	    <input type="text" name="" id="" value="">
	</div>

    <h4>한줄 설명</h4>
	<div class="basic_apply">
	    <input type="text" name="" id="" value="">
	</div>

	<h4>#해쉬태그</h4>
	<div class="basic_apply" id="hashtag">
	    <input type="text" name="" id="" value="">
	</div>
	<div id="hashtagTxt">
		<span>asdasd</span>
	</div>
	
    <h4>커버 이미지</h4>
    <div class="basic_apply image_upload" id="apply01">
        <p>
            대표이미지는 클래스의 가장 중요한 시각적 요소입니다. <br/>
            좋은 인상을 남길 수 있도록 사진의 퀄리티를 신경써서 업로드해주세요
        </p>
        <div>
            <!-- 사진 파일 업로드/삭제 api ? -->
    </div>

</div>
<h3>상세 이미지 등록 <span>*최대 9개까지 추가 등록가능</span></h3>

<h4>공간 상세 설명</h4>
<div>
    <textarea name="" id="" cols="30" rows="10"></textarea>
</div>

<h4>참고사항</h4>
<div>
    <textarea name="" id="" cols="30" rows="10"></textarea>
</div>

<h4>공간 위치 등록</h4>
<div>
    <!-- 주소 api자리입니다 -->
    </div>

    <h3>편의시설 <span>*중복 선택 가능</span></h4>
        <div id="facility">
            <span>화장실</span>
            <span>환풍기</span>
            <span>전등</span>
            <span class="On-CheckBox">주차시설</span>
        </div>
        <div>
            <textarea name="" id="" cols="30" rows="10"></textarea>
        </div>
        
    <h3>안전시설 <span>*중복 선택 가능</span></h4>
    <div id="facility">
        <span>화장실</span>
        <span>환풍기</span>
        <span>전등</span>
        <span class="On-CheckBox">주차시설</span>
    </div>
    <div id="btn_submit">
        <div>
            <input type="submit" value="임시저장">
            <input type="submit" value="다음">
        </div>
    </div>
</form>