var param = {"distSeqId": distSeqId , "langCd": langCd, "menuCd": menuCd };
if( menuCd == "P" ){
	menuTxt = "partner";
}else{
	menuTxt = "solution";
}
var resultData;

$(function() {	
	
	// header name 변경
	$('header').addClass("solution");
	$('header h1').text("IT Distribution");
	
	if(langCd == "EN"){
		$('div h2').addClass("eng");
	}
	
	//전체 화면 구성
	renderView();
//	console.dir(resultData);
	$('#headerbg').attr('style', 'background:url('+ resultData.tbDist.pcUpsideImgUrl +') center 50% no-repeat;');
	
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
function getDistInfo(){
	$.ajax({
		url : "/dist/getDistInfo",
		type : 'POST',
		data: param,
		async: false,
		success : function(data){
			resultData= data;
			returnData = data;
		}, error : function(error){
			location.href = "/error";
			// alert("에러가 발생했습니다. 잠시후에 시도하여 주세요.",error);
		}
	});
}


//전체 화면 구성
function renderView(){
	
	//조회
	getDistInfo();

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
	mekeTemplate('dist-detail-template', resultData,  'container');
	
	//Content Html 영역
	var distContHtml = resultData.tbDist.solutionDesc;
	/*
	if( menuCd == "S"){
		distContHtml = resultData.tbDist.solutionDesc;
	}else{
		distContHtml = resultData.tbDist.solutionDesc;
	}
	*/
	$('#distContArea').append(safeTagToHtmlTag(distContHtml));
}





