var param = {"langCd": langCd, deviceCd: "PC"} ;
var resultData;
var buildVer = "";

$(function(){
	// header name 변경
	$('header').addClass("main_header");
	$('footer').addClass("main_footer");

	//전체 화면 구성
	renderMainView();

	var headerHtml = ""+
		"<div class='main_bg'>"+
		"<div class='main_top_b'>"+
		"<ul class='top_img_box'>"+
		"<li data-tab='tab1' class='current' ><img src='/common/images/main/main_out_on.png?date="+buildVer+"'  alt='IT OURSOURCING'/></li>"+
		"<li data-tab='tab2'><img src='/common/images/main/main_sao_off.png?date="+buildVer+"'  alt='SAO SERVICE'/></li>"+
		"<li data-tab='tab3'><img src='/common/images/main/main_cloud_off.png?date="+buildVer+"'  alt='CLOUD'/></li>"+
		"</ul>"+
		"</div>"+
		"<ul class='big_img'>"+
		"<li id='tab1' class='big_img_icon current'>"+
		"<div class='key_m'>"+
		"<h1 style='font-size:80px;'>IT Outsourcing</h1>"+
		"<p>고객의 비지니스 목표를 달성할 수 있도록 포괄적인<br>서비스 및 솔루션을 제공합니다</p>"+
		"</div>"+
		"<img src='/common/images/main/SAO.png?date="+buildVer+"'  alt='IT OURSOURCING'/>"+
		"</li>"+
		"<li id='tab2' class='big_img_icon '>"+
		"<div class='key_m'>"+
		"<h1  style='font-size:70px;'>SAP Total Service</h1>"+
		"<p>자원관리 솔루션인 SAP 컨설팅 구축 및 운영 등<br> 전반적인 서비스를 제공합니다</p>"+
		"</div>"+
		"<img src='/common/images/main/OURSOURCING.png?date="+buildVer+"'  alt='SAO SERVICE'/>"+
		"</li>"+
		"<li id='tab3' class='big_img_icon '>"+
		"<div class='key_m'>"+
		"<h1>CLOUD</h1>"+
		"<p>비지니스와 산업을 분석해 <br> 최적화 된 클라우드환경을 제공합니다</p>"+
		"</div>"+
		"<img src='/common/images/main/cloud_img.png?date="+buildVer+"'  alt='CLOUD'/>"+
		"</li>"+
		"</ul>"+
		"</div>";

	$('header').empty();
	$('header').append(headerHtml);

    $('ul.top_img_box li').click(function() {
        var activeTab = $(this).attr('data-tab');
        $('ul.top_img_box li').removeClass('current');
        $('.big_img_icon').removeClass('current');
        $(this).addClass('current');
        $('#' + activeTab).addClass('current');
    });
});

$(document).ready(function(){
    var tabindex = 0;
    $('ul.top_img_box li').click(function() {
        tabindex = $(this).index();
        $('ul.top_img_box li').each(function(idx){
            $(this).find("img").attr("src",$(this).find("img").attr("src").replace("_off.png","_on.png"));
            if(tabindex !=idx) {
                $(this).find("img").attr("src",$(this).find("img").attr("src").replace("_on.png","_off.png"));
            }
        });
    });
    
});

/*메인  키비쥬얼 스크립트*/
var top_img_box_fist=false;
var big_img_index,big_img_next=0;
$(function() {
	$(document).on("click",".top_img_box>li",function(){
		var index = $(".top_img_box>li").index(this);
		for (var i=0;i<($(".top_img_box").find("img").length);i++) {
			$(".top_img_box").find("img").eq(i).attr("src",$(".top_img_box").find("img").eq(i).attr("src").replace('_on','_off'));
		}
		$(this).find("img").attr("src",$(this).find("img").attr("src").replace('_off','_on'));
		$(".big_img_icon").removeClass("current").eq(index).addClass("current").fadeIn();
		big_img_next = index;
	});

	var bg_loop = setInterval(bg_change,3000);
	$(".top_img_box").hover(function(){
		clearInterval(bg_loop);
	}, function() {
		bg_loop = setInterval(bg_change,3000);
	});
});
function bg_change() {
	big_img_index = $(".big_img").find(".current").index();
	if (big_img_next < 0 || big_img_next > big_img_index) big_img_next = 0;
	if (big_img_next < ($(".big_img_icon").length-1)) big_img_next++;
	else big_img_next = 0;
	for (var i=0;i<($(".top_img_box").find("img").length);i++) {
		$(".top_img_box").find("img").eq(i).attr("src",$(".top_img_box").find("img").eq(i).attr("src").replace("_on.png","_off.png"));
	}
	$(".top_img_box").find("img").eq(big_img_next).attr("src",$(".top_img_box").find("img").eq(big_img_next).attr("src").replace("_off.png","_on.png"));
	$(".big_img_icon").removeClass("current").eq(big_img_next).addClass("current").css("opacity",0.5).animate({"opacity":1},1000, function(){
	});
}

//데이터 조회
function getMainViewInfo(){

	$.ajax({
		url : "/main/getMainViewInfo",
		type : 'POST',
		data: param,
		async: false,
		success : function(data){
			resultData = data;
			buildVer = data.buildVer;
		}, error : function(error){
			location.href = "/error";
			// alert("에러가 발생했습니다. 잠시후에 시도하여 주세요.",error);
		}
	});
}

