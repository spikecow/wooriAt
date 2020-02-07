<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="ko"> 

<div id="wrap">


	<!-- [s]container -->
	<section id="container">
		<h2 class="skip">본문내용</h2>

		<!-- location_wrap -->
		<article class="location_wrap">
			<p class="img_tit"><img src="/common/images/svg/ci_cuide.svg?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
			<div class="conts">
				<ul class="location">
					<li><a href="/">Home</a></li>
					<li><a href="#none">Aboout GS ITM</a></li>
					<li><a href="#none">CI가이드</a></li>
				</ul>
				<h2>CI 가이드</h2> <!-- // 국문일땐 노클래스, 영문일땐 클래스 eng -->
			</div>
		</article>
		<!-- // location_wrap -->

		<!-- overview -->
		<article class="overview_wrap">
			<div class="conts mb_0">
				<p class="txt blue">GS ITM을 표현하는 아이덴티티 시스템의 핵심 요소로 명시된 규정과 원칙을 반드시 준수합니다</p>
			</div>
		</article>
		<!-- // overview -->
		<article class="ci_box">
			<div class="border_line_box">
				<h3>Symbol Mark</h3>
				<p class="ci_txt pb_20">심볼마크는 Orange, Green, Blue 3색을 기본 Color로 하고 있는데, Orange Color는 에너지가 상징하는 역동성을, Green Color는 유통/서비스 등의 생활편의 사업군의 성장과 배려를 표현하였으며, Blue Color는 투명경영을 통해 최고를 지향하는 리더십을 상징적으로 구현함으로써 전체적으로 태양, 하늘과 바다, 대지를 아우르는 Simple 하면서도 Dynamic한 느낌을 주도록 하였습니다.</p>
					<p class="ci_img"><img src="/common/images/sub/symbol_Mark1.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
			</div>
		</article>
		
		<article class="ci_box">
			<div class="border_line_box">
				<h3>Signature</h3>
				<p class="ci_txt pb_20">GS ITM 시그니춰는 기본적으로 흰색 배경을 가지는 것을 원칙으로 하나, 배경의 색상이나 환경을 고려해 적절히 아래의 응용편을 적용할 수 있습니다.</p>
				<div class="flex_box">
					<div>
						<h4>기본형</h4>
						<p class="ci_img"><img src="/common/images/sub/Signature_01.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
						<div class="d_box">
							<a href="/common/images/ci/logo_homepage.ai"><img src="/common/images/sub/AI_d.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="AI_d"/></a>
							<a href="/common/images/ci/logo_homepage.jpg"><img src="/common/images/sub/JPG_d.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="JPG_d"/></a>
						</div>
					</div>
					<div>
						<h4>응용형</h4>
						<p class="ci_img"><img src="/common/images/sub/Signature_02.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
						<p class="ci_txt">CI가 배경에 색상이 있을 경우에는 1pixel의 흰색 테두리 라인을 그리도록 한다.</p>
					</div>
				</div>
			</div>
		</article>

		<article class="ci_box">
			<div class="border_line_box">
				<h3>Color Palette</h3>
				<p class="ci_txt pb_20">색상은 4원색(Gradient Color) 표현을 기본으로 하고, 4원색(Gradient Color) 재현이 불가능한 경우에 한해서 제한적 3원색 (Solid Color) 표현을 합니다.</p>
				<div class="flex_box mb_55">
					<div>
						<h4>4원색(Gradient Color) 표현</h4>
						<p class="ci_img"><img src="/common/images/sub/Gradient.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
					</div>
					<div>
						<h4>Gradients from the Symbol</h4>
						<p class="ci_img"><img src="/common/images/sub/Gradient2.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
					</div>
				</div>
				<div class="flex_box ">
					<div>
						<h4>3원색(Solid Color) 표현</h4>
						<p class="ci_img"><img src="/common/images/sub/Gradient3.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
					</div>
				</div>
			</div>
		</article>

		<article class="ci_box">
			<div class="border_line_box">
				<h3>Graphic Motif</h3>
				<p class="ci_txt pb_20">그래픽 모티브로 사용될 때에는 정방향이나, 30도 정도 회전시킨 타입을 사용합니다.</p>
				<p class="ci_img mt_0"><img src="/common/images/sub/Gradient4.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
			</div>
		</article>

		<article class="ci_box mb_0">
			<div class="border_line_box">
				<h3>Incorrect Usage</h3>
				<p class="ci_txt pb_20">메뉴얼의 규정에 어긋나게 로고를 변경시켜 사용하여, GS ITM 로고의 시각적 일관성을 방행하고, 나아가  GS ITM의 의미를 훼손하는 일이 없도록 해야 합니다.</p>
				<p class="ci_img mt_0"><img src="/common/images/sub/Gradient5.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
			</div>
		</article>
	</section>
	<!-- [s]container -->

</div>
</body>


<script type="text/javascript">


$(function(){
	// /* 서비스페이지만 존재합니다. tab 스크롤 스크립트입니다. */
	// $(document).ready( function() {
	// 	var tab = $('.tab_ly').offset();
	// 	var tab_before = $('.tab_before').offset(); //탭 클릭 시 해더 돌려놓는 용도
	// 	var tab_after = $('.tab_after').offset(); //탭 해더 돌려놓는 용도tab_after
	// 	$(window).scroll(function() {
	// 		if($(this).scrollTop() >= tab_before.top) {
	// 			$('.gnb_wrap').removeClass('fixed');
	// 		}
	//
	// 		if($(this).scrollTop() > tab.top) {
	// 			$('.tab_ly').addClass('tab_fixed');
	// 			$('.tab_ly').show();
	// 			$('.gnb_wrap').removeClass('fixed');
	// 		}
	// 		else {
	// 			$('.tab_ly').removeClass('tab_fixed');
	// 		}
	//
	// 		/* 탭 예외 */
	// 		if($(document).scrollTop() > tab_after.top) {
	// 			$('.tab_ly').hide();
	// 			$('.gnb_wrap').addClass('fixed');
	// 		}
	//
	// 	});
	// });
	// /* tab */
	// $("ul.tab li p").click(function (event) {
	// 	var index = $(".tab_ly li").index($(this).parent());
	// 	$(".tab_conts li").css("display", "none");
	// 	$(".tab_conts li").eq(index).css("display", "block");
	// 	$('.tab_ly').removeClass('tab_fixed');
	// 	$(event.target).closest('li').addClass( "on" );
	// 	$(this).parent().siblings().removeClass("on");
	// });
	//
	// $('ul.tab li a').on('click', function(event){
	// 	event.preventDefault();
	// 	$('.gnb_wrap').removeClass('fixed');
	// 	$('html,body').animate({scrollTop:$(this.hash).offset().top}, 300);
	// });
});
</script>

<%--<script type="text/javascript">--%>
<%--	$('header').addClass("about");--%>
<%--	$('header h1').text("About");--%>
<%--</script>--%>
<script type="text/javascript" src="/common/js/customJS/about.js?date=<spring:eval expression="@environment.getProperty('build.date')" />"></script>
</html>
