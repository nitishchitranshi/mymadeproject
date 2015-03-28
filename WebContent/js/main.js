
$(document).ready(function(){
	
	var BillHeight =300;

	$(window).scroll(function(){
		if ($(window).scrollTop() < BillHeight) {
	    	$( "header.fixed_nav" ).stop().animate({
	    		marginTop : '-135px'
			 }, 200);

			console.log($(window).scrollTop());
			 
	    } else {
	    	$( "header.fixed_nav" ).stop().animate({
	    		marginTop : 0
			 }, 200);
	    }

	});

});