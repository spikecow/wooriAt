


$(function(){

	$(document).ready( function() {

		$('#enPage').click(function() {
			param.langCd = "EN";
			window.location='/?langCd=EN';
		});

		$('#krPage').click(function() {
			param.langCd = "KR";
			window.location='/?langCd=KR';
		});

		// 191122 GNB탭 수정사항
		// var gnb = $('.gnb_wrap').offset();
		// if(window.location.href.indexOf("/service/serviceInfo") < 0){
		// 	/* header - gnb */
		// 	$(window).scroll(function() {
		// 		if($(document).scrollTop() > gnb.top ) {
		// 			$('.gnb_wrap').addClass('fixed');
		// 		}
		// 		else {
		// 			$('.gnb_wrap').removeClass('fixed');
		// 		}
		// 	});
		// }

		var gnb = $('.gnb_wrap').offset();
		$(window).scroll(function() {
			if($(document).scrollTop() > gnb.top ) {
				$('.gnb_wrap').addClass('fixed');
			}
			else {
				$('.gnb_wrap').removeClass('fixed');
			}
		});

		/* reference - slide */
		var reference_swiper = new Swiper('.reference_slide .conts', {
			slidesPerView: 3,
			spaceBetween: 50,
			pagination: {
				el: '.reference_slide .swiper-pagination',
				clickable: true,
			},
			navigation: {
				nextEl: '.reference_slide .swiper-button-next',
				prevEl: '.reference_slide .swiper-button-prev',
			},
		});

		/* reference - hover   */
		$(".reference_wrap ul li").hover(function(){
				$(".img .dim",this).hide();
				$(".img .i_h",this).addClass('on');
				//$(".img .i_h img",this).stop().animate({height : '150px'}, 300);
				$(this).css("box-shadow", "3px 5px 30px #d1d1d1");
			},
			function(){
				$(".img .dim",this).show();
				$(".img .i_h",this).removeClass('on');
				//$(".img .i_h img",this).stop().animate({height : '95px'}, 300);
				$(this).css("box-shadow", "none");
			});
	});

	//11-22 html 에서 옮겨옴
	//11-3 스크립트 변경
	$(function() {
		$('ul.tab li').click(function() {
			var activeTab = $(this).attr('data-tab');
			$('ul.tab li').removeClass('current');
			$('.tabcontent').removeClass('current');
			$(this).addClass('current');
			$('#' + activeTab).addClass('current');
		})
	});

	//헤더 고정
	$('ul.tab li a').on('click', function(event){
		event.preventDefault();
		$('.gnb_wrap').removeClass('fixed');
		//$('html,body').animate({scrollTop:$(this.hash).offset().top}, 300);
	});

	// /* header - gnb */
	// var gnb = $('.gnb_wrap').offset();
	// $(window).scroll(function() {
	// 	if($(document).scrollTop() > gnb.top ) {
	// 		$('.gnb_wrap').addClass('fixed');
	// 	}
	// 	else {
	// 		$('.gnb_wrap').removeClass('fixed');
	// 	}
	// });


	/*GNB 이벤트*/
	$(document).on("mouseenter",".asdf",function(){
		if ($(".subm").is(":visible")) {
			$(".subm").fadeOut('fast',function(){
				$(".subm").find("ul").css("opacity","0.3").animate({opacity: 1},100);
			});
			$(this).find(".subm").show();
		} else {
			$(this).find(".subm").slideDown('fast',function(){
			});
		}
	}).on("mouseleave",".asdf",function(){
			$(this).find(".subm").fadeOut('fast');
	});

	/* main_industires_slide  11-02수정*/
	new Swiper('.main_industires_slide', {
		slidesPerView: 5,
		spaceBetween: 30,
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},
	});

	/* main_pop_slide  02-02수정*/
	 new Swiper('.main_pop_slide', {
		autoplay:false,
		speed: 1000,
		loop: true,
		pagination: {
			el: ' .swiper-pagination',
			clickable: true
		},
	});	

	// /* reference - slide */
	// var reference_swiper = new Swiper('.reference_slide .conts', {
	// 	slidesPerView: 3,
	// 	spaceBetween: 50,
	// 	pagination: {
	// 		el: '.reference_slide .swiper-pagination',
	// 		clickable: true,
	// 	},
	// 	navigation: {
	// 		nextEl: '.reference_slide .swiper-button-next',
	// 		prevEl: '.reference_slide .swiper-button-prev',
	// 	},
	// });

	// /* reference - hover */
	// $(".reference_wrap ul li").hover(function(){
	// 	$(".img .dim",this).stop().hide();
	// 	$(".img .i_h img",this).stop().animate({width : '150px'}, 300);
	// 	$(this).stop().css("box-shadow", "3px 5px 30px #d1d1d1");
	// },
	//
	// function(){
	// 	$(".img .dim",this).stop().show();
	// 	$(".img .i_h img",this).stop().animate({width : '95px'}, 300);
	// 	$(this).stop().css("box-shadow", "none");
	// });

	/* industries - slide */
	var industries_swiper = new Swiper('.industries_slide', {
		autoplay:false,
		speed: 1000,
		loop: true,
		pagination: {
			el: '.industries_slide .swiper-pagination',
			clickable: true
		},
	});


	// service - scroll
	$('.download').click(function () {
		$('body,html').animate({scrollTop:$(this.hash).offset().top}, 700);
		return false;
	});

	
	/* 셀렉트 박스 텍스트 부분 */
	$(document).on("blur",".sel select",function(){
		$(this).parent().removeClass('focus');
	});

	$(document).on("change",".sel select",function(){
		var select_name = $(this).children('option:selected').text();
		$(this).siblings('label').text(select_name);
	});

	/* search 화살표 */
	$('.press').on('click',function(e){
		e.preventDefault();
		if($('.press span.sign').hasClass('on')){
			$('.press span.sign').removeClass('on');
		}else{
			$('.press span.sign').addClass('on');
		}
	});

    /* search2 */
    $(document).on("click",".search_top2",function(e){
    	$(".btn").hide();
	    $(".search_box2").show();
	    return false;
	});

    $(document).on("click","body",function(e){
    	if ( !$(e.target).hasClass("search_top2") ) {
    		$(".search_box2").hide();
    		$(".btn").show();
    	}
    });

	/* file */
	var uploadFile = $('.fileBox .uploadBtn');
	uploadFile.on('change', function(){
		if(window.FileReader){
			var filename = $(this)[0].files[0].name;
		} else {
			var filename = $(this).val().split('/').pop().split('\\').pop();
		}
		$(this).siblings('.fileName').val(filename);
	});

	
	
	
	/* pdf - hover*/
	$(".press_pdf ul li").hover(function(){
		$(".pdf_download",this).stop().show();
	},  
	function(){  
		$(".pdf_download",this).hide();  
	});

	

	/* quick */
	$(window).scroll( function() {
		if ($(this).scrollTop() > 300 ) {
			$('.scrollTop').fadeIn();
		} else {
			$('.scrollTop').fadeOut();
		}
	});
	/* top scroll go*/
	$('.scrollTop span').click(function () {
		$('body,html').animate({scrollTop: 0}, 300);
		return false;
	});
	
	
	/* tab */
	$("ul.tab_map_box li p").click(function (event) {
		var index = $(".tab_map_box li").index($(this).parent());
		$(".map_list li").css("display", "none");
		$(".map_list li").eq(index).css("display", "block");
		$('.tab_ly').removeClass('tab_fixed');
		$(event.target).closest('li').addClass( "on" );
		$(this).parent().siblings().removeClass("on");
	});

	/* Date Format*/
	Mustache.Formatters = {
			date1: function(str) {
				if(str){
					return "";
				}else{
					var yyyy = str.substring(0,4);
					var mm = str.substring(4,6);
					var dd = str.substring(6,8);
					return yyyy + "." + mm + "." + dd;
				}
			},
			date2: function(str) { 
				if(str){
					str = "";
				}else{
					var yyyy = str.substring(0,4);
					var mm = str.substring(4,6);
					var dd = str.substring(6,8);
					return yyyy + "/" + mm + "/" + dd;
				}
				
			}
	};
});