//전체 화면 구성
function renderMainView(){

	getMainViewInfo();

	resultData.safeTagToHtmlTag = function(){
		return function(t,render){
			var result = render(t).replace(/&gt;/gi, ">");
			result = result.replace(/&lt;/gi, "<");
			result = result.replace(/&quot;/gi, "\"");
			result = result.replace(/&amp;/gi, "&");
			result = result.replace(/&#039;/gi, "'");
			result = result.replace(/&&#40;/gi, "(");
			result = result.replace(/&&#41;/gi, ")");
			result = result.replace(/&#40;/gi, "(");
			result = result.replace(/&#41;/gi, ")");
			result = result.replace(/&#x2F;/gi, "/");
			return result;
		}
	};


	resultData.dateFmt = function(){
		return function(t,render){
			var yyyy = render(t).substring(0,4);
			var mm = render(t).substring(4,6);
			var dd = render(t).substring(6,8);
			return yyyy + "." + mm + "." + dd;
		}
	};

	resultData.dateFmt2 = function(){
		return function(t,render){
			var yyyy = render(t).substring(0,4);
			var mm = render(t).substring(4,6);
			var dd = render(t).substring(6,8);
			return yyyy + " - " + mm + " - " + dd;
		}
	};

	if(!isEmpty(resultData)) {
		mekeTemplate('industries-wrap-template', resultData, 'container');
		mekeTemplate('news-wrap-template', resultData, 'container');
		//Industries 소개
		var industTitl = resultData.mainMgt.indDesc;
		$('.main_wrap > div.conts > h2').html(safeTagToHtmlTag(industTitl));
		
		var popupHtml = "";
		var popupInnerHtml = "";
		if( resultData.tbPopupMgtList.length > 0 ){ 
			popupHtml = "";
			popupHtml += "<div class=\"layout_Pop main\" id=\"mainPopup\">";
			popupHtml += "<a href=\"#none\" class=\"close\"></a>";
			popupHtml += "<div class=\"cont\" id=\"popupContArea\">";
			popupHtml += "<div class=\"cont_box\">";
			popupHtml += "<div class=\"swiper-container main_pop_slide\">";
			popupHtml += "<ul class=\"swiper-wrapper\">";
			
			for(var i=0; i<resultData.tbPopupMgtList.length; i++){
				popupInnerHtml += "<li class=\"swiper-slide\">";
				popupInnerHtml += "<h1>"+ safeTagToHtmlTag(resultData.tbPopupMgtList[i].popupTitl); +"</h1>";
				popupInnerHtml += "<div class=\"content_area\">";
				if( resultData.tbPopupMgtList[i].popupLnkYn == 'Y'){
					popupInnerHtml += "<a href='"+ resultData.tbPopupMgtList[i].popupLnkUrl +"' target='_blank'>";
				}
				popupInnerHtml += safeTagToHtmlTag(resultData.tbPopupMgtList[i].popupCont);
				if( resultData.tbPopupMgtList[i].popupLnkYn == 'Y'){
					popupInnerHtml += "</a>";
				}
				popupInnerHtml += "</div>";
				popupInnerHtml += "</li>";
			}
			
			popupHtml += popupInnerHtml;
			popupHtml += "</ul>";
			popupHtml += "</div>";
			popupHtml += "<div class=\"swiper-pagination pop_slide\"></div>";
			popupHtml += "</div>";
			popupHtml += "</div>";
			popupHtml += "<div class=\"button_area\">";
			popupHtml += "<a href=\"#\" class=\"pop_close\" onclick=\"fnThreedayClose();\">3일간 보지않기</a>";
			popupHtml += "<a href=\"#\" class=\"pop_close\" onclick=\"fnTodayClose();\">오늘은 그만보기</a>";
			popupHtml += "<a href=\"#\" class=\"pop_close\">닫기</a>";
			popupHtml += "</div>";
			popupHtml += "</div>";
			
			$("#wrap").parent().append(popupHtml);
			
			if(fnGetCookie("mainPopup") != "mainPopup_cookie") {
				$('#mainPopup').show();
				
				$('.layout_Pop.main .pop_close').on('click',function(e){
					$(this).parent().parent().hide();
					// posY = $(window).scrollTop(posY);
				});
				
				$('.layout_Pop.main .close').on('click',function(e){
					$(this).parent().hide();
					// posY = $(window).scrollTop(posY);
				});
			}
		}
	}
	//
	// var mainSummaryHtml = resultData.indMgtInfo.dtlDesc;
	// $('#mainSummaryBrArea').append(safeTagToHtmlTag(mainSummaryHtml));
}

//Rendering
function mekeTemplate(templateName, data, targetClass){
	var template = $('#'+ templateName).html();
	var html = Mustache.render(template, data);
	$('#'+ targetClass).append(html);
}

function fnThreedayClose(){
	fnSetCookie('mainPopup', 'mainPopup_cookie', 3);
}
function fnTodayClose(){
	fnSetCookie('mainPopup', 'mainPopup_cookie', 1);
}

//*************************************************************
//쿠키 생성
//*************************************************************
function fnSetCookie(name, value, expiredays)
{
	var todayDate = new Date();
	todayDate.setDate(todayDate.getDate() + expiredays);
	document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}

//*************************************************************
//쿠키 불러오기
//*************************************************************
function fnGetCookie(Name){
  var search = Name + "="
  if (document.cookie.length > 0) {  //  쿠키가  설정되어  있다면
      offset = document.cookie.indexOf(search)
      if (offset != -1) {  //  쿠키가  존재하면
          offset += search.length
          //  set  index  of  beginning  of  value
          end = document.cookie.indexOf(";", offset)
          //  쿠키 값의  마지막  위치  인덱스  번호  설정
          if (end == -1)
              end = document.cookie.length
          return unescape(document.cookie.substring(offset, end))
      }
  }
  return "";
}