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
		<p class="img_tit"><img src="/common/images/svg/history.svg?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="HISTORY"/></p>
		<div class="conts">
			<ul class="location">
				<li><a href="/">Home</a></li>
				<li><a href="#none">Aboout GS ITM</a></li>
				<li><a href="#none">연혁</a></li>
			</ul>
			<h2 class="">연혁</h2> <!-- // 국문일땐 노클래스, 영문일땐 클래스 eng -->
		</div>
	</article>
	<!-- // location_wrap -->

	<!-- overview -->
	<article class="overview_wrap">
		<div class="conts">
			<p class="txt blue">GS ITM은 다양한 비즈니스 영역에서 고객의 Value 창출을 최우선으로 생각하며 변화하고 있습니다</p>
		</div>
	</article>
	<!-- // overview -->
	<!-- tab_wrap -->
	<article class="tab_wrap">
		<div class="tab_before" id="tab"></div>		
		<div class="tab_ly">
			<ul class="tab">
				<li class="on"><p><a href="#tab">2010년대</a></p></li>
				<li><p><a href="#tab">2000년대</a></p></li>
			</ul>
		</div>
		<ul class="tab_conts history_list">
			<li style="display:block;">
				<div>
					<dl>
						<dt>2019</dt>
						<dd>Nutanix 파트너십 체결</dd>
						<dd>Private Cloud 사업 진출</dd>
					</dl>
				</div>
				<div>
					<dl>
					  <dt>2018</dt>
						<dd>금융권 통합멤버십 사업진출 (범농협통합멤버십 시스템 구축)</dd>
						<dd>커머스 IT운영사업 본격화 (LF Mall IT운영사업 수주)</dd>
						<dd>박성근 대표이사 취임</dd>
					</dl>
				</div>
				<div>
					<dl>
					<dt>2017</dt>
					<dd>롯데케미칼 통합 MES구축</dd>
					<dd>홈플러스 New Membership 구축</dd>
				</dl>
				</div>
				<div>
					<dl>
					<dt>2016</dt>
					<dd>대외멤버십 통합 사업본격화(한국야쿠르트,현대백화점 그룹 멤버십 등)</dd>
					<dd>TCS (TATA Consultancy Service) 업무제휴(MOU)체결</dd>
				</dl>
				</div>
				<div>
  						<dl>
					<dt>2014</dt>
					<dd>태양광발전공사 사업 본격화 (매일유업 태양광발전 공사)</dd>
					<dd>글로벌홈쇼핑 사업진출(중국Huimai 홈쇼핑 시스템 구축)</dd>
					<dd>Cross-Functional 조직구성 (SI,SM,영업 전담조직 구성)</dd>
				</dl>
				</div>
				<div>
  						<dl>
					<dt>2013</dt>
					<dd>GS홈쇼핑 AMO이관</dd>
					<dd>금융권통합유지보수 사업 진출 (흥국생명/화재 통합유지보수사업)</dd>
					<dd>호텔통신공사사업 본격화 (세종로 포시즌호텔통신공사사업)</dd>
				</dl>
				</div>
				<div>
  						<dl>
					<dt>2012</dt>
					<dd>GS리테일 AMO이관</dd>
					<dd>대학차세대시스템 구축사업본격화  (수원대 차세대 학사행정시스템 구축)</dd>
					<dd>대외 ERP 사업 본격화(경남에너지 통합ERP 구축)</dd>
				</dl>
				</div>
			</li>
			<li>
				<div>
  						<dl>
					<dt>2010</dt>
					<dd>㈜GS ITM 사명 변경</dd>
					<dd>글로벌홈쇼핑 사업진출(중국Huimai 홈쇼핑 시스템 구축)</dd>
				</dl>
			</div>
				<div>
  						<dl>
					<dt>2006</dt>
					<dd>㈜ITMEX SYI 공식출범</dd>
					<dd>GS그룹 계열사 편입</dd>
				</dl>
			</div>
			</li>
		</ul>
	</article>
	<!-- // tab_wrap -->

</section>
<!-- [s]container -->
</div>
</body>
<%--<script type="text/javascript">--%>
<%--$('header').addClass("about");--%>
<%--$('header h1').text("About");--%>
<%--</script>--%>
<script type="text/javascript" src="/common/js/customJS/history.js?date=<spring:eval expression="@environment.getProperty('build.date')" />"></script>
</html>
