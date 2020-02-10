// layout
function layout() {
	// nav
	var $gnbNav = $('.gnb_nav'),
		$gnbDep1 = $('.dep1'),
		$gnbDep1Btn = $('.gnb_nav .dep1 > li > a');
	$gnbDep1Btn.mouseenter(function(){
		$gnbDep1.children('li').removeClass('on');
		$(this).parent('li').addClass('on');
	})
	$gnbNav.mouseleave(function(){
		$gnbDep1.children('li').removeClass('on');
	});
 
	// lnb
	$('.lnb_wrap .dep2 > a').click(function  () {
		$(this).parent().toggleClass('on');
		$(this).siblings().slideToggle(500);
		return false;
	});
	$('.lnb_wrap .dep2').mouseleave(function  () {
		if ( $(this).find('.dep_list').css('display') == 'block' ) {
			$(this).removeClass('on');
			$(this).find('.dep_list').slideUp('fast');
		}
	});
 
	// family site
	$(document).on('click', '.family_site > a', function(e){
		e.preventDefault();
		if(!$(this).parent().hasClass("on")){
			$(this).parent().addClass("on");
		}else{
			$(this).parent().removeClass("on");
		}
	});
}

// tab
function tabContents(ele, idx) {
	var tabWrap = ele,
		tabBtn = tabWrap.children().children('.tab_btn'),
		tabCont = tabWrap.children('.tab_cont');
	tabBtn.eq(idx).addClass('on').siblings().removeClass('on');
	tabCont.eq(idx).addClass('on').siblings().removeClass('on');
	tabBtn.find('a').on('click', function(){
		var $this = $(this),
			idx = $this.parent().index();
		$this.parent().addClass('on').siblings().removeClass('on');		$this.closest('.tab_wrap').children('.tab_cont').eq(idx).addClass('on').siblings().removeClass('on');
	});
}

// sorting list
function sortList() {
	$('.board_sorting > a').click(function  () {
		$(this).parent().toggleClass('on');
		return false;
	});
	$('.board_sorting').mouseleave(function  () {
		if ( $(this).find('.sort_list').css('display') == 'block' ) {
			$(this).removeClass('on');
		}
	});
}

// layer popup 
function layerOpen(id){	//레이어 팝업 열기
	var layerId = $('#'+id);
	layerId.show();
	$('html').addClass('fix');
	// 팝업 이외의 영역 클릭시 닫기
	$(document).mouseup(function (e) { 
		if (!$(".pop_cont").is(e.target) && $(".pop_cont").has(e.target).length === 0){
			layerId.hide();
			$('html').removeClass('fix');
		}	
	});
}
function layerClose(id) {  //레이어 팝업 닫기
	var layerId = $('#'+id);
	layerId.hide();
	$('html').removeClass('fix');
};

$(function(){
	layout();
	sortList();
	// tab 실행
	$('.tab_wrap').each(function(){ 
		var $this = $(this);
		tabContents($this, 0);
	});
});	
