var param = {"indSeqId" : indSeqId , "langCd" : langCd , "size": 10, "page": 0}
var resultData;

$(function() {	

	//전체 화면 구성
	var returnData = renderIndMgnt();

	$('#headerbg').attr('style', 'background:url('+returnData.indMgtInfo.pcUpsideImgUrl+') center 50% no-repeat;');
	$('header h1').text("Industries");

	if(returnData.caseCnt <7){
		$('.more').hide();
	}


	//더보기 클릭 시 구축 사례 Append
	$('.more').click(function(){
		if(!lockMore){
			addCaseMgtInfo();			
		}
	});
	
	//데이터 조회
	function getIndMgntInfo(){
		var returnData;
		$.ajax({
			url : "/industry/getIndMgntInfo",
			type : 'POST',
			data: param,
			async: false,
			success : function(data){

				if(data.caseMgtInfoList.length == 0){
					lockMore = true;
					$('.more').children().removeAttr("href");

				}else{
					$('.more').children().attr("href");
				}

				indMgtInfo =  data.indMgtInfo;
				indSysInfo = data.indMgtInfo.sys;
				returnData = data;
				caseMgtInfoList = data.caseMgtInfoList;

                if(((data.nowPage+1)*6)+1 > data.caseCnt){
                    $('.more').hide();
                }
			
			}, error : function(error){
				location.href = "/error";
				// alert("에러가 발생했습니다. 잠시후에 시도하여 주세요.",error);
			}
		});
		return returnData;
	}
	
	//전체 화면 구성
	function renderIndMgnt(){
		var indData;
		indData = getIndMgntInfo();
		
		var template = $('#top-template').html();
		var data = {
				"indSeqId" : indMgtInfo.seqId,
				"indNm1" : indMgtInfo.titleNm,
				"summary" : indMgtInfo.introDesc,
				"dtlDesc" : indMgtInfo.dtlDesc,
				"indIconImgUrl1" : indMgtInfo.iconImgUrl1,
				"indIconImgUrl2" : indMgtInfo.iconImgUrl2,
				"indProfileImgUrl" : indMgtInfo.dtlImgUrl,
				"indSysList" : indSysInfo,
				"caseMgtInfoList" :  caseMgtInfoList
		};

		data.safeTagToHtmlTag = function(){
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

		var html = Mustache.render(template,data);
		$('#container').append(html);
		
		var appendCaseMgtInfoList = $('#appendCaseMgtInfoList').html();
		var appendCaseMgtHtml = Mustache.render(appendCaseMgtInfoList,data);

		$('#appendCaseMgtUl').append(appendCaseMgtHtml);

		var descHtml = indMgtInfo.dtlDesc;

		$('#descBrArea').append(safeTagToHtmlTag(descHtml));

		return indData;
	}
	
	//구축사례 더보기 
	function addCaseMgtInfo(){
		page= Number(page+1);
		param.page = page;
		param.size = 3;
		
		getIndMgntInfo();
		
		var appendCaseMgtInfoList = $('#appendCaseMgtInfoList').html();
		var data = {
				"indSeqId" : indMgtInfo.seqId,
				"indNm1" : indMgtInfo.titleNm,
				"summary" : indMgtInfo.introDesc,
				"dtlDesc" : indMgtInfo.dtlDesc,
				"indIconImgUrl1" : indMgtInfo.iconImgUrl1,
				"indIconImgUrl2" : indMgtInfo.iconImgUrl2,
				"indProfileImgUrl" : indMgtInfo.dtlImgUrl,
				"indSysList" : indSysInfo,
				"caseMgtInfoList" :  caseMgtInfoList
		};

		data.safeTagToHtmlTag = function(){
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

		var appendCaseMgtHtml = Mustache.render(appendCaseMgtInfoList,data);
		$('#appendCaseMgtUl').append(appendCaseMgtHtml);
		
		
		$('.reference_wrap  ul li').on('mouseenter', function () {
			$(".img .dim",this).hide();
			$(".img .i_h",this).addClass('on');
			//$(".img .i_h img",this).stop().animate({height : '150px'}, 300);
			$(this).css("box-shadow", "3px 5px 30px #d1d1d1");
		});

		$('.reference_wrap  ul li').on('mouseleave', function () {
			$(".img .dim",this).show();
			$(".img .i_h",this).removeClass('on');
			//$(".img .i_h img",this).stop().animate({height : '95px'}, 300);
			$(this).css("box-shadow", "none");
		});

	}
	
});

//구축 사례 상세 정보
function getCaseMgntInfo(caseSeqId,indSeqId){
	$.ajax({
		url : "/case/getCaseMgntInfo",
		type : 'POST',
		data: {"indSeqId":indSeqId , "langCd": langCd, "caseSeqId" : caseSeqId },
		async: false,
		success : function(data){

			/*$("#container").empty();
			
			var caseMgntInfo = $('#detail-template').html();
			var data = {
					"indSeqId" : indMgtInfo.indSeqId,
					"indNm" : indMgtInfo.indNm,
					"summary" : indMgtInfo.summary,
					"dtlDesc" : indMgtInfo.dtlDesc,
					"iconImgUrl1" : indMgtInfo.iconImgUrl1,
					"pcKeyImgUrl" :indMgtInfo.bannerPcImgUrl,
					"indSysList" : indMgtInfo.indSysList,
					"caseMgtInfoList" :  caseMgtInfoList
			};
			var appendDetailCaseMgtInfoHtml = Mustache.render(caseMgntInfo,data);
			$('#container').append(appendDetailCaseMgtInfoHtml);*/
			
		}, error : function(error){
			location.href = "/error";
			// alert("에러가 발생했습니다. 잠시후에 시도하여 주세요.",error);
		}
	});
	
	
}
