   //임의의 file object영역
                var files = {};
                var previewIndex = 0;
                var imgNum = 0;
                /* Form Data에 담을 File의 이름에 들어갈 변수 */
                var registCount = 0;

                // image preview 기능 구현

                // ///////////////////////////이미지 preview
				// 함수/////////////////////////////////////////////////////
                // 기본적으로 변화가 일어날 때마다 function이 작용한다.
                // 메인 썸네일용 이미지 input:file이 매개변수로 들어옴
                function addPreviewMain(input) {
                    if (input[0].files) {

                        // 파일 선택이 여러개였을 시의 대응
                        for (var fileIndex = 0; fileIndex < input[0].files.length; fileIndex++) {
                            var file = input[0].files[fileIndex];
                            if (validation(file.name)) continue;
                            /* 사진이 보여지는 기능 */
                            setPreviewFormMain(file);
                        }
                    } else
                        alert('invalid file input'); // 첨부클릭 후 취소시의 대응책은 세우지
														// 않았다.
                }



                // 상세 썸네일용 이미지
                function addPreviewDetail(input) {
                    if (input[0].files) {
                        // 파일 선택이 여러개였을 시의 대응
                        for (var fileIndex = 0; fileIndex < input[0].files.length; fileIndex++) {
                            var file = input[0].files[fileIndex];
                            if (validation(file.name)) continue;
                            setPreviewFormDetail(file);


                        }
                    } else
                        alert('invalid file input'); // 첨부클릭 후 취소시의 대응책은 세우지
														// 않았다.
                }

                // //////////////////////////////이미지 preview 함수
				// 끝/////////////////////////////////////////////////


                // //////////////////////////////이미지 등록
				// 함수//////////////////////////////////////////////////

                // 상세 이미지 등록
                function addPreviewPhoto(input) {
                    if (input[0].files) {
                        // 파일 선택이 여러개였을 시의 대응
                        for (var fileIndex = 0; fileIndex < input[0].files.length; fileIndex++) {
                            var file = input[0].files[fileIndex];
                            if (validation(file.name)) continue;
                            // 파일 보여지기
                            setPreviewFormPhoto(file);
                        }
                    } else
                        alert('invalid file input'); // 첨부클릭 후 취소시의 대응책은 세우지
														// 않았다.
                }

                // 메인 썸네일용 이미지 등록
                function setPreviewFormMain(file, img) {
                    var reader = new FileReader();

                    // div id="preview" 내에 동적코드추가.
                    // 이 부분을 수정해서 이미지 링크 외 파일명, 사이즈 등의 부가설명을 할 수 있을 것이다.
                    reader.onload = function(img) {

                        $("#mainThum").append(
                            "<div class=\"preview-box\" value=\"" + imgNum + "\">" +
                            "<img class=\"thumbnail\" src=\"" + img.target.result + "\"\/>" +
                            "<p>" + file.name  +"</p>" +
                            "<button value=\"" + imgNum + "\" onclick=\"deleteMainPreview(this)\">" +
                            "삭제" + "</button>"+ 
                            "</div>"
                        );

                        files[imgNum] = file;
                    };

                    reader.readAsDataURL(file);
                }

                // 상세 썸네일용 이미지 등록
                function setPreviewFormDetail(file, img) {
                    var reader = new FileReader();

                    // div id="preview" 내에 동적코드추가.
                    // 이 부분을 수정해서 이미지 링크 외 파일명, 사이즈 등의 부가설명을 할 수 있을 것이다.
                    reader.onload = function(img) {
                        // console.log(img);
                        // var imgNum = previewIndex++;
                        $("#detailThum").append(
                            "<div class=\"preview-box\" value=\"" + imgNum + "\">" +
                            "<img class=\"thumbnail\" src=\"" + img.target.result + "\"\/>" +
                            "<p>" + file.name + "</p>" +
                            "<button value=\"" + imgNum + "\" onclick=\"deleteDetailPreview(this)\">" +
                            "삭제" + "</button>" +
                            "</div>"
                        );

                        files[imgNum] = file;
                        console.log("files[imgNum]:" + files[imgNum]);
                        console.log(imgNum);
                    };

                    reader.readAsDataURL(file);
                }

                // 상세 이미지 등록
                function setPreviewFormPhoto(file, img) {
                    imgNum = previewIndex++;
                    if ($(".thumbnail").length < 9) {
                        var reader = new FileReader();

                        // div id="preview" 내에 동적코드추가.
                        // 이 부분을 수정해서 이미지 링크 외 파일명, 사이즈 등의 부가설명을 할 수 있을 것이다.
                        reader.onload = function(img) {


                            $("#input-detail-img").append(
                                "<div class=\"preview-box\" value=\"" + imgNum + "\">" +
                                "<img class=\"thumbnail\" src=\"" + img.target.result + "\"\/>" +
                                "<p>" + file.name + 
                                "<button value=\"" + imgNum + "\" onclick=\"deleteDetailPhoto(this)\">" +
                                "삭제" + "</button>" +"</p>" +
                                "</div>"
                            );

                            files[imgNum] = file;
                            console.log("files[imgNum] : " + files[imgNum]);
                            console.log("imgNum : " + imgNum);
                        };
                        console.log("file.name : " + file.name);
                        reader.readAsDataURL(file);
                        console.log("썸네일의 길이 : " + $(".thumbnail").length);
                    } else {
                        alert("9개 이상 금지");
                    }
                }

                // //////////////////////////////이미지 등록 함수
				// 끝//////////////////////////////////////////////////


                // ////////////////////////////이미지 삭제
				// 함수//////////////////////////////////////////////////
                // preview 영역에서 삭제 버튼 클릭시 해당 미리보기이미지 영역 삭제
                // 메인 썸네일 삭제
                function deleteMainPreview(obj) {
                    var imgNum = obj.attributes['value'].value;
                    delete files[imgNum];
                    $("#mainThum .preview-box[value=" + imgNum + "]").remove();
                    $("#mainThum label").css('opacity', '1');
                }

                // 상세 썸네일 삭제
                function deleteDetailPreview(obj) {
                    var imgNum = obj.attributes['value'].value;
                    delete files[imgNum];
                    $("#detailThum .preview-box[value=" + imgNum + "]").remove();
                    $("#detailThum label").css('opacity', '1');
                }

                // 상세 등록 이미지 삭제
                function deleteDetailPhoto(obj) {
                    var imgNum = obj.attributes['value'].value;
                    delete files[imgNum];
                    $("#input-detail-img .preview-box[value=" + imgNum + "]").remove();
                    $("#input-detail-img label").css('opacity', '1');
                    imgNum--;
                    console.log(imgNum);
                }

                // //////////////////////////////이미지 등록 함수
				// 끝//////////////////////////////////////////////////
                // client-side validation
                // always server-side validation required
                // 파일 형식 체크
                function validation(fileName) {
                    fileName = fileName + "";
                    var fileNameExtensionIndex = fileName.lastIndexOf('.') + 1;
                    var fileNameExtension = fileName.toLowerCase().substring(
                        fileNameExtensionIndex, fileName.length);
                    if (!((fileNameExtension === 'jpg') || (fileNameExtension === 'jpeg') ||
                            (fileNameExtension === 'gif') || (fileNameExtension === 'png'))) {
                        alert('jpg, gif, png 확장자만 업로드 가능합니다.');
                        return true;
                    } else {
                        return false;
                    }
                }
                // //////////////////////////////이미지 파일 형식 함수
				// 끝//////////////////////////////////////////////////

                /*
				 * ///////////////////////////////이미지 파일 용량
				 * 축소///////////////////////////////////////////////////
				 */
                // binary 파일 준비
                function getBlob(imgFile, form_Data) {
                    var fileList = imgFile[0].files;


                    $.each(fileList, function(i, file) {
                        // 리더기는바쁘기 땜시 계속 갱신해서 사용해야함.
                        var reader = new FileReader();
                        // 파일객체 해석
                        reader.readAsDataURL(file);
                        // reader 해석 완료 -> resizing img 생성 function 작동
                        reader.onload = function() {

                            // image객체 생성
                            var img = document.createElement("img");
                            // data-uri를 이미지 객체에 주입
                            img.src = reader.result;

                            // img 객체 주입 ->종류에 따라 blob 파일 생성하는 function 작동
                            img.onload = function() {
                            	 console.log(imgFile.id);
                                    // 상세 이미지9(S-DS-TYPE2) or 메인 섬네일(MS),상세
									// 섬네일(S-DS-TYPE1)에 따라 이름 붙여지는게 다름
                                    if (imgFile[0].id == "S-DS-TYPE2") {
                                        console.log("상세 사진 저장")
                                            // 이미지 이름을 붙이고 FORM DATA에 저장
                                        form_Data.append("S-DS-TYPE2-" + registCount, imgcomp(img, file, form_Data), "DS" + registCount);
                                        registCount++;
                                        // FORM 데이터 들어 있는 객체 확인하기
                                        for (var key of form_Data.keys()) {

                                            console.log("!!!!form data에 이런게?------>" + key);

                                        }

                                        for (var value of form_Data.values()) {

                                            console.log("!!!!form data에 이런게?-------->" + value);

                                        }

                                    } else if (imgFile[0].id == "S-MS") {
                                        console.log("메인 사진 저장")
                                            // 이미지 이름을 붙이고 FORM DATA에 저장
                                        form_Data.append("S-MS", imgcomp(img, file, form_Data), "S-MS");
                                        // FORM 데이터 들어 있는 객체 확인하기
                                        for (var key of form_Data.keys()) {

                                            console.log("!!!!form data에 이런게?------>" + key);

                                        }

                                        for (var value of form_Data.values()) {

                                            console.log("!!!!form data에 이런게?------>" + value);

                                        }
                                    } else {
                                        console.log("상세 썸네일 사진  저장")
                                            // 이미지 이름을 붙이고 FORM DATA에 저장
                                        form_Data.append("S-DS-TYPE1", imgcomp(img, file, form_Data), "DS10");
                                        // FORM 데이터 들어 있는 객체 확인하기
                                        for (var key of form_Data.keys()) {

                                            console.log("!!!!form data에 이런게?------>" + key);

                                        }

                                        for (var value of form_Data.values()) {

                                            console.log("!!!!form data에 이런게?------>" + value);

                                        }
                                    } // else end

                                } // img.onload=function() end

                        }; // reader.onload = function() end
                    }); // .each() end

                } // getBlob() end

                /*
				 * /////////////////////////////////////////////// 이미지파일 blob
				 * 파일로 변환
				 * 시작//////////////////////////////////////////////////////
				 */
                function imgcomp(img, file, form_Data) {
                    // getMSBLOB(img) function 작용
                    // canvas에 이미지 객체를 리사이징해서 담는 과정
                    var canvas = document.createElement("canvas");
                    var canvasContext = canvas.getContext("2d");

                    /* exp */
                    // 최대폭을 400으로 정했을 때
                    // 최대 폭을 넘어가는 경우 canvas 크기를 변경해준다.
                    // size기준으로 용량을 줄이게 되면 모양이 이상해 질수 있다.
                    // 크기 기준으로 줄이자.
                    // 크기기준으로 줄이기=> 루트(실제파일크기/축소하고싶은 용량 크기) =>나온 값 R=> (Width/R)
					// *(Height/R) =>MaxSize
                    /* exp 끝 */

                    var base_size = 1024000; // 1MB (썸네일 작업을 할지 말지 기준이 되는
												// size)
                    var comp_size = 102400; // 100kb (썸네일 작업 결과물 사이즈)

                    // 이미지 크기 가져옴
                    var width = img.width;
                    var height = img.height;
                    var size = file.size;

                    console.log("리사이징 시작");
                    // size가 더 크면 blob 파일 전송
                    if (size > base_size) {

                        console.log("파일이 너무커서 blob객체로 만듦");
                        // 지정한 사이즈에 맞게 비율 조정하기
                        var ratio = Math.ceil(Math.sqrt((size / comp_size), 2));
                        // 높이와 넓이 비율에 따라 변환
                        width = img.width / ratio,
                            height = img.height / ratio;

                        // canvas 옵션에 줌
                        canvas.width = width;
                        canvas.height = height;
                        canvas.getContext('2d').drawImage(img, 0, 0, width, height);

                        // canvas의 dataurl를 blob(file)화 하는 과정
                        var dataURI = canvas.toDataURL("image/jpeg"); // png
																		// =>
																		// jpg
																		// 등으로
																		// 변환 가능

                        // !!!!!byteType과 mimeType으로 변환하기 . 개념이 조금 복잡해서 공부가 필요함
                        var byteString = atob(dataURI.split(',')[1]);
                        var mimeString = dataURI.split(',')[0].split(':')[1].split(';')[0];

                        // 일반 고정 길이 이진 데이터 버퍼를 나타내는 데 사용되는 데이터형 바이너리 데이터 조작하기 위함
                        var ab = new ArrayBuffer(byteString.length);
                        var ia = new Uint8Array(ab);
                        for (var i = 0; i < byteString.length; i++) {
                            ia[i] = byteString.charCodeAt(i);
                        }
                        var tmpThumbFile = new Blob([ab], {
                            type: mimeString
                        });
                        // /////////////////////////bytetype으로 변환하기
						// 끝/////////////////////////////////
                        var thumbFile = tmpThumbFile; // 여기서 이미지 객체 img를 활용하여
														// 썸네일 처리를 할 수 있음
                        console.log("리사이징전 크기: " + thumbFile.size); // 크기가 1자리
																	// 이상 줄어듬
                        console.log("리사이징후 크기: " + file.size); // 크기가 6자리수

                        // blob 파일만 이제 전송하면 된다.
                        return thumbFile;

                    } else {
                        // size가 더 작으면 그냥 파일 전송
                        console.log("파일이 너무작아 resizing 안함");
                        return file;

                    }

                }; // function imgcomp end


                /*
				 * ///////////////////////////////이미지 파일 용량 축소
				 * 끝///////////////////////////////////////////////////
				 */

                /* form 가공해서 formdata에 붙여주는 함수 */
                function appendForm(formData){
                	// form을 json들의 배열 조합으로 바꿈
                    var form = $('#uploadForm').serializeArray();
                    // 수용인원 text
                    var capacity=$(".inp-wrap span[name='capacity']").text();
                    formData.append("sCapacity",capacity);
                    formData.append("hNo",27);
                    console.log("capacity"+capacity)
                    /* 하나씩 꺼내서 보낸다. */
                    $.each(form,function(index){
                     
                     /* formData에 담아준다. */
                     if(form[index].value !=""&& form[index].value !="선택"){
                    formData.append(form[index].name,form[index].value);
                        console.log(form[index].value);
                      }// if end
                    });// each end
                     
                    // 등록된 해쉬태그 값 가지고와서 변수에 담기
                    var hashTag="";
                    $(".inp-wrap input[class='hashTxt']").each(function(i){
                    	 // #빼고 저장하기
                     hashTag +=$(".inp-wrap input[class='hashTxt']").eq(i).val().substr(1)+",";	
                    })// hashtag each end
                    if(hashTag != ""){
                        /* 끝자리 , 자른 후에 넣어준다. */
                        formData.append("sHashtag",hashTag.slice(0,-1));
                        }// hashtag end
                    
                   // convenient 체크된 항목 하나의 변수에 담기
                    var convenient ="";
                    /* 편의시설 체크된 항목 하나로 담아주기 */
                    $("input[class='convenient']:checked").each(function(i){
                 	   /* ,형태로 넣기 */
                 	convenient +=$("input[class='convenient']:checked").eq(i).val()+","; 
                    })
                     if(convenient != ""){
                    /* 끝자리 , 자른 후에 넣어준다. */
                    formData.append("sConvenient",convenient.slice(0,-1));
                    }
                    // convenient 변수 담기 끝
                    
                    // safety 체크된 항목 하나의 변수에 담기
                    var safety ="";
                    /* 안전시설 체크된 항목 하나로 담아주기 */
                    $(".inp-wrap input[class='safety']:checked").each(function(i){
                 	   /* ,형태로 넣기 */
                 	safety +=$(".inp-wrap input[class='safety']:checked").eq(i).val()+",";
                    })
                     if(safety != ""){
                    /* 끝자리 , 자른 후에 넣어준다. */
                    formData.append("sSafety",safety.slice(0,-1));
                    } 
                    // safety end
                    
                    console.log("convenient : "+convenient);
                    console.log("safety : "+safety);
                    console.log("hashtag : "+hashTag);
                    
                }// appendForm end
                
                
                /* window 실행시 시작됨 */
                $(function() {
                	
                    var formData = new FormData();
                    // submit 등록. 실제로 submit type은 아니다.

                    // /////////////////////////////////form data 전송 ajax 통신 시작
					// /////////////////////////////////////////////////////////
                    // 임시 저장을 클릭하게 되면 ajax를 통해 서버로 보내짐
                    $('#go').on('click', function() {
                    	/* form 태그의 내용을 dto에 넣을 수 있도록 가공하기 */
                    	appendForm(formData);
                    	// 임시 저장에 대한 상태값주기 (여기다 이걸 쓰면 통일성이 깨짐.. 보완 필요)
                    	formData.append("sPerstatus","임시");
                        console.log("클릭");
                       /* var form = $('#uploadForm'); */
                       /*
						 * // 대응되는 key값을 받아옴 for (var index = 0; index <
						 * Object.keys(files).length; index++) { // formData 공간에
						 * files라는 이름으로 파일을 추가한다. // 동일명으로 계속 추가할 수 있다.
						 * formData.append('files', files[index]); }
						 */
                   
                        // ajax 통신으로 multipart form을 전송한다.
                        $.ajax({
                            type: 'POST',
                            enctype: 'multipart/form-data',
                            processData: false,
                            contentType: false,
                            cache: false,
                            timeout: 600000,
                            url: '/openkitchen/mypage' + '/teacherSpaceInfo',
                            data: formData,

                            success: function(result) {
                                    alert("성공");
                                    
                                    // 이 부분을 수정해서 다양한 행동을 할 수 있으며,
                                    // 여기서는 데이터를 전송받았다면 순수하게 OK 만을 보내기로 하였다.
                                    // -1 = 잘못된 확장자 업로드, -2 = 용량초과, 그외 = 성공(1)
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
                                // 전송실패에대한 핸들링은 고려하지 않음
                        }); // ajax end
                        formData=new FormData();
                    	
                    }); // o n click end
                     
                    $('#complete').on('click', function() {
                    	
                    	/* form 태그의 내용을 dto에 넣을 수 있도록 가공하기 */
                    	appendForm(formData);
                    	// 저장에 대한 상태값주기 (여기다 이걸 쓰면 통일성이 깨짐.. 보완 필요)
                    	formData.append("sPerstatus","신청");
                    	
                    	
                    	
                        var formsize=0;
                    	
                    	for (var key of formData.keys()) {
                    		   console.log("formData.key : "+key); 
                    		   // 상세 추가는 있어도 되고 없어도 되니 count에서 빼준다.
                    		   if(key.includes("S-DS-TYPE2-")){
                    		   console.log("필수가 아닌 선택 요소라 count에 안들어감");
                    		   }else{
                    		   formsize++
                    		      
                    		   }// if end
                    		               		}// for end
                          console.log(formsize);
                      	// 필수 등록 수 12를 넘지 못하면 다음으로 이동 불가
                          if(formsize <12){
                    		alert("신청서를 마저 작성해 주세요");
                    		formData= new FormData();
                    		formsize=0;
                    	
                    	}else{
                    	
                        $.ajax({
                            type: 'POST',
                            enctype: 'multipart/form-data',
                            processData: false,
                            contentType: false,
                            cache: false,
                            timeout: 600000,
                            url:'/openkitchen/mypage' + '/teacherSpaceInfo',
                            data: formData,

                            success: function(result) {
                            	$(location).attr('href',"in");
                                }// success function
                        
                                // 전송실패에대한 핸들링은 고려하지 않음
                           }); // ajax end
                    	}// null값 없는지 체크 end
                 
                    	formData= new FormData();
                    
                    }); // o n click end




                    // / ////////////////////////////////form data 전송 ajax 통신 끝
					// /////////////////////////////////////////////////////////

                    // <input type=file> 태그 기능 구현
                    // 메인 썸네일
                    $('#teacherSpace #mainThum input[type=file]').change(function() {
                        $("#mainThum label").css('opacity', '0');
                        addPreviewMain($(this)); // preview form 추가하기
                        getBlob($(this), formData); // 서버로 전송할 blob 파일 만들기
                    });
                    // 상세 썸네일
                    $('#teacherSpace #detailThum input[type=file]').change(function() {
                        $("#detailThum label").css('opacity', '0');
                        addPreviewDetail($(this)); // preview form 추가하기
                        getBlob($(this), formData); // 서버로 전송할 blob 파일 만들기
                    });
                    // 상세 이미지
                    $('#teacherSpace #input-detail-img input[type=file]').change(function() {
                        $("#input-detail-img label").css('opacity', '0');
                        addPreviewPhoto($(this)); // preview form 추가하기
                        getBlob($(this), formData); // 서버로 전송할 blob 파일 만들기

                    });


            

                  

                    $('#min-btn').click(function(e) {

                        e.preventDefault();
                        var stat = $('#howMany').text();
                        var num = parseInt(stat, 10);
                        num--;
                        if (num <= 0) {
                            alert('더이상 줄일수 없습니다.');
                            num = 1;
                        }
                        $('#howMany').text(num);
                        console.log($("#howMany").html());
                    });

                    $('#plus-btn').click(function(e) {
                        e.preventDefault();
                        var stat = $('#capacity').text();
                        var num = parseInt(stat, 10);
                        num++;
                        $('#capacity').text(num);
                        console.log($("#capacity").html());
                    });

                    // 글자수 체크
                    $('.placeEx').keyup(function(e) {
                        var content = $(this).val();
                        $('#placeEx-counter').html(content.length + " / 45"); // 글자수
																				// 실시간
																				// 카운팅

                        if (content.length > 45) {
                            alert("최대 45자까지 입력 가능합니다.");
                            $(this).val(content.substring(0, 45));
                            $('#placeEx-counter').html("45 / 45");
                        }
                    });

                    
                  
                    $('#addHash').click(function() {
                    	var im="<c:url value='/resources/img/icon/ico-search_del.png'/>";
                        if ($(".hashTxt").length < 3) {
                            if ($('.hashText').val() == '') {
                                alert("태그를 입력해 주세요"); 
                               
                            } else {
                                $('#hashField').append(
                                    '<input type="text" class="hashTxt"   readonly="readonly" value=#' + $('.hashText').val() + '><button type="button" class="delHash"><img src="../resources/img/icon/ico-search_del.png" alt=""></button>'
                                ); // end append
                                $(".hashText").val('');
                                $('.delHash').on('click', function() {
                                    // $(this).prevAll().remove (); // remove
									// the textbox
                                    $(this).prev().remove();
                                    $(this).remove(); // remove the button
                                    console.log($(".hashTxt"));
                                }); // function end
                            } // else end
                        } else {
                            $('#hashField').append(
                                '<div style"color:red;">최대 3개까지 등록 가능합니다.</div>'
                            ); // end append

                            $('#addHash').prop("disabled", true);
                            $('.delHash').on('click', function() {
                                // $(this).prevAll().remove (); // remove the
								// textbox
                                $(this).prev().remove();
                                $(this).remove(); // remove the button
                                console.log($(".hashTxt"));
                                $('#addHash').prop("disabled", false);
                                $('#hashField div').remove();
                            }); // onclic end
                        }
                        console.log($(".hashTxt"));
                    }); // end click

                   
                    // 렌탈 하겠다고할시 form이 나오도록 설정한다.
                    $("#yesrental").on("click",function(){
                    	
                    	$("#uploadForm").css({
                    		height:'100%',
                    		
                    	    overflow:'inherit'
                    		
                    	}),
                    	
                    	$("#btn-norental").css({
                    		width:'0px',
                    		height:'0px',
                    	    margin:'0'
                    		
                    	})
                    	
                    })// yesrental end
                    
                    
                    
                    
                    
                    
                    $("#norental").on("click",function(){
                    	$("#uploadForm").css("overflow",""),
                    	$("#uploadForm").animate({
                    		height:'1px',
                    		overflow:'auto',
                    		overflow:'hidden'
                    			
                    		
                    	},1000),
                    	
                    	$("#btn-norental").css({
                    		width:'168px',
                    		height:'64px',
                            margin: '153px 107px 0 0'
                    	   
                    		
                    	})
                    	
                    })
                    
                    $("#add-question").click(function(){
                        $("#oftenQuestion strong").append(
                            '<div class="qnaInner">'+
                                '<div class="qnaInner1"><span class="qna-title">Q. 자주 문의되는 질문을 입력해주세요</span><textarea name="" id="" placeholder="클래스에 사용되는 재료는 국내산인가요?" class="qna-textarea" cols="30" rows="5" maxlength="100"></textarea></div>'+
                                '<div class="qnaInner2"><span class="qna-title">A. 질문에 대한 답변을 입력해주세요</span><textarea name="" id="" placeholder="네, 롤케이크 클래스에 사용되는 재료의 원산지는 모두 국내산입니다" class="qna-textarea" cols="30" rows="5"></textarea></div>'+
                            '</div>'
                        );
                      
                    });

    
                }); // document.ready(function) end
           
                /* 질문 추가하기 함수 */
                function setDisplay() {
                    if ($("#question").is(":checked")) {
                        $("#oftenQuestion").show();
                    } else {
                        $("#oftenQuestion").hide();
                    }
                } // setDisplay end

               