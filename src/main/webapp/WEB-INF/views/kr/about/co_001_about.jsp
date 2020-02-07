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
			<p class="img_tit"><img src="/common/images/svg/about.svg?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="ABOUT"/></p>
			<div class="conts">
				<ul class="location">
					<li><a href="/">Home</a></li>
					<li><a href="#none">Aboout GS ITM</a></li>
					<li><a href="#none">GS ITM</a></li>
				</ul>
				<h2>GS ITM</h2> <!-- // 국문일땐 노클래스, 영문일땐 클래스 eng -->
			</div>
		</article>
		<!-- // location_wrap -->

		<!-- overview -->
		<article class="overview_wrap">
			<div class="conts mb_0">
				<p class="txt blue">GS ITM은 전문적인 IT 서비스를 통해 고객과 함께 성장하는 IT Partner 입니다</p><!--11.25 수정사항 -->
				<p class="txt">GS ITM은 IT서비스 전 분야에서 축적한 경험을 바탕으로 CLOUD, AI 등 신기술을 접목하여 고객의 Digital Transformation을 리딩하는 전문기업으로 성장해가고 있습니다.</p>
			</div>
		</article>
		<!-- // overview -->
		<article class="cgitm_section">
			<div class="border_line_box">
				<div class="flex_box">
					<div style="width:100%; " class="mr-30">
						<h4>Cloud</h4>
						<div  class="flex_box ">
							<p class="ci_img"><img src="/common/images/sub/gsit_1.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<ul class="lisy_style_1">
								<li>클라우드 컨설팅 </li>
								<li>단순 클라우드 마이그레이션 </li>
								<li>클라우드 리플랫포밍 서비스</li>
								<li>클라우드 리팩토링/리아키텍팅 </li>
								<li>SAP S/4HANA 클라우드 마이그레이션 </li><!---11.25 수정사항-->
								<li>마이그레이션 </li>
								<li>클라우드 데이터 분석 구축 </li>
								<li>보안/DevOps/비용 최적화 </li>
							</ul>
						</div>
					</div>
					<div style="width:100%;">
						<h4>AI</h4>
						<div  class="flex_box">
							<p class="ci_img"><img src="/common/images/sub/gsit_2.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<ul class="lisy_style_1">
								<li>컨설팅 서비스</li>
								<li>인공지능 에이전트 서비스</li>
								<li>인공지능 추천 서비스</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="mt_50  list_style_box">
					<ul class="flex_box">
						<li>
							<p class="ci_img"><img src="/common/images/sub/gsit_3.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<h4>IT Outsourcing</h4>
							<ul>
								<li>시스템 관리 및 운영</li>
								<li>시스템 유지보수</li>
								<li>IDC 서비스</li>
								<li>SW, HW 유지보수 </li>
							</ul>
						</li>
						<li>
							<p class="ci_img"><img src="/common/images/sub/gsit_4.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<h4>System Integration</h4>
							<ul>
								<li>시스템 구축</li>
								<li>패키지 SW 기반 구축</li>
								<li>솔루션 개발 및 공급</li>
							</ul>
						</li>
						<li>
							<p class="ci_img"><img src="/common/images/sub/gsit_5.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<h4>IT Convergence</h4>
							<ul>
								<li>IBS(전기통신공사)</li>
								<li>산업자동화/플랜트 IT</li>
								<li>태양광&신재생에너지</li>
							</ul>
						</li>
						<li>
							<p class="ci_img"><img src="/common/images/sub/gsit_6.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<h4>Consulting</h4>
							<ul>
								<li>IT Business 컨설팅</li>
								<li>IT Security 진단 및 </li>
							</ul>
						</li>
					</ul>
			</div>
		</article>

		<article class="ci_box left_txt_box mt_60 mb_0">
			<div class="border_line_box">
				<h2 class="h2_tit">사업분야</h2>
				<p class="h_txt blue  pb_20">GS ITM은 에너지 및 화학, 리테일, e-Commerce, 대학 등의 전 비즈니스 산업영역에서 IT Service사업을 전개하고 하고 있습니다.</p>
				<ul>
						<li>
							<p class="ci_img"><img src="/common/images/sub/gsit_7.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<h4>정유</h4>
							<p>정유 및 석유화학 산업에 안정적이고 전문화된 서비스 경험을 통해 에너지기업의 원부자재 수급, 생산, 판매, 고객관리 등 모든 Value Chain 상의 전 영역을 아우르는 IT서비스를 제공합니다.</p>
						</li>
						<li>
							<p class="ci_img"><img src="/common/images/sub/gsit_8.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<h4>가스 / 발전</h4>
							<p>도시가스/발전 산업을 안정적으로 운영하고 내/외부 환경변화 및 요구사항에 유연하게 대응할 수 있는 산업에 특화된 시스템을 구축합니다.</p>
						</li>
						<li>
							<p class="ci_img"><img src="/common/images/sub/gsit_9.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<h4>유통</h4>
							<p>편의점, 슈퍼마켓, 홈쇼핑, 온라인쇼핑몰과 같은 유통 기업의 경쟁력 강화를 목표로 온/오프라인 매장에 최적화된 장비 및 서비스를 제공합니다.</p>
						</li>
						<li>
							<p class="ci_img"><img src="/common/images/sub/gsit_10.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<h4>대학</h4>
							<p>대학의 경쟁력 강화와 생산성 향상에 기여할 수 있도록 교육, 연구활동, 일반행정, 경영정보 등 대학 업무의 전 영역을 아우르는 Total IT서비스를 제공합니다.</p>
						</li>
						<li>
							<p class="ci_img"><img src="/common/images/sub/gsit_11.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<h4>클라우드</h4>
							<p>고객의 비지니스 프로세스와 산업 환경을 분석하여 복잡도 높은 업무과정을 단순화 시키고, 클라우드 환경에 맞는 탄력적이고 효율적인 업무환경을 제공합니다.</p>
						</li>
						<li>
							<p class="ci_img"><img src="/common/images/sub/gsit_12.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<h4>AI</h4><!---11.25 수정사항-->
							<p>AI 서비스는 기업의 생산성 효율을 증대시킬 뿐만 아니라 비효율적인 업무에 대한 자동화 처리를 통해 고객이 주요 업무에 집중할 수 있도록 지원합니다.</p>
						</li>
						<li>
							<p class="ci_img"><img src="/common/images/sub/gsit_13.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<h4>멤버쉽/CRM</h4>
							<p>기업에 분산된 고객의 정보 및 포인트를 하나의 시스템에서 통합 관리하여 기업에게는 Insight를, 고객에게는 향상된 서비스를 제공할 수 있는 기반을 구축합니다.</p>
						</li>
						<li>
							<p class="ci_img"><img src="/common/images/sub/gsit_14.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<h4>ERP</h4>
							<p>다수의 ERP 구축 경험을 토대로 기업의 업종과 비즈니스의 특성을 고려한 맞춤형 ERP시스템을 구축/운영합니다.</p>
						</li>
						<li>
							<p class="ci_img"><img src="/common/images/sub/gsit_15.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<h4>e-Learning</h4>
							<p>다양한 형태의 교육용 콘텐츠를 새로운 IT 기술이 적용된 HRD 플랫폼을 통해 교육기반서비스를 효율적으로 제공하며 개인의 역량 및 조직의 실질적 경영성과 향상에 적극 기여합니다.</p><!--11.25 수정사항-->
						</li>
						<li>
							<p class="ci_img"><img src="/common/images/sub/gsit_16.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<h4>ICT</h4>
							<p>국내/외 플랜트 공장 및 대규모의 통신공사 구축경험을 바탕으로 무결점 정보통신 공사를 시행하며, 전체 시스템의 유기적인 연동을 통한 시스템 운영 서비스를 제공합니다.</p>
						</li>
						<li>
							<p class="ci_img"><img src="/common/images/sub/gsit_17.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<h4>AMO</h4>
							<p>고객사의 전체 혹은 개별 어플리케이션의 운영에 관한 End-to-End 서비스로  어플리케이션의 모든 라이프사이클 전체에 걸친 아웃소싱 서비스를 제공합니다.</p>
						</li>
						<li>
							<p class="ci_img"><img src="/common/images/sub/gsit_18.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<h4>IMO</h4>
							<p>대규모 인프라 운영 및 컨설팅 경험을 통한 전문인력을 가지고 고객의 중요한 정보를 안전하게 보호하고, 최상의 투자 대비 효과를 얻을 수 있도록 시스템 운영환경을 제공하고 있습니다.</p><!--11.25 수정사항-->
						</li>
						<li>
							<p class="ci_img"><img src="/common/images/sub/gsit_19.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<h4>컨설팅</h4>
							<p>분야별 전문 인력을 바탕으로 고객의 정보화 수준을 평가하여 고객에게 맞는 정보시스템 등의 컨설팅 서비스를 제공합니다.</p>
						</li>
						<li>
							<p class="ci_img"><img src="/common/images/sub/gsit_20.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CI_GUDIE"/></p>
							<h4>태양광</h4>
							<p>전기통신 인프라 구축 경험을 바탕으로 친환경 에너지인 태양을 가지고 태양광 에너지를 산업 전반에 최적의 비즈니스 모델을 제공합니다.</p>
						</li>
					</ul>
			</div>
		</article>
	</section>
	<!-- [s]container -->


</div>
<script type="text/javascript" src="/common/js/customJS/about.js?date=<spring:eval expression="@environment.getProperty('build.date')" />"></script>
</html>