//Rendering
function mekeTemplate(templateName, data , targetClass){
	var template = $('#'+ templateName).html();
	var html = Mustache.render(template,data);
	$('#'+ targetClass).append(html);
}

function safeTagToHtmlTag(content) {
	if(content == '' || content == null){
		return null;
	}

	var result = content.replace(/&gt;/gi, ">");
	result = result.replace(/&lt;/gi, "<");
	result = result.replace(/&quot;/gi, "\"");
	result = result.replace(/&amp;/gi, "&");
	result = result.replace(/&#039;/gi, "'");
	result = result.replace(/&#39;/gi, "'");
	result = result.replace(/&&#40;/gi, "(");
	result = result.replace(/&&#41;/gi, ")");
	result = result.replace(/&#40;/gi, "(");
	result = result.replace(/&#41;/gi, ")");
	result = result.replace(/&#x2F;/gi, "/");
	return result;
}



//isEmpty
var hasOwnProperty = Object.prototype.hasOwnProperty;

function isEmpty(obj) {

    // null and undefined are "empty"
    if (obj == null) return true;

    // Assume if it has a length property with a non-zero value
    // that that property is correct.
    if (obj.length > 0)    return false;
    if (obj.length === 0)  return true;

    // If it isn't an object at this point
    // it is empty, but it can't be anything *but* empty
    // Is it empty?  Depends on your application.
    if (typeof obj !== "object") return true;

    // Otherwise, does it have any properties of its own?
    // Note that this doesn't handle
    // toString and valueOf enumeration bugs in IE < 9
    for (var key in obj) {
        if (hasOwnProperty.call(obj, key)) return false;
    }

    return true;
}

//Google Api
function initMap(lat,lng,title,target){
	
	var myLatlng = new google.maps.LatLng(lat,lng); // 위치값 위도 경도
	var Y_point			= lat;		// Y 좌표
	var X_point			= lng;		// X 좌표
	var zoomLevel		= 18;		// 지도의 확대 레벨 : 숫자가 클수록 확대정도가 큼
	var markerTitle		= title;	// 현재 위치 마커에 마우스를 오버을때 나타나는 정보
	var markerMaxWidth	= 300;		// 마커를 클릭했을때 나타나는 말풍선의 최대 크기


	var myLatlng = new google.maps.LatLng(Y_point, X_point);
	var mapOptions = {
						zoom: zoomLevel,
						center: myLatlng,
						mapTypeId: google.maps.MapTypeId.ROADMAP
					}
	var map = new google.maps.Map(document.getElementById(target), mapOptions);
	var marker = new google.maps.Marker({
											position: myLatlng,
											map: map,
											title: markerTitle
	});
	var infowindow = new google.maps.InfoWindow(
												{
													//content: contentString,
													maxWizzzdth: markerMaxWidth
												}
			);
	google.maps.event.addListener(marker, 'click', function() {
		infowindow.open(map, marker);
	});
}
