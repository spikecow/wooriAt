var langCd="KR";

$(function() {	

	//메뉴 화면 구성
	$('nav').empty();
	renderNaviMenu();

	//데이터 조회
	function renderNaviMenu(){
		$.ajax({
			url : "/getHeaderNaviMenu",
			type : 'POST',
			data: {"langCd": langCd},
			async: false,
			success : function(data){

				var template = $('#top-navi').html();

				/*var data = {
						"serviceMenuResult" : data.serviceMenuResult,
						"insdustryMenuResult" : data.insdustryMenuResult
				};*/
				var html = Mustache.render(template,data);
				$('nav').append(html);

			}, error : function(error){
				location.href = "/error";
				// alert("에러가 발생했습니다. 잠시후에 시도하여 주세요.",error);
			}
		});
	}
});

