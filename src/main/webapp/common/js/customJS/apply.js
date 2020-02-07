var param = {"langCd" : langCd }

$(function(){

	$(document).on('click', '.layout_Pop.apply .btn', function(){
		$('.layout_Pop.apply, .all_shadow').hide();
		$("html, body").removeClass("not_scroll");
		posY = $(window).scrollTop(posY);
		event.preventDefault();
	});
	
	$(document).on('click', '.layout_Pop.apply .close', function(){
		$('.layout_Pop.apply, .all_shadow').hide();
		$("html, body").removeClass("not_scroll");
		posY = $(window).scrollTop(posY);
		event.preventDefault();
	});
	
	$(document).ready( function() {
		$('header').addClass("about");
		$('header h1').text("About GS ITM");


	});


	//파일용량 체크
	$("input[type=file]").bind( 'change', function (e){
		if (!$(this).val())
			return;
		var f = this.files[0];
		var size = f.size || f.fileSize;
		var limit = 2000000;
		if (size > limit) {
			validationAlert("파일용량은 2mb 를 넘을수 없습니다.",null);
			$(this).val('');
			return;
		}

		var fileext = f.name.slice(f.name.indexOf(".")+1).toLowerCase();

		if(fileext == "exe" || fileext == "sh" || fileext == "html"){
			alert('부적절한 업로드 파일입니다.');
			$(this).val('');
			return;
		}


	});
	
	
	/* 제보하기 */
	$('.btn.apply').on('click',function(e){
		posY = $(window).scrollTop();
		
		$('.layout_Pop.apply, .all_shadow').show();
		$("html, body").addClass("not_scroll");

		//Validation Check
		if(!$("input:checkbox[id='apply1']").is(":checked")){
			validationAlert("1. 개인정보의 수집 및 이용 목적에 </br>동의 하지 않았습니다.",null);
			return false;
		}
		
		if(!$("input:checkbox[id='apply2']").is(":checked")){
			validationAlert("2. 개인정보의 보유 및 이용기간에 </br>동의 하지 않았습니다.",null);
			return false;
		}
		
		if(!$("input:checkbox[id='apply3']").is(":checked")){
			validationAlert("3. 개인정보 필수 수집 항목 및 수집 방법에 </br> 동의 하지 않았습니다.",null);
			return false;
		}
		
		if(!$("input:checkbox[id='apply4']").is(":checked")){
			validationAlert("4. 개인정보 선택 수집 항목 및 수집방법에  </br>동의 하지 않았습니다.",null);
			return false;
		}
		
		if($('#reportNm').val() == ""){
			validationAlert("제보자 이름이 입력 되지 않았습니다." , "reportNm",null);
			return false;
		}
		if($('#phone').val() == ""){
			validationAlert("제보자 전화번호가 입력 되지 않았습니다." , "phone",null);
			return false;
		}
		if($('#email').val() == ""){
			validationAlert("제보자 이메일이 입력 되지 않았습니다." , "email",null);
			return false;
		}

		if (!validateApplyEmail($('#email').val())) {
			validationAlert("올바른 제보자 이메일 주소를 입력하세요." , "email",null);
			return false;
		}
		if($('#titl').val() == ""){
			validationAlert("제보할 내용 제목이 입력 되지 않았습니다." , "titl",null);
			return false;
		}
		if($('#reportCont').val() == ""){
			validationAlert("제보할 내용이 입력 되지 않았습니다." , "reportCont",null);
			return false;
		}

		if(Number(byteApplyCheck($('#reportCont').val())) > 500){
			validationAlert("제보 내용이 500자를 초과하였습니다." , "reportCont",null);
			// validationAlert("문의 내용이 입력 되지 않았습니다." , "inquiryCont");
			return false;
		}
		
		
		var reqData = new FormData();
		//약관
		reqData.append("agrYn1", $('#apply1').is(":checked") ? "Y" : "N");
		reqData.append("agrYn2", $('#apply2').is(":checked") ? "Y" : "N");
		reqData.append("agrYn3", $('#apply3').is(":checked") ? "Y" : "N");
		reqData.append("agrYn4", $('#apply4').is(":checked") ? "Y" : "N");
		//내용
		reqData.append("reportNm", $('#reportNm').val()); 
		reqData.append("phone", $('#phone').val()); 
		reqData.append("email", $('#email').val()); 
		reqData.append("titl", $('#titl').val()); 
		reqData.append("reportCont", $('#reportCont').val());
		reqData.append("langCd",langCd);
		//reqData.append("attachFileNm", $('#uploadBtn')); 
		//파일
		$.each($("input[type='file']")[0].files, function(i, file) {
			reqData.append('attachFile', file);
		});
		
		$.ajax({
			url : '/about/submitConsult',
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
				validationAlert("상담제보에 실패 하였습니다. </br>잠시후 다시 이용해 주세요." , "titl");
				return false;
			}else{


				$('#reportNm').val("");
				$('#phone').val("");
				$('#email').val("");
				$('#titl').val("");
				$('#reportCont').val("");

				$('#apply1').prop("checked", false);
				$('#apply2').prop("checked", false);
				$('#apply3').prop("checked", false);
				$('#apply4').prop("checked", false);

				successAlert();
			}
		}).fail(function(xhr, textStatus, errorThrown) {
			if(xhr.status =='403'){
				alert("해당 기능에 대한 권한이 없습니다.");
			}
		});		
	
	});

	
	// 제보하기 Validatino Noti
	function validationAlert(content, elementId){
	
		$('#alertApplyPop').empty();
		var html ="<p class='tit'>" + content +"</p><div class='btn'><a href='#none'>확인</a></div>";
		$('#alertApplyPop').append(html);
		$('.layout_Pop.apply, .all_shadow').show();
		
		if(elementId){
			$("#"+elementId).focus();
		}
		//제보하기 x 또튼 확인 클릭시 클릭 시
		//old
		/*$('.close, .layout_Pop.apply .btn').on('click',function(e){
			$('.layout_Pop.apply, .all_shadow').hide();
			$("html, body").removeClass("not_scroll");

			posY = $(window).scrollTop(posY);
		});*/
	}
	
	
	//제보하기 성공
	function successAlert(){
		var html ="<p class='tit>제보가 접수되었습니다.</p>";
		html += "<p class='txt'>";
		html +=	"<span class='block'>제보내용이 성공적으로 제출 완료되었습니다.</span>";
		html +=	"<span class='block'>고객님께서 입력하신 연락처로 최종결과를 알려드리도록 하겠습니다. </span>";
		html +=	"<span class='block'>최종결과까지의 기간은 최소한 기일(7-10일)이 소요됩니다. </span>";
		html +=	"<span class='block'>소중한 제보 감사합니다.</span>";
		html +=	"</p>";
		html +=	"<div class='btn'><a href='#none'>확인</a></div>"; 
		
		$('#alertApplyPop').empty(html); // 제거 
		$('#alertApplyPop').append(html); //  redraw
		
		$('.layout_Pop.apply, .all_shadow').show();
		/* 제보하기 x 또튼 확인 클릭시 클릭 시 */
		$('.close, .layout_Pop.apply .btn').on('click',function(e){
			// history.go(0);
		});
	}

	function validateApplyEmail(email) {
		var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
		return re.test(email);
	}

	function byteApplyCheck(el){
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