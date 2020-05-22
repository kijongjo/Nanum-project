//by 조기종 이미지 파일 유효성 체크_200317
//모듈
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