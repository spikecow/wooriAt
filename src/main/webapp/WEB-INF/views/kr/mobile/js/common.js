// /* header - gnb */
// $(document).ready( function() {
// 	var gnb = $('header').offset();
//     $(window).scroll(function() {
// 		if($(document).scrollTop() > gnb.top ) {
// 			$('header').addClass('fixed');
// 		}
// 		else {
// 			$('header').removeClass('fixed');
// 			$('nav, .nav_dim').hide();
// 			$('.gnb_menu').removeClass('on');
// 		}
// 	});
// });
//
// $(function(){
// 	/* gnb */
// 	$('.gnb_menu').on('click',function(e){
// 		e.preventDefault();
// 		$('nav').slideToggle();
// 		$('.gnb_menu').toggleClass('on');
// 		$('header').addClass('fixed');
// 		$('.nav_dim').toggle();
// 	});
// 	/* nav */
// 	$('.dep1 li > p').click(function(e) {
// 		e.preventDefault();
// 		$(e.target).closest('li').toggleClass( "on" );
// 		$(this).next().slideToggle(200).parent().siblings().children(".dep2").hide();
// 		$(this).parent().siblings().removeClass("on");
// 	});
//
// $(document).ready( function() {
// 	var tab = $('.tab_ly').offset();
// 	var tab_after = $('.tab_after').offset(); //탭 해더 돌려놓는 용도
// 	$(window).scroll(function() {
// 		if($(document).scrollTop() <= tab.top) {
// 			$('.tab_ly').removeClass('tab_fixed');
// 		}
//
// 		if($(this).scrollTop() > tab.top) {
// 			$('.tab_ly').addClass('tab_fixed');
// 			$('.tab_ly').show();
// 		}
// 		else {
// 			$('.tab_ly').removeClass('tab_fixed');
// 			$('.tab_conts').css({"margin-top": "25px"});
//
// 		}
//
// 		/* 탭 예외 */
// 		if($(this).scrollTop() > tab_after.top) {
// 			$('.tab_ly').hide();
// 			$('header').addClass('fixed');
// 			$('header').show();
// 		}
// 	});
// });
//
// $(function(){
// 	/* tab */
// 	$("ul.tab li p").click(function (event) {
// 		var index = $(".tab_ly li").index($(this).parent());
// 		$(".tab_conts li").css("display", "none");
// 		$(".tab_conts li").eq(index).css("display", "block");
// 		$(event.target).closest('li').addClass( "on" );
// 		$(this).parent().siblings().removeClass("on");
// 	});
//
// 	var scroll = $('.tab').offset();
// 	$('ul.tab li a').on('click', function(){
// 		$('header').hide();
// 		$('.tab_conts').css({"margin-top": "60px"});
// 		$('body,html').animate({scrollTop:scroll.top}, 300);
// 	});
// });
//
//
//
// 	/* quick */
// 	$(window).scroll( function() {
// 		if ($(this).scrollTop() > 150 ) {
// 			$('.scrollTop').fadeIn();
// 		} else {
// 			$('.scrollTop').fadeOut();
// 		}
// 	});
// 	// top scroll go
// 	$('.scrollTop span').click(function () {
// 		$('body,html').animate({scrollTop: 0}, 300);
// 		return false;
// 	});
//
//
//
// 	/* reference - slide */
// 	var news_swiper = new Swiper('.reference_wrap', {
// 		autoplay:false,
// 		width:260,
// 		speed: 1500,
// 		spaceBetween: 15,
// 		loop: true,
// 		pagination: {
// 			el: '.reference_wrap .swiper-pagination',
// 			clickable: true
// 		},
// 	});
//
//
// 	/* industries - slide */
// 	var news_swiper = new Swiper('.industries_wrap', {
// 		autoplay:false,
// 		speed: 1000,
// 		spaceBetween: 25,
// 		loop: true,
// 		pagination: {
// 			el: '.industries_wrap .swiper-pagination',
// 			clickable: true
// 		},
// 	});
//
// 	/* news - slide */
// 	var news_swiper = new Swiper('.news_wrap', {
// 		autoplay:false,
// 		speed: 1000,
// 		spaceBetween: 25,
// 		loop: true,
// 		pagination: {
// 			el: '.news_wrap .swiper-pagination',
// 			clickable: true
// 		},
// 	});
// });
//
