var param = {"langCd" : langCd , "searchWord" : searchWord,"page" : Number(page)};

$(function() {

	//전체 화면 구성
	var returnData = renderReference();

	// header name 변경
	$('header').addClass("rerence");
	$('header h1').text("Reference");

	$(document).ready( function() {

	    $('#searchText').keydown(function(key){
	        if(key.keyCode == 13){
                searchWord = $('.input_box input').val();
                location.href = "/reference/referenceInfo?page=1&langCd="+ langCd + "&searchWord="+searchWord;
            }
        });

		/* search */
		$(".search_top .btn").click(function () {
			$(this).toggleClass("i_close");
			$('.search_box').toggleClass("on");
			$('.search_dim').toggleClass("on");
			$('body,html').toggleClass("on");
		});

		//검색
		$(".search_box2 .in_box .s-btn").click(function () {
			searchWord = $('.input_box input').val();
			location.href = "/reference/referenceInfo?page=1&langCd="+ langCd + "&searchWord="+searchWord;
		});
	});



	//더보기 클릭 시 구축 사례 Append
	$('.more').click(function(){
		var param = {"langCd" : langCd , "searchWord" : searchWord,"page" : Number(page)};
		addReferenceInfo();
	});
	
	//데이터 조회
	function getReferenceInfo(){

		var returnData;
		$.ajax({
			url : "/reference/getReferenceInfo",
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

				returnData = data;


                if(((data.page)*6)+1 > data.caseCnt){
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
	function renderReference(){
		var referenceData;
		referenceData = getReferenceInfo();
		

		var data = {
				"caseMgtInfoList" :  referenceData.caseMgtInfoList
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

		var appendReferenceInfoList = $('#appendReferenceInfoList').html();
		var appendReferenceHtml = Mustache.render(appendReferenceInfoList,data);
		$('#appendReferenceUl').append(appendReferenceHtml);
		if( data.caseMgtInfoList.length < 1 ){
			$('#appendReferenceUl').parent().append("<div class=\"search_none\">검색결과가 없습니다.</div>");
		}
		//검색어
		$('#searchText').val(referenceData.searchWord);

		return referenceData;
	}
	
	//구축사례 더보기 
	function addReferenceInfo(){
		// var param = {"langCd" : langCd , "searchWord" : searchWord,"page" : Number(page)};
		page= Number(Number(page)+1);
		param.page = page;
		// param.size = 3;

		referenceData = getReferenceInfo();
		
		var appendReferenceInfoList = $('#appendReferenceInfoList').html();
		var data = {
			"caseMgtInfoList" :  referenceData.caseMgtInfoList
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

		var appendReferenceHtml = Mustache.render(appendReferenceInfoList,data);
		$('#appendReferenceUl').append(appendReferenceHtml);

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


		/*$(".reference_wrap ul li").hover(function(){
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
		});*/

	}
});