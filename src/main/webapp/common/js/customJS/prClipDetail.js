var param = {"prClipSeqId" : prClipSeqId , "langCd" : langCd };

var resultData;

$(function() {	
	
	// header name 변경
	$('header').addClass("pr");
	$('header h1').text("PR");
	
	if(langCd=="EN"){
		$('div h2').addClass("eng");
	}
	
	
	//전체 화면 구성
	renderView();
	
	//S: 문의 하기
	/* 문의하기 */
	$('a.inquiry').on('click',function(){
		posY = $(window).scrollTop();
		$('.layout_Pop.inquiry, .all_shadow').show();
		$("html, body").addClass("not_scroll");
	});

	/* 문의하기 x 클릭 시 */
	$('.close').on('click',function(e){
		$('.layout_Pop.inquiry, .all_shadow').hide();
		$("html, body").removeClass("not_scroll");
		posY = $(window).scrollTop(posY);
	});

});



//Pr 상세 정보
function getPrClipMgtInfo(){

	$.ajax({
		url : "/pr/getPrClipMgntInfo",
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
function renderView(){
	
	//조회
	getPrClipMgtInfo();

	resultData.dateFmt2 = function(){
		return function(t,render){
			var yyyy = render(t).substring(0,4);
			var mm = render(t).substring(4,6);
			var dd = render(t).substring(6,8);
			return yyyy + " - " + mm + " - " + dd;
		}
	};

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


	//template draw	
	mekeTemplate('pr-detail-template' ,resultData ,  'container');
	
	//Content Html 영역
	var prClipContHtml = resultData.tbPrClipMgt.prClipCont;
	$('#prClipContArea').append(safeTagToHtmlTag(prClipContHtml));
}





