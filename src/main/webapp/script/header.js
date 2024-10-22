$(document).ready(function() {
	$('#menu2_left > li').mouseenter(function () {

            $(this).find('.sub').stop().fadeIn();

        }).mouseleave(function () {

            $('.sub').stop().hide();

        });
 });