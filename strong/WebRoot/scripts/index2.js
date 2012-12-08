/**
 * @author 1
 */
$(function() {
	$(".navigation").mouseover(function() {
		$(this).find(".subnavigation").css("display","block");
	});
	$(".navigation").mouseleave(function() {
		$(this).find(".subnavigation").css("display","none");
	});

	
});
