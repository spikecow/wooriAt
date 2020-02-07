var param = {"langCd" : langCd , "fuelCd" :fuelCd, "page" : Number(page) ,"searchWord" : searchWord};

var resultData;

$(function() {	
	// header name 변경
	$('header').addClass("pr");
	$('header h1').text("PR");
	
	if(langCd=="EN"){
		$('div h2').addClass("eng");
	}
	
	//전체 화면 구성
	renderPrPdfList();
	
	$(document).ready( function() {

		$('#searchWord').keydown(function(key){
			if(key.keyCode == 13){
				searchWord = $('.input_box input').val();
				// location.href = "/pr/pdf?page="+ page + "&langCd="+ langCd + "&fuelCd="+fuelCd+"&searchWord="+searchWord;
				location.href = "/pr/pdf?page=1&langCd="+ langCd + "&fuelCd="+fuelCd+"&searchWord="+searchWord;
			}
		});

		// 검색창 display
		$(".search_top .btn").click(function () {
			$(this).toggleClass("i_close");
			$('.search_box').toggleClass("on");
			$('.search_dim').toggleClass("on");
			$('body,html').toggleClass("on");
		});
		
		//검색 
		$(".search_box2 .in_box .s-btn").click(function () {
			searchWord = $('.input_box input').val();
			// location.href = "/pr/pdf?page="+ page + "&langCd="+ langCd + "&fuelCd="+fuelCd+"&searchWord="+searchWord;
			location.href = "/pr/pdf?page=1&langCd="+ langCd + "&fuelCd="+fuelCd+"&searchWord="+searchWord;
		});
		
		//Paging
		// if(page == totalPage){
		// 	$('.paging a.next').css("display","none");
		// 	$('.paging a.last').css("display","none");
		// }
	
		$('.paging span.num a').click(function(){
			var text = Number(this.text);
			page = Number(text);
			location.href ="/pr/pdf?page="+ page +"&langCd="+ langCd +"&fuelCd="+ fuelCd + "&searchWord="+ searchWord ;
		});
		
		$('.paging a.first').click(function(){
			page = 1;
			location.href ="/pr/pdf?page="+ page +"&langCd="+ langCd +"&fuelCd="+ fuelCd + "&searchWord="+ searchWord ;
			
		});
		
		$('.paging a.last').click(function(){
			if(page == totalPage){
				alert("마지막페이지 입니다.");
				return false;
			}
			page = totalPage;
			location.href ="/pr/pdf?page="+ page +"&langCd="+ langCd +"&fuelCd="+ fuelCd + "&searchWord="+ searchWord ;
		});
		
		$('.paging a.prev').click(function(){
			page = Number(page-1);
			if(page < 0){
				page =1;
			}
			location.href ="/pr/pdf?page="+ page +"&langCd="+ langCd +"&fuelCd="+ fuelCd + "&searchWord="+ searchWord ;
		});
		
		$('.paging a.next').click(function(){
			if(page == totalPage){
				alert("마지막페이지 입니다.");
				return false;
			}
			page = Number(page+1);
			if(page > totalPage){
				page =totalPage;
			}

			// var text = Number(this.text);
			// page = Number(text) -1;
			location.href ="/pr/pdf?page="+ page +"&langCd="+ langCd +"&fuelCd="+ fuelCd + "&searchWord="+ searchWord ;
		});
		
		/* pdf - hover*/
		$(".press_pdf ul li").hover(function(){
			$(".pdf_download",this).stop().show();
		},  
		function(){  
			$(".pdf_download",this).hide();  
		});
		
	});
});


//Pr 리스트 정보
function getPrPdfInfoList(){
	$.ajax({
		url : "/pr/getPrPdfInfoList",
		type : 'POST',
		data: param,
		async: false,
		success : function(data){
			resultData= data;
			page = resultData.page;   
			totalPage =  resultData.totalPage;  

		}, error : function(error){
			location.href = "/error";
			// alert("에러가 발생했습니다. 잠시후에 시도하여 주세요.",error);
		}
	});
}

//Pr 상세 정보
function getPrPdfInfo(){
	
	var param = {"prSeqId" : 1 , "langCd" : langCd }

	$.ajax({
		url : "/pr/getPrPdfInfo",
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
function renderPrPdfList(){
	
	//조회
	getPrPdfInfoList();
	//template draw	
	mekeTemplate('pr-pdf-template' ,resultData ,  'container');
	
	//append paging html
	setPaging(resultData.pagingHtml);
	
	//검색어
	$('#searchWord').val(searchWord);
	
	$('#fuel_cd').change(function(){
		fuelCd = this.value;
	});
	
	$("select option[value='"+fuelCd+"']").attr("selected","selected");
	$('.sel.press label').text($('#fuel_cd option:selected').text());
}

//Paging
function setPaging(pagingHtml){
	$("#pagingArea").append(pagingHtml);
}
