var param = {"termsSeqId" : termsSeqId , "langCd" : langCd } ;

$(function(){

	$(document).ready( function() {
		$('header').addClass("about");
		$('header h1').text("About GS ITM");// 2020.01.17 About GS ITM 으로 통일 요청
	});

	//전체 화면 구성
	renderPolicy();

});


//개인정보 처리방침 데이터 조회
function getPolicyInfo(){
	var policyData;

	$.ajax({
		url : "/terms/getPolicyInfo",
		type : 'POST',
		data: param,
		async: false,
		success : function(data){
			policyData = data;
		}, error : function(error){
			location.href = "/error";
			// alert("에러가 발생했습니다. 잠시후에 시도하여 주세요.",error);
		}
	});

	return policyData;
}


//전체 화면 구성
function renderPolicy(){

	var resultData = getPolicyInfo();

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

	resultData.dateFmt3 = function(){
		return function(t,render){
			var yyyy = render(t).substring(0,4);
			var mm = render(t).substring(4,6);
			var dd = render(t).substring(6,8);
			return yyyy + "년 " + mm + "월" + dd+"일";
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

	var policyHtml = resultData.tbTerms.termsCont;
	$('#appendPolicyInfo').append(safeTagToHtmlTag(policyHtml));

	mekeTemplate('policylist-template' ,resultData ,  'container');
}

