
$(document).ready(function(){
/*layer*/
	$('.gallery .thumbnail').on('click', function(e){
		e.preventDefault();
		$('.img-modal').addClass('on');
	});
	$('.img-modal .close').on('click', function(){
		$('.img-modal').removeClass('on');
	});

$(window).scroll(function(){
	if($(window).scrollTop() > 150){
		$('#backtotop').addClass('visible');
	};
});
});
