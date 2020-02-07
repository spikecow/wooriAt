var param = {"langCd" : langCd }

$(function(){
	/* tab 스크롤 스크립트입니다. */
	$(document).ready( function() {
		$('header').addClass("about");
		$('header h1').text("About GS ITM");

		/*var tab = $('.tab_ly').offset();
		var tab_before = $('.tab_before').offset(); //탭 클릭 시 해더 돌려놓는 용도
		var tab_after = $('.tab_after').offset(); //탭 해더 돌려놓는 용도
		$(window).scroll(function() {
			if($(this).scrollTop() >= tab_before.top) {
				$('.gnb_wrap').removeClass('fixed');
			}
	
			if($(this).scrollTop() > tab.top) {
				$('.tab_ly').addClass('tab_fixed');
				$('.tab_ly').show();
				$('.gnb_wrap').removeClass('fixed');
			}
			else {
				$('.tab_ly').removeClass('tab_fixed');
			}
			 탭 예외 
			if($(document).scrollTop() > tab_after.top) {
				$('.tab_ly').hide();
				$('.gnb_wrap').addClass('fixed');
			}  
		});*/
	});

	/* tab */
	$("ul.tab li p").click(function (event) {
		var index = $(".tab_ly li").index($(this).parent());
		$(".tab_conts li").css("display", "none");
		$(".tab_conts li").eq(index).css("display", "block");
		$('.tab_ly').removeClass('tab_fixed');
		$(event.target).closest('li').addClass( "on" );
		$(this).parent().siblings().removeClass("on");
	});

	$('ul.tab li a').on('click', function(event){
		event.preventDefault();
		$('.gnb_wrap').removeClass('fixed');
		$('html,body').animate({scrollTop:$(this.hash).offset().top}, 300);
	});
});