$(document).ready(function() {
	$(document).on('turbolinks:load',function(){
		var back = $('#back');
			$(window).scroll(function() {
				if ($(this).scrollTop() > 100) {
					back.fadeIn();
				}else{
					back.fadeOut();
					}
				});
				back.click(function(){
				$('body, html').animate({
					scrollTop:0
				},600);
				return false;
			});
	});
});

// 上でアイコンが消えない書き方
// $(function(){
// 	$(document).on('turbolinks:load',function(){
// 		$('#back').on('click',function(){
// 			$('body, html').animate({
// 				scrollTop:0
// 			},600);
// 			return false;
// 		});
// 	});
// });