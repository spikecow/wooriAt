var param = {"indSeqId" : indSeqId , "caseSeqId" : caseSeqId , "langCd" : langCd } ;
var resultData;

$(function() {	
	
	// header name 변경
	$('header').addClass("petrochemical");
	$('header h1').text("service");
	
	//전체 화면 구성
	renderCaseMgnt();

	$('#headerbg').attr('style', 'background:url('+resultData.indMgt.pcUpsideImgUrl+') center 50% no-repeat;');
	$('header h1').text("Industries");

	if(resultData.caseMgtInfoList.length < 4){
		$(".swiper-button-next").hide();
		$(".swiper-button-prev").hide();
	}else{
		$(".swiper-button-next").show();
		$(".swiper-button-prev").show();
	}

	$(document).ready( function() {
	
	});
	
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
});


//구축 사례 상세 정보
function getCaseMgntInfo(){

	$.ajax({
		url : "/case/getCaseMgntInfo",
		type : 'POST',
		data: param,
		async: false,
		success : function(data){
			resultData= data;
			
		}, error : function(error){
			location.href = "/error";
			// alert("에러가 발생했습니다. 잠시후에 시도하여 주세요.",error);
		}
	});
}



//전체 화면 구성
function renderCaseMgnt(){
	
	getCaseMgntInfo();

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

	mekeTemplate('top-template' ,resultData ,  'container');

	if(resultData.caseMgtInfoList < 1){
		$('.reference_wrap').attr('style','display:none;');
	}

	var issueContHtml = resultData.caseMgt.issueCont;
	$('#issueArea').append(liTag(issueContHtml));
	
	var reqContHtml = resultData.caseMgt.reqCont;
	$('#reqContArea').append(liTag(reqContHtml));
	
	var benefitHtml = resultData.caseMgt.bfCont;
	$('#benefitArea').append(liTag(benefitHtml));

	$('#solCont').append(brTag(resultData.caseMgt.solCont));

	$('#summary').append(brTag(resultData.caseMgt.summary));

	console.dir(resultData);
	if(resultData.prMgtInfoList < 1 || resultData.caseMgt.newsYn == "N" ){
		$('.news_wrap').attr('style','display:none;');
	}

}

function brTag(str) {

	str = str.replace(/(?:\r\n|\r|\n)/g, '<br>');
	return str;
}

function liTag(str) {

	str = "<li>" + str.replace(/(?:\r\n|\r|\n)/g, '</li><li>');
	str = str + "</li>";
	return str;
}

