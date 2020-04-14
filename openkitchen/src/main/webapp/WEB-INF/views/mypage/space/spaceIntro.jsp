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
   	<link rel="stylesheet" href="<c:url value='/resources/css/spaceIntro.css'/>">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <jsp:include page="../../headerScript.jsp" flush="false" />
    <script type="text/javascript">
  //임의의 file object영역
    var files = {};
    var previewIndex = 0;
    var imgNum = 0;

    // image preview 기능 구현
    // input = file object[]

    // 메인 썸네일용 이미지 
    function addPreviewMain(input) {
        if (input[0].files) {
            //파일 선택이 여러개였을 시의 대응
            for (var fileIndex = 0; fileIndex < input[0].files.length; fileIndex++) {
                var file = input[0].files[fileIndex];
                if(validation(file.name)) continue;
                setPreviewFormMain(file);
            }
        } else
            alert('invalid file input'); // 첨부클릭 후 취소시의 대응책은 세우지 않았다.

    }
    
    // 상세 썸네일용 이미지
    function addPreviewDetail(input) {
        if (input[0].files) {
            //파일 선택이 여러개였을 시의 대응
            for (var fileIndex = 0; fileIndex < input[0].files.length; fileIndex++) {
                var file = input[0].files[fileIndex];
                if(validation(file.name)) continue;
                setPreviewFormDetail(file);
            }
        } else
            alert('invalid file input'); // 첨부클릭 후 취소시의 대응책은 세우지 않았다.
    }

    //////////////////////////////////////////////////////////////////////////////////

    // 상세 이미지 등록 
    function addPreviewPhoto(input) {
        if (input[0].files) {
            //파일 선택이 여러개였을 시의 대응
            for (var fileIndex = 0; fileIndex < input[0].files.length; fileIndex++) {
                var file = input[0].files[fileIndex];
                if(validation(file.name)) continue;
                setPreviewFormPhoto(file);
            }
        } else
            alert('invalid file input'); // 첨부클릭 후 취소시의 대응책은 세우지 않았다.
    }

    // 메인 썸네일용 이미지 등록 
    function setPreviewFormMain(file, img){
        var reader = new FileReader();
        
        //div id="preview" 내에 동적코드추가.
        //이 부분을 수정해서 이미지 링크 외 파일명, 사이즈 등의 부가설명을 할 수 있을 것이다.
        reader.onload = function(img) {
            // console.log(img);
            // var imgNum = previewIndex++;
            $("#mainThum").append(
                    "<div class=\"preview-box\" value=\"" + imgNum +"\">" +
                    "<img class=\"thumbnail\" src=\"" + img.target.result + "\"\/>" +
                    "<p>" + file.name + "</p>" +
                    "<button value=\"" + imgNum + "\" onclick=\"deleteMainPreview(this)\">" +
                    "삭제" + "</button>"
                    + "</div>"
            );
            // resizeHeight();
            files[imgNum] = file;            
        };
        console.log(file.name+"0000000000000000000000000000");
        reader.readAsDataURL(file);
    }

    // 상세 썸네일용 이미지 등록 
    function setPreviewFormDetail(file, img){
        var reader = new FileReader();
        
        //div id="preview" 내에 동적코드추가.
        //이 부분을 수정해서 이미지 링크 외 파일명, 사이즈 등의 부가설명을 할 수 있을 것이다.
        reader.onload = function(img) {
            // console.log(img);
            // var imgNum = previewIndex++;
            $("#detailThum").append(
                    "<div class=\"preview-box\" value=\"" + imgNum +"\">" +
                    "<img class=\"thumbnail\" src=\"" + img.target.result + "\"\/>" +
                    "<p>" + file.name + "</p>" +
                    "<button value=\"" + imgNum + "\" onclick=\"deleteDetailPreview(this)\">" +
                    "삭제" + "</button>"
                    + "</div>"
            );
            // resizeHeight();
            files[imgNum] = file; 
            console.log(files[imgNum]);
            console.log(imgNum);
        };
        console.log(file.name + " 9999999999999999999999");
        reader.readAsDataURL(file);
    }

    // 상세 이미지 등록 
    function setPreviewFormPhoto(file, img){
        imgNum = previewIndex++;
        // .length로 변경 함 
        if($(".thumbnail").length < 9){
            var reader = new FileReader();
            
            //div id="preview" 내에 동적코드추가.
            //이 부분을 수정해서 이미지 링크 외 파일명, 사이즈 등의 부가설명을 할 수 있을 것이다.
            reader.onload = function(img) {
                // console.log(img);
                // var imgNum = previewIndex++;
                $("#input-detail-img").append(
                        "<div class=\"preview-box\" value=\"" + imgNum +"\">" +
                        "<img class=\"thumbnail\" src=\"" + img.target.result + "\"\/>" +
                        "<p>" + file.name + "</p>" +
                        "<button value=\"" + imgNum + "\" onclick=\"deleteDetailPhoto(this)\">" +
                        "삭제" + "</button>"
                        + "</div>"
                );
                // resizeHeight();
                files[imgNum] = file;            
                console.log(files[imgNum]);
                console.log(imgNum);
            };
            console.log(file.name);
            reader.readAsDataURL(file);
            console.log("썸네일의 길이 : " +   $(".thumbnail").length);
        }else{
            alert("9개 이상 금지");
        }
    }

    /////////////////////////////////////////////////////////////////

    //preview 영역에서 삭제 버튼 클릭시 해당 미리보기이미지 영역 삭제
    // 메인 썸네일 삭제
    function deleteMainPreview(obj) {
        var imgNum = obj.attributes['value'].value;
        delete files[imgNum];
        $("#mainThum .preview-box[value=" + imgNum + "]").remove();
        $("#mainThum label").css('opacity','1');
    }
    
    // 상세 썸네일 삭제
    function deleteDetailPreview(obj) {
        var imgNum = obj.attributes['value'].value;
        delete files[imgNum];
        $("#detailThum .preview-box[value=" + imgNum + "]").remove();
        $("#detailThum label").css('opacity','1');
    }

    // 상세 등록 이미지 삭제 
    function deleteDetailPhoto(obj) {
        var imgNum = obj.attributes['value'].value;
        delete files[imgNum];
        $("#input-detail-img .preview-box[value=" + imgNum + "]").remove();
        $("#input-detail-img label").css('opacity','1');
        imgNum--;
        console.log(imgNum);
    }


    //client-side validation
    //always server-side validation required
    // 파일 형식 체크 
    function validation(fileName) {
        fileName = fileName + "";
        var fileNameExtensionIndex = fileName.lastIndexOf('.') + 1;
        var fileNameExtension = fileName.toLowerCase().substring(
                fileNameExtensionIndex, fileName.length);
        if (!((fileNameExtension === 'jpg') || (fileNameExtension === 'jpeg')
                || (fileNameExtension === 'gif') || (fileNameExtension === 'png'))) {
            alert('jpg, gif, png 확장자만 업로드 가능합니다.');
            return true;
        } else {
            return false;
        }
    }

    $(document).ready(function() {
        //submit 등록. 실제로 submit type은 아니다.
        $('.submit a').on('click',function() {                        
            var form = $('#uploadForm')[0];
            var formData = new FormData(form);

            for (var index = 0; index < Object.keys(files).length; index++) {
                //formData 공간에 files라는 이름으로 파일을 추가한다.
                //동일명으로 계속 추가할 수 있다.
                formData.append('files',files[index]);
            }

            //ajax 통신으로 multipart form을 전송한다.
            $.ajax({
                type : 'POST',
                enctype : 'multipart/form-data',
                processData : false,
                contentType : false,
                cache : false,
                timeout : 600000,
                url : '/imageupload',
                dataType : 'JSON',
                data : formData,
                success : function(result) {
                    //이 부분을 수정해서 다양한 행동을 할 수 있으며,
                    //여기서는 데이터를 전송받았다면 순수하게 OK 만을 보내기로 하였다.
                    //-1 = 잘못된 확장자 업로드, -2 = 용량초과, 그외 = 성공(1)
                    if (result === -1) {
                        alert('jpg, gif, png, bmp 확장자만 업로드 가능합니다.');
                        // 이후 동작 ...
                    } else if (result === -2) {
                        alert('파일이 10MB를 초과하였습니다.');
                        // 이후 동작 ...
                    } else {
                        alert('이미지 업로드 성공');
                        // 이후 동작 ...
                    }
                }
                //전송실패에대한 핸들링은 고려하지 않음
            });
        });

        // <input type=file> 태그 기능 구현
        // 메인 썸네일 
        $('#mainThum input[type=file]').change(function() {
            $("#mainThum label").css('opacity','0');
            addPreviewMain($(this)); //preview form 추가하기
        });
        // 상세 썸네일
        $('#detailThum input[type=file]').change(function() {
            $("#detailThum label").css('opacity','0');
            addPreviewDetail($(this)); //preview form 추가하기
        });
        // 상세 이미지 
        $('#input-detail-img input[type=file]').change(function() {
            // $("#input-detail-img label").css('left','200px');
            addPreviewPhoto($(this)); //preview form 추가하기
        });

    });
    
    ////////////////////////////////////////  추가한 부분 /////////////////////////////////////////////
    $(function(){
        // 버튼 눌렀을때 숫자 증감
        $('#min-btn').click(function(e){
            e.preventDefault();
            var stat = $('#howMany').text();
            var num = parseInt(stat,10);
            num--;
            if(num<=0){
            alert('더이상 줄일수 없습니다.');
            num =1;
            }
            $('#howMany').text(num);
            console.log($("#howMany").html());
        })
        $('#plus-btn').click(function(e){
            e.preventDefault();
            var stat = $('#howMany').text();
            var num = parseInt(stat,10);
            num++;
            $('#howMany').text(num);
            console.log($("#howMany").html());
        })

        // 글자수 체크 
        $('.placeEx').keyup(function (e){
            var content = $(this).val();
            $('#placeEx-counter').html(content.length+" / 45");    //글자수 실시간 카운팅

            if (content.length > 45){
                alert("최대 45자까지 입력 가능합니다.");
                $(this).val(content.substring(0, 45));
                $('#placeEx-counter').html("45 / 45");   
            }
        });

        $('#addHash').click (function () {          
            if($(".hashTxt").length<3){    
                if($('.hashText').val()==''){
                    alert("태그를 입력해 주세요");
                }else{                    
                    $('#hashField').append (                        
                        '<input type="text" class="hashTxt" name="txt" readonly="readonly" value=#'+$('.hashText').val()+'><button type="button" class="delHash"><img src="../img/ico_delete.png" alt=""></button>'
                    ); // end append        
                    $(".hashText").val('');
                    $('.delHash').on('click', function () { 
                        // $(this).prevAll().remove (); // remove the textbox
                        $(this).prev().remove();
                        $(this).remove (); // remove the button
                        console.log($(".hashTxt"));
                    });
                }
            }else{
                $('#hashField').append (                        
                    '<div style"color:red;">최대 3개까지 등록 가능합니다.</div>'
                ); // end append       
                
                $('#addHash').prop("disabled",true);

                $('.delHash').on('click', function () { 
                    // $(this).prevAll().remove (); // remove the textbox
                    $(this).prev().remove();
                    $(this).remove (); // remove the button
                    console.log($(".hashTxt"));
                    $('#addHash').prop("disabled",false);
                    $('#hashField div').remove();
                });
            }                 
            console.log($(".hashTxt"));
        }); // end click
        $("#add-question").click(function(){
            $("#oftenQuestion strong").append(
                '<div class="qnaInner">'+
                    '<div class="qnaInner1"><span class="qna-title">Q. 자주 문의되는 질문을 입력해주세요</span><textarea name="" id="" placeholder="클래스에 사용되는 재료는 국내산인가요?" class="qna-textarea" cols="30" rows="5" maxlength="100"></textarea></div>'+
                    '<div class="qnaInner2"><span class="qna-title">A. 질문에 대한 답변을 입력해주세요</span><textarea name="" id="" placeholder="네, 롤케이크 클래스에 사용되는 재료의 원산지는 모두 국내산입니다" class="qna-textarea" cols="30" rows="5"></textarea></div>'+
                '</div>'
            );
            $("#add-question").css("display","none");
        });
    });
        function setDisplay(){
            if($("#question").is(":checked")){
                $("#oftenQuestion").show();
            }else{
                $("#oftenQuestion").hide();
            }
        }
        ///////////////////////////////////////////////////////////////////////////////////////
        
            ///////////////////////////////////////////////////////////////////////////////////////
            
    </script>
    
