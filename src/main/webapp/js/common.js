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
			$(this).parent().addClass("on")
		}else{
			$(this).parent().removeClass("on")
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

$(function(){
	layout();
	// tab 실행
	$('.tab_wrap').each(function(){ 
		var $this = $(this);
		tabContents($this, 0);
	});
});	
