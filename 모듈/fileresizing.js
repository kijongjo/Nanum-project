 //by 조기종 이미지 리사이징_200329
 //모듈: 파일 업로드시 프론트 단에서 용량을 줄인다. 줄이고싶은 용량크기를 정해 줄일 수 있다.
 // 이미지 파일 blob 파일로 변환
 function imgToBlob(img, file, form_Data) {
     // canvas에 이미지 객체를 리사이징해서 담는 과정
     var canvas = document.createElement("canvas");
     var canvasContext = canvas.getContext("2d");


     // 최대폭을 400으로 정했을 때 최대 폭을 넘어가는 경우 canvas 크기를 변경해준다.
     // size기준으로 용량을 줄이게 되면 모양이 이상해 질수 있다.크기 기준으로 줄이자.
     // 크기기준으로 줄이기=> 루트(실제파일크기/축소하고싶은 용량 크기) =>나온 값 R=> (Width/R) *(Height/R) =>MaxSize
     var base_size = 1024000; // 1MB (썸네일 작업을 할지 말지 기준이 되는size)
     var comp_size = 102400; // 100kb (썸네일 작업 결과물 사이즈)

     // 이미지 크기
     var width = img.width;
     var height = img.height;
     var size = file.size;

     // size가 더 크면 blob 파일 전송
     if (size > base_size) {
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
         var dataURI = canvas.toDataURL("image/jpeg"); // png=>jpg 등으로 변환 가능

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
         }); // bytetype으로 변환하기 끝

         // 여기서 이미지 객체 img를 활용하여 썸네일 처리를 할 수 있음
         var thumbFile = tmpThumbFile;
         // blob 파일만 이제 전송하면 된다.
         return thumbFile;
     } else {
         // size가 더 작으면 그냥 파일 전송
         return file;
     }
 }; // function imgToBlob end

 // binary 파일 준비
 function blobToBinary(imgFile, form_Data) {
     var fileList = imgFile[0].files;
     $.each(fileList, function(i, file) {
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
                     // 상세 이미지9(S-DS-TYPE2) or 메인 섬네일(MS),상세
                     // 섬네일(S-DS-TYPE1)에 따라 이름 붙여지는게 다름
                     if (imgFile[0].id == "DetailSumnail") {
                         // 이미지 이름을 붙이고 FORM DATA에 저장
                         form_Data.append("DetailSumnail" + registCount, imgToBlob(img, file, form_Data), "DetailSumnail" + registCount);
                         registCount++;
                     } else if (imgFile[0].id == "MainSumnail") {
                         // 이미지 이름을 붙이고 FORM DATA에 저장
                         form_Data.append("MainSumnail", imgToBlob(img, file, form_Data), "MainSumnail");
                     } else {
                         // 이미지 이름을 붙이고 FORM DATA에 저장
                         form_Data.append("DetailSumnail", imgToBlob(img, file, form_Data), "DetailSumnail");
                     } // else end
                 } // img.onload=function() end
         }; // reader.onload = function() end
     }); // .each() end
 } // blobToBynary() end