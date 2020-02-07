var param = {"svcSeqId" : svcSeqId , "langCd" : langCd , "nowTabIndex":nowTabIndex,"size": 10, "page": 0}
//var param = {"svcSeqId" : 10 , "langCd" : langCd , "size": 10, "page": 0} 
var resultData;
// var nowTabIndex = 1;
$(function() {	
	

	
	if(langCd=="EN"){
		$('div h2').addClass("eng");
	}
	$('div h2').text(".text");

	//전체 화면 구성
	var returnData = renderServiceMgnt();

	$('#firstTab1').addClass('current');
	$('#firstTab1').trigger("click");

	$('#headerbg').attr('style', 'background:url('+returnData.tbSvcMgt.pcUpsideImgUrl+') center 50% no-repeat;');
	$('header h1').text("Service");


	if(resultData.tbCaseMgtList.length < 4){
		$(".swiper-button-next").hide();
		$(".swiper-button-prev").hide();
	}else{
        $(".swiper-button-next").show();
        $(".swiper-button-prev").show();
    }
	//swiper-button-next
	//swiper-button-prev

	//데이터 조회
	function getServiceMgntInfo(){

		var returnData;
		
		$.ajax({
			url : "/service/getServiceMgntInfo",
			type : 'POST',
			data: param,
			async: false,
			success : function(data){
				resultData = data;
				returnData = data;
				
			}, error : function(error){

				// location.href = "/error/"+error.status;
				location.href = "/error";
			}
		});
		return returnData;
	}
	
	
	//전체 화면 구성
	function renderServiceMgnt(){
		var svcData;
		//데이터 조회
		svcData = getServiceMgntInfo();

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

		if(!isEmpty(resultData)){

			mekeTemplate('top-template' ,resultData.tbSvcMgt ,  'container');
			mekeTemplate('body-template' ,resultData.tbSvcMgt ,  'container');

			$('#overViewArea > ul > li:nth-child(1) > p').html(safeTagToHtmlTag(resultData.tbSvcMgt.benefit1PcDesc.replace(/(\n|\r\n)/g, '<br>')));
			$('#overViewArea > ul > li:nth-child(2) > p').html(safeTagToHtmlTag(resultData.tbSvcMgt.benefit2PcDesc.replace(/(\n|\r\n)/g, '<br>')));
			$('#overViewArea > ul > li:nth-child(3) > p').html(safeTagToHtmlTag(resultData.tbSvcMgt.benefit3PcDesc.replace(/(\n|\r\n)/g, '<br>')));
			
			$('#introDesc').append(safeTagToHtmlTag(resultData.tbSvcMgt.introDesc.replace(/(\n|\r\n)/g, '<br>')));
			$('#dtlDesc').append(safeTagToHtmlTag(resultData.tbSvcMgt.dtlDesc.replace(/(\n|\r\n)/g, '<br>')));

			$('#processPcDesc').append(safeTagToHtmlTag(resultData.tbSvcMgt.processPcDesc.replace(/(\n|\r\n)/g, '<br>')));

			// 1. tab 
			if(resultData.tbSvcMgt.tabYn == 'Y'){
				mekeTemplate('tab-wrap-template' ,resultData.tbSvcMgt ,'container');
				makeTabArea();
			}
			// 2. 구축사례 
			if(resultData.tbSvcMgt.itoYn == 'Y'){
				mekeTemplate('reference-wrap-template' ,resultData ,  'container');
			}
			// 3. 산업군
			mekeTemplate('industries-wrap-template' ,resultData ,  'container');
			// 4. 뉴스
			if(resultData.tbSvcMgt.newsYn == 'Y'){
				mekeTemplate('news-wrap-template' ,resultData ,  'container');
			}
			// 5. 담당자 / 문서			
			mekeTemplate('contact-document-wrap-template' ,resultData ,  'container');
		}

		if(resultData.tbCaseMgtList < 1){
			$('.reference_wrap').attr('style','display:none;');
		}

		if(resultData.tbPrMgtList < 1){
			$('.news_wrap').attr('style','display:none;');
		}

		return svcData;
		
	}
	
	//Tab 영역 구성
	function makeTabArea (){
		//Tab On
		// $('.tab li').first().addClass('on');
		var tabMenuHtml="";
		var tabContentHtml = "";
		if(resultData.tbSvcMgt.tabLanght >= 1){
			tabMenuHtml += '<li data-tab="tab1" id="firstTab1" class="current"><p><a href="">'+resultData.tbSvcMgt.tab1Nm+'</a></p></li>';
			tabContentHtml += '<li id="tab1" class="tabcontent current"><p class="txt blue">'+resultData.tbSvcMgt.tab1Title+'</p>';
			tabContentHtml += '<div class="tabContArea">'+safeTagToHtmlTag(resultData.tbSvcMgt.tab1PcDesc)+'</div>';
			if(resultData.tbSvcMgt.tabLanght >= 2){
				tabMenuHtml += '<li data-tab="tab2" id="firstTab2"><p><a href="">'+resultData.tbSvcMgt.tab2Nm+'</a></p></li>';
				tabContentHtml += '<li id="tab2" class="tabcontent"><p class="txt blue">'+resultData.tbSvcMgt.tab2Title+'</p>';
				tabContentHtml += '<div class="tabContArea">'+safeTagToHtmlTag(resultData.tbSvcMgt.tab2PcDesc)+'</div>';
				if(resultData.tbSvcMgt.tabLanght >= 3) {
					tabMenuHtml += '<li data-tab="tab3" id="firstTab3"><p><a href="">' + resultData.tbSvcMgt.tab3Nm + '</a></p></li>';
					tabContentHtml += '<li id="tab3" class="tabcontent"><p class="txt blue">'+resultData.tbSvcMgt.tab3Title+'</p>';
					tabContentHtml += '<div class="tabContArea">'+safeTagToHtmlTag(resultData.tbSvcMgt.tab3PcDesc)+'</div>';
					if(resultData.tbSvcMgt.tabLanght == 4){
						tabMenuHtml += '<li data-tab="tab4" id="firstTab4"><p><a href="">'+resultData.tbSvcMgt.tab4Nm+'</a></p></li>';
						tabContentHtml += '<li id="tab4" class="tabcontent"><p class="txt blue">'+resultData.tbSvcMgt.tab4Title+'</p>';
						tabContentHtml += '<div class="tabContArea">'+safeTagToHtmlTag(resultData.tbSvcMgt.tab4PcDesc)+'</div>';
					}
				}
			}
		}

		$('#tabMenu').append(safeTagToHtmlTag(tabMenuHtml));
		$('#tabContent').append(safeTagToHtmlTag(tabContentHtml));
	}


	//Tab Controll
	$(document).ready( function() {

		// var tab;
		// var tab_before;
		// var tab_after;
		// // var tab = $('.tab_ly').offset();
		// $("img").on('load',function(){
		// 	loadComplete();
		// 	tab = $('.tab_ly').offset();
		// 	tab_before = $('.tab_before').offset();
		// 	tab_after = $('.tab_after').offset();
		// });


		// $('#container').find('img').load(
		// 	function(){
		// 		loadComplete();
		// 	}
		// );
		/* header - gnb */
		// var gnb = $('.gnb_wrap').offset();
		// $(window).scroll(function() {
		// 	if($(document).scrollTop() > gnb.top ) {
		// 		$('.gnb_wrap').addClass('fixed');
		// 	}
		// 	else {
		// 		$('.gnb_wrap').removeClass('fixed');
		// 	}
		// });
		//
		// var tab = $('.tab_ly').offset();
		// var tab_before = $('.tab_before').offset(); //탭 클릭 시 해더 돌려놓는 용도
		// var tab_after = $('.tab_after').offset(); //탭 해더 돌려놓는 용도
		//
		// $(window).scroll(function() {
		//
		// 	if($(this).scrollTop() >= tab_before.top) {
		// 		$('.gnb_wrap').removeClass('fixed');
		// 	}
		//
		// 	if($(this).scrollTop() > tab.top) {
		// 		$('.tab_ly').addClass('tab_fixed');
		// 		$('.tab_ly').show();
		// 		$('.gnb_wrap').removeClass('fixed');
		// 	}
		// 	else {
		// 		$('.tab_ly').removeClass('tab_fixed');
		// 	}
		//
		// 	/* 탭 예외 */
		// 	// if($(document).scrollTop() > tab_after.top) {
		// 	// 	$('.tab_ly').hide();
		// 	// 	$('.gnb_wrap').addClass('fixed');
		// 	// }
		// });
		//
		//
		// //11-3 스크립트 변경
		// $(function() {
		// 	$('ul.tab li').click(function() {
		// 		var activeTab = $(this).attr('data-tab');
		// 		$('ul.tab li').removeClass('current');
		// 		$('.tabcontent').removeClass('current');
		// 		$(this).addClass('current');
		// 		$('#' + activeTab).addClass('current');
		//
		//
		// 		// 탭클릭시 예외처리
		// 		tab = $('.tab_ly').offset();
		// 		tab_before = $('.tab_before').offset();
		// 		tab_after = $('.tab_after').offset();
		//
		// 		$('.gnb_wrap').addClass('fixed');
		//
		// 		var gnb = $('.gnb_wrap').offset();
		//
		// 		if($(document).scrollTop() > gnb.top ) {
		// 			$('.gnb_wrap').addClass('fixed');
		// 		}
		// 		else {
		// 			$('.gnb_wrap').removeClass('fixed');
		// 		}
		// 	})
		// });
		//
		//
		//
		// $('ul.tab li a').on('click', function(event){
		// 	event.preventDefault();
		// 	$('.gnb_wrap').removeClass('fixed');
		// 	//$('html,body').animate({scrollTop:$(this.hash).offset().top}, 300);
		// });
	});

});



//Rendering
function mekeTemplate(templateName, data , targetClass){
	var template = $('#'+ templateName).html();
	var html = Mustache.render(template,data);
	$('#'+ targetClass).append(html);
}