</head>
<body>
	<jsp:include page="../../header.jsp" flush="false" />
    <div id="lay03spaceRegister2">
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
                <a href="" class="dim">기본정보<img src="../img/red-check.png" alt=""></a>
                <a href="" class="active">공간소개<img src="../img/gray-check.png" alt=""></a>
                <a href="" class="dim">공유일정<img src="../img/gray-check.png" alt=""></a>
            </div>
        </section>
        <section id="right01">
            <div>
                <form action="">
                <div class="inp-wrap">
                   <span>공간 테마</span> 
                   <select name="" id="">
                       <option value="">선택해주세요</option>
                       <option value="">요리스튜디오</option>
                       <option value="">레스토랑</option>
                       <option value="">베이킹스튜디오</option>
                       <option value="">카페</option>
                       <option value="">가정집</option>
                   </select>
                </div>
                <div class="inp-wrap">
                    <span>수용 가능 인원</span>
                    <div>
                        <span>최대</span>
                        <div>
                            <button type="button" id="min-btn"><img src="../img/minus.png" alt=""></button>
                            <span id="howMany">1</span>
                            <button type="button" id="plus-btn"><img src="../img/plus.png" alt=""></button>
                        </div>
                    </div>
                </div>
                <div class="inp-wrap">
                    <span>공간명</span>
                    <input type="text" name="" id="" placeholder="공간 명을 입력해 주세요">
                </div>
                <div class="inp-wrap">
                    <span>공간 한 줄 설명<span id="placeEx-counter">0 / 45</span>
                    <input type="text" class="placeEx" name="" id="" placeholder="매력적인 설명을 작성해주세요">
                </div>
                <div class="inp-wrap">
                    <span>해시태그</span>
                    <span><input type="text" name="" class="hashText" id="" placeholder="#태그를 입력해 주세요" maxlength="6"><button type="button" id="addHash"><img src="../img/ico-file_add.png" alt=""></button></span>
                    <span id="hashField"></span>
                </div>
                <div class="inp-wrap">
                    <span>커버 이미지</span>
                    <div>
                        <p>대표이미지는 공간의 가장 중요한 시각적 요소입니다. <br>좋은 인상을 남길 수 있도록 사진의 퀄리티를 신경써서 업로드해주세요</p>
                        <div>
                            <div>
                                메인 썸네일용 이미지
                            </div>
                            <div id="mainThum">
                                <label for="sumUpload">
                                    <span>사진 추가하기</span>
                                    <input type="file" name="" id="sumUpload" accept=".jpg,.jpeg,.png,.gif">
                                </label>
                            </div>
                        </div>
                        <div>
                            <div>
                                상세 썸네일용 이미지
                            </div> 
                            <div id="detailThum">
                                <label for="sumUploadD">
                                    <span>사진 추가하기</span>
                                    <input type="file" name="" id="sumUploadD" accept=".jpg,.jpeg,.png,.gif">
                                </label>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="inp-wrap"> 
                    <span>상세 이미지 등록<small>*최대 9개까지 추가 등록 가능</small></span>
                    <div id="input-detail-img">
                        <div>
                            <label for="detailImg1"><br>+<input type="file" name="" id="detailImg1"></label>
                        </div>
                    </div>
                </div>
                <div class="inp-wrap">
                    <span>공간 상세 설명</span>
                    <textarea name="" id="" cols="30" rows="15" placeholder="공간의 특징(분위기, 수용인원, 사용용도 등)이 잘 들어날 수 있도록 상세하게 적어주세요&#13;&#10;&#13;&#10;예시 : 잠실에 위치한 OOO은 베이킹 전문공간입니다. 최대인원 10명이 수업 가능하며 기본주방시설과 2단 데크오븐이 있어 베이킹 전문수업으로 공간 대여 가능합니다. 전체분위기는 화이트톤이며 자세한 문의는 1:1메시지 주시면 공간에 대해 답변 드리겠습니다."></textarea>
                </div>
                <div class="inp-wrap">
                    <span>참고사항</span>
                    <textarea name="" id="" cols="30" rows="5" placeholder="공간에서 사용가능한 집기 비품 종류에 대해 상세히 입력해 주세요&#13;&#10;&#13;&#10;예시 : 기본주방설비/오븐 2개/ 각종 소품 및 조리도구가 구비되어 있고, 무료 와이파이가 제공됩니다.&#13;&#10;*빔프로젝트 사용은 예약시 미리 말씀해 주세요."></textarea>
                </div>
                <div class="inp-wrap">
                    <span>공간 위치 등록</span>
                    <div>
                        <div>
                            <input type="text" name="" id="" placeholder="우편번호" readonly="readonly">
                            <input type="button" value="우편번호찾기">
                        </div>
                        <input type="text" name="" id="" readonly="readonly">
                        <input type="text" name="" id="" placeholder="상세주소를 입력해주세요.">
                    </div>
                </div>
                <div class="inp-wrap">
                    <span>편의시설 <small>*중복 선택 가능</small></span>
                    <span>
                        <input type="checkbox" name="" id="comfort1"><label for="comfort1">화장실</label>
                    </span>
                    <span>
                        <input type="checkbox" name="" id="comfort2"><label for="comfort2">환풍기</label>
                    </span>
                    <span>
                        <input type="checkbox" name="" id="comfort3"><label for="comfort3">전등</label>
                    </span>
                    <span>
                        <input type="checkbox" name="" id="comfort4"><label for="comfort4">주차가능</label>
                    </span>
                </div>
                <div class="inp-wrap">
                    <span>안전시설 <small>*중복 선택 가능</small></span>
                    <span>
                        <input type="checkbox" name="" id="safety1"><label for="safety1">소화기</label>
                    </span>
                    <span>
                        <input type="checkbox" name="" id="safety2"><label for="safety2">화재감지기</label>
                    </span>
                    <span>
                        <input type="checkbox" name="" id="safety3"><label for="safety3">안전카드</label>
                    </span>
                    <span>
                        <input type="checkbox" name="" id="safety4"><label for="safety4">구급상자</label>
                    </span>
                </div>
                <div class="inp-wrap"> 
                    <span>자주 묻는 질문</span>
                    <span>
                        <input type="radio" name="formal" id="question" onchange="setDisplay()"><label for="question" >자주 묻는 질문을 등록합니다.</label>
                    </span>
                    <span>
                        <input type="radio" name="formal" id="NoQuestion"  onchange="setDisplay()"><label for="NoQuestion">자주 묻는 질문을 등록하지 않습니다.</label>
                    </span>
                </div>
                <!-- 수정한 부분  -->
                <div id="oftenQuestion" style="display: none;">
                        <strong>질문<button type="button" id="add-question"><img src="" alt=""></button></strong>
                </div>
                <!-- //////////////////////////////////////////////////////////// -->

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