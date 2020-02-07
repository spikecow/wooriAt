var langCd="KR";


$(function() {

	$(document).ready( function() {
		var container1 = $('.scroll_box');

		$('.scroll_box').mCustomScrollbar({
			theme:"dark-2"
		});

/*
		$( '.language' ).click( function() {
			$( '.lans' ).toggle(  );
		});
*/		

		if(langCd == "KR"){
			$('#krPage').hide();
			$('#enPage').show();
		}else{
			$('#krPage').show();
			$('#enPage').hide();
		}
	});


	$('#footer').empty();


	//전체 화면 구성
	renderFooterMenu();
		
	//footer menu 데이터 조회
	function renderFooterMenu(){
		$.ajax({
			url : "/getFooterMenu",
			type : 'POST',
			data: {"langCd": langCd},
			async: false,
			success : function(data){

				var template = $('#footer-template').html();

				var data = {
						"serviceMenuResult" : data.serviceMenuResult,
						"insdustryMenuResult" : data.insdustryMenuResult
				};
				var html = Mustache.render(template,data);
				$('#footer').append(html);
				
				getIndMgtList();
				
			}, error : function(error){
				// location.href = "/error";
				// alert("에러가 발생했습니다. 잠시후에 시도하여 주세요.",error);
			}
		});
	}
	

	//산업군 조회
	function getIndMgtList(){
		var svchtml = ""+
			"<option value='0'>선택</option>"+
			"<option value='1'>IT아웃소싱/컨설팅</option>"+
			"<option value='2'>IT아웃소싱/SI</option>"+
			"<option value='3'>IT아웃소싱/SM</option>"+
			"<option value='4'>IT아웃소싱/IT컨버전스</option>"+
			"<option value='5'>SAP서비스/마이그레이션</option>"+
			"<option value='6'>SAP서비스/ERP</option>"+
			"<option value='7'>SAP서비스/개발 및 관리</option>"+
			"<option value='8'>클라우드</option>";


		$('#svc_select').empty();
		$('#svc_select').append(svchtml);
		// $.ajax({
		// 	url : "/industry/getIndMgtList",
		// 	type : 'POST',
		// 	data: {"langCd": langCd},
		// 	async: false,
		// 	success : function(data){
		// 		var template = $('#industry-select-option-template').html();
		// 		var html = Mustache.render(template,data);
		// 		$('#ind_select').empty();
		// 		$('#ind_select').append(html);
		// 	}, error : function(error){
		// 		alert("에러가 발생했습니다. 잠시후에 시도하여 주세요.",error);
		// 	}
		// });
	}
	
	//산업군 - 서비스 조회
	function getServiceMgntList(indSeqId){
		$('#svc_select').val(0).prop("selected", true);
		if(indSeqId == 0){
			var resethtml = ""+
			"<option value='0'>선택</option>";
			$('#svc_select').fakeselect();
			$('#svc_select').empty();
			$('#svc_select').append(resethtml);

		}else if(indSeqId == 1){
			var svchtml = ""+
			"<option value='0'>선택</option>"+
			"<option value='1'>IT아웃소싱/컨설팅</option>"+
			"<option value='2'>IT아웃소싱/SI</option>"+
			"<option value='3'>IT아웃소싱/SM</option>"+
			"<option value='4'>IT아웃소싱/IT컨버전스</option>"+
			"<option value='5'>SAP서비스/마이그레이션</option>"+
			"<option value='6'>SAP서비스/ERP</option>"+
			"<option value='7'>SAP서비스/개발 및 관리</option>"+
			"<option value='8'>클라우드</option>";

			$('#svc_select').fakeselect();
			$('#svc_select').empty();
			$('#svc_select').append(svchtml);

			// $('.select_asdf').fakecheck();
		}else{
			var indhtml = ""+
				"<option value='0'>선택</option>"+
				"<option value='1'>정유ㆍ화학</option>"+
				"<option value='2'>가스ㆍ발전</option>"+
				"<option value='3'>유통ㆍ커머스</option>"+
				"<option value='4'>교육</option>"+
				"<option value='5'>금융</option>";
			$('#svc_select').fakeselect();
			$('#svc_select').empty();
			$('#svc_select').append(indhtml);
			// $('.select_asdf').fakecheck();
		}
		// $.ajax({
		// 	url : "/service/getServiceMgntList",
		// 	type : 'POST',
		// 	data: {"langCd": langCd, "indSeqId" : indSeqId},
		// 	async: false,
		// 	success : function(data){
		// 		var template = $('#service-select-option-template').html();
		// 		var html = Mustache.render(template,data);
		// 		$('#svc_select').empty();
		// 		$('#svc_select').append(html);
		// 	}, error : function(error){
		// 		alert("에러가 발생했습니다. 잠시후에 시도하여 주세요.",error);
		// 	}
		// });
	}
	
	//산업군 select box Change
	$('#ind_select').change(function() {
		//서비스 select 구성

		getServiceMgntList($('#ind_select option:selected').val());

	});


	//S: 문의 하기
	/* 문의하기 */
	$('a.inquiry').on('click',function(){
		posY = $(window).scrollTop();
		$('.layout_Pop.inquiry, .all_shadow').show();
		$("html, body").addClass("not_scroll");
	});

	/* 문의하기 x 클릭 시 */
	$('.layout_Pop.inquiry .close').on('click',function(e){
		$('.layout_Pop.inquiry, .all_shadow').hide();
		$("html, body").removeClass("not_scroll");
		posY = $(window).scrollTop(posY);
	});

	/* 개인정보 */
	$('.btn_gray a').on('click',function(){
		$('.inquiry .inbox').show();
	});

	/* 개인정보 */
	$('.inquiry .inbox .btn').on('click',function(){
		$('.inquiry .inbox').hide();
	});

	/* 전체 동의 */
	$('.all_inquiry label').on('click',function(e){
		e.preventDefault();
		if($('.all_inquiry input').hasClass('checked')){
			$('.inquiry_chk').removeClass('checked');
			$(".inquiry_chk").prop('checked', false);
			$("div.btn_gray > a").removeClass("read");
		}else{
			$('.inquiry_chk').addClass('checked');
			$('.inquiry_chk').prop('checked', true);
			$("div.btn_gray > a").addClass("read");
		}
	});

	/* 취소 */
	$('.close_chk input').on('click',function(e){
		$('.all_inquiry input').removeClass('checked');
		$(".all_inquiry input").prop('checked', false);
	});
	

	/* inquiry1 화살표 */
	$('.inquiry1').on('click',function(e){
		e.preventDefault();
		if($('.inquiry1 span.sign').hasClass('on')){
			$('.inquiry1 span.sign').removeClass('on');
		}else{
			$('.inquiry1 span.sign').addClass('on');
		}
	});
	/* inquiry2 화살표 */
	$('.inquiry2').on('click',function(e){
		e.preventDefault();
		if($('.inquiry2 span.sign').hasClass('on')){
			$('.inquiry2 span.sign').removeClass('on');
		}else{
			$('.inquiry2 span.sign').addClass('on');
		}
	});
	//btn
	
	$('#inquiry1').on('click',function(e){
		console.log($(this).hasClass("checked"));
		if( $(this).hasClass("checked") ){
			$('div.btn_gray > a').addClass("read");
		}else{
			$('div.btn_gray > a').removeClass("read");
		}
	});
	
	$('#inquirySubmit').on('click',function(e){
		
		//Validation Check
		if(!$("input:checkbox[id='inquiry1']").is(":checked")){
			// validationAlert('이용약관에 </br>동의 하지 않았습니다.',null);
			alert("'개인정보 수집 및 이용안내' 이용약관에 동의하지 않았습니다.");
			return false;
		}
		
		// if(!$("input:checkbox[id='inquiry4']").is(":checked")){
		// 	validationAlert("개인정보 수집 및 이용에</br>동의 하지 않았습니다.",null);
		// 	return false;
		// }
		//
		// if(!$("input:checkbox[id='inquiry6']").is(":checked")){
		// 	validationAlert("개인정보 해외이전에 동의합니다. </br>동의 하지 않았습니다.",null);
		// 	return false;
		// }
		
		if($('#inquiryNm').val() == ""){
			alert("이름이 입력 되지 않았습니다." );
			// validationAlert("이름이 입력 되지 않았습니다." , "inquiryNm");
			return false;
		}
		if($('#inquiryPhone').val() == ""){
			alert("전화번호가 입력 되지 않았습니다.");
			// validationAlert("전화번호가 입력 되지 않았습니다." , "phone");
			return false;
		}
		if($('#inquiryEmail').val() == ""){
			alert("이메일이 입력 되지 않았습니다.");
			// validationAlert("이메일이 입력 되지 않았습니다." , "email");
			return false;
		}

		if (!validateEmail($('#inquiryEmail').val())) {
			alert("올바른 이메일 주소를 입력하세요")
			return false;
		}

		if($('#inquiryCont').val() == ""){
			alert("문의 내용이 입력 되지 않았습니다.");
			// validationAlert("문의 내용이 입력 되지 않았습니다." , "inquiryCont");
			return false;
		}

		if(Number(byteCheck($('#inquiryCont').val())) > 500){
			alert("문의 내용이 500자를 초과하였습니다.");
			// validationAlert("문의 내용이 입력 되지 않았습니다." , "inquiryCont");
			return false;
		}

		if($('#svc_select').val() == "0"){
			alert("문의 분야가 선택 되지 않았습니다.");
			// validationAlert("문의 분야가 선택 되지 않았습니다." , "svc_select");
			return false;
		}
		var reqData = new FormData();
		//개인정보 처리 방침 동의
		// reqData.append("agrYn1", $("input:checkbox[id='inquiry2']").is(":checked") ? 'Y' : 'N');
		// reqData.append("agrYn2", $("input:checkbox[id='inquiry3']").is(":checked") ? 'Y' : 'N');
		// reqData.append("agrYn3", $("input:checkbox[id='inquiry4']").is(":checked") ? 'Y' : 'N');
		// reqData.append("agrYn4", $("input:checkbox[id='inquiry5']").is(":checked") ? 'Y' : 'N');
		// reqData.append("agrYn5", $("input:checkbox[id='inquiry6']").is(":checked") ? 'Y' : 'N');
		//산업군 & 서비스
		reqData.append("indSeqId", $('#ind_select').val()); 
		reqData.append("svcSeqId", $('#svc_select').val()); 
		//문의내용
		reqData.append("inquiryNm", $('#inquiryNm').val()); 
		reqData.append("phone", $('#inquiryPhone').val());
		reqData.append("email", $('#inquiryEmail').val());
		reqData.append("inquiryCont", $('#inquiryCont').val()); 
		
	
		$.ajax({
			url : '/inquiry/submit',
			async: true,
			cache: false,
			type : 'POST',
			data: reqData,
			enctype: 'multipart/form-data',
			processData: false,
			contentType: false,
			success : function(data){
			}, error : function(error){
			}
		}).done(function (result) {
			if (result.STATUS == 'FAIL') {
				alert("문의하기에 실패 하였습니다. 잠시후 다시 이용해 주세요.");
				// validationAlert("문의하기에 실패 하였습니다. </br>잠시후 다시 이용해 주세요." , "inquiryNm");
				return false;
			}else{

				$('.layout_Pop.inquiry, .all_shadow').hide();

				successAlert();

			}
		}).fail(function(xhr, textStatus, errorThrown) {
			if(xhr.status =='403'){
				alert("해당 기능에 대한 권한이 없습니다.");
			}
		});	
	});
	
	
	//문의하기 select
	$('.select_asdf').fakeselect();
	//E: 문의 하기
	
	
	/* 취소 */
	$('.close_chk input').on('click',function(e){
		$('.all_inquiry input').removeClass('checked');
		$(".all_inquiry input").prop('checked', false);
	});
	
	
	//문의하기 Validatino Noti
	// function validationAlert(content, elementId){
	// 	var html ="<p class='tit'>" + content +"</p><div class='btn'><a href='#none'>확인</a></div>";
	// 	$('#alertPop').empty(html);
	// 	$('#alertPop').append(html);
	//
	// 	$('.layout_Pop.alert, .all_shadow').show();
	// 	// 문의하기 x 또튼 확인 클릭시 클릭 시
	// 	$('.layout_Pop.alert .btn').on('click',function(e){
	// 		$('.layout_Pop.alert').hide();
	// 	});
	//
	// }
	
	//문의하기 성공
	function successAlert(){
		var html ="<p class='tit>문의가 접수되었습니다.</p>";
			html += "<p class='txt'>";
			html +=		"<span class='block'>문의내용이 성공적으로 제출 완료되었습니다.</span>";
			html +=		"<span class='block'>고객님께서 입력하신 연락처로 최종결과를 알려드리도록 하겠습니다. </span>";
			html +=		"<span class='block'>최종결과까지의 기간은 최소한 기일(7-10일)이 소요됩니다. </span>";
			html +=	"</p>";
			html +=	"<div class='btn'><a href='#none'>확인</a></div>";

		$('#alertPop').empty(html); // 제거

		$('#alertPop').append(html); //  redraw

		$('.layout_Pop.alert, .all_shadow').show();

		/* 제보하기 x 또튼 확인 클릭시 클릭 시 */
		$('.close, .layout_Pop.alert .btn').on('click',function(e){
			history.go(0);
		});

	}
	
	/* S: 오시는길 */ 
	/* map */
	$('a.map_nox').on('click',function(){

		// initMap('37.578642','126.986459','서울시 종로구 계동길 31 보헌빌딩 1F & 2F','map1'); // 위도 약도 주소 확인 필요
		// initMap('37.576843','126.988931','용산역','map2');
		
		$('.layout_Pop.map_nox, .all_shadow').show();
		$("html, body").addClass("not_scroll");
	});
	
	//닫기
	$('.close, .layout_Pop.map_nox .btn ').on('click',function(e){
		$('.layout_Pop.map_nox, .all_shadow').hide();
		$("html, body").removeClass("not_scroll");
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


	function validateEmail(email) {
		var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
		return re.test(email);
	}

	function byteCheck(el){
		var codeByte = 0;
		for (var idx = 0; idx < el.length; idx++) {
			var oneChar = escape(el.charAt(idx));
			if ( oneChar.length == 1 ) {
				codeByte ++;
			} else if (oneChar.indexOf("%u") != -1) {
				codeByte += 2;
			} else if (oneChar.indexOf("%") != -1) {
				codeByte ++;
			}
		}
		return codeByte;
	}
});


