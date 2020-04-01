<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <form action="" id="makeTeacher02">
            <h4>수업공간 대여 여부</h4>
            <div>
                <div class="Off-CheckBox">공간대여를 원합니다</div>
                <div class="Off-CheckBox On-CheckBox">내 공간을 보유하고 있습니다</div>
                <p>클래스 수업이 가능한 공간이 있을 경우 등록해 주세요.</p>
            </div>

            <h4>공간 테마</h4>
            <div>
                <input type="text" name="" id="">
            </div>

            <h4>수용가능인원</h4>
            <div>
                <input type="text" name="" id="">
            </div>

            <h4>공간명</h4>
            <div>
                <input type="text" name="" id="">
            </div>

            <h4>공간 한 줄 설명</h4>
            <div>
                <input type="text" name="" id="">
            </div>

            <h4>해시태그</h4>
            <div>
                <input type="text" name="" id="">
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
                    <input type="submit" value="작성완료">
                </div>
            </div>
        </form>