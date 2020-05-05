//모듈: Javascript의 성능을 높여줄 수 있는 append 모듈

//fragment
var $frag = $(document.createDocumentFragment());
//json
var obj = JSON.parse(data);
//반복문    
obj.forEach(function(item) {
    contents1 = item.something1;
    contents2 = '<a href="ex1"><img src="' + contents1 + '">';
    contents3 = '<h3>' + item.something2 + '</h3>';
    contents4 = '<div class="Price"><strong>￦</strong>' + item.something3 + '</div>';
    contents5 = '<p>' + item.something4 + '</p>' + '</a>';
    tag = contents2 + contents3 + contents4 + contents5;
    $frag.append('<li>' + tag + '</li>');
}); // foreachend
//append 
$("특정 div").append($frag);