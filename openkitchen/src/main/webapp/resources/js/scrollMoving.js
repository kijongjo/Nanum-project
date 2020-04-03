

$(window).scroll(function(){
	var position = $(window).scrollTop();
	 
	if(position >= 800){
		var currentPosition= $(".selectSchedule").position().top;
		
	 
	   if( $(".selectSchedule").css("position") =="static" ){
	  $(".selectSchedule").css("position","absolute").css("width","100%").css("top","0");
		   
	   }
	   $(".selectSchedule").stop().animate({top:position-600+"px"},500);	
	}else{	$(".selectSchedule").css("position","static");}
})
