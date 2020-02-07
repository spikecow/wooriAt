<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%--<script>--%>
<%--<c:set var="buildVer">--%>
<%--	<spring:eval expression="@environment.getProperty('build.date')" />--%>
<%--</c:set>--%>
<%--var buildVer = '<c:out value="${buildVer}" />';--%>
<%--</script>--%>
<!DOCTYPE html>
<html lang="ko">

<div id="wrap">
	<!-- [s]header -->
	<%--	<header class="main_header">--%>
	<%--		<div class="main_bg">--%>
	<%--			<h1><img src="/common/images/main/CLOUD.png" alt="CLOUD"/></h1>--%>
	<%--			<div class="main_top_b">--%>
	<%--				<p>다양한 클라우드서비스로 새로운 비지니스를 함계 하는 믿을 수 있는 구축</p>--%>
	<%--				<div class="top_img_box">--%>
	<%--					<img src="../images/main/main_out.png"  alt="IT OURSOURCING"/>--%>
	<%--					<img src="../images/main/main_sao.png"  alt="SAO SERVICE"/>--%>
	<%--					<img src="../images/main/main_cloud.png"  alt="CLOUD"/>--%>
	<%--				</div>--%>
	<%--			</div>--%>
	<%--		</div>--%>
	<%--	</header>--%>
	<!-- [e]header -->


	<!-- [s]container -->
	<section id="container">
		<h2 class="skip">본문내용</h2>

		<!-- location_wrap -->
		<article class="location_wrap">
			<p class="img_tit"><img src="/common/images/svg/industires.svg?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="INDUSTIRES"/></p>
		</article>
		<!-- // location_wrap -->

		<script type ="text/x-mustache" id="industries-wrap-template">
		<!-- overview -->
		<article class="main_wrap">
			<div class="conts">
				<h2>{{mainMgt.indDesc}}</h2>

				<!-- reference_wrap -->
				<article class="swiper-container main_industires_slide">
						<ul class="swiper-wrapper">
							{{#tbIndMgtList}}
							<li class="swiper-slide">
								<a href="/industry/indMgntInfo?indSeqId={{seqId}}">
<%--									<p class="img"><img src="{{iconImgUrl3}}" alt="{{indNm}} 이미지"/></p>--%>
<%--									<p class="img-txt">{{#safeTagToHtmlTag}}{{summary}}{{/safeTagToHtmlTag}}</p>--%>

									<p class="img"><img src="{{mainIconImgUrl}}" alt="{{titleNm}} 이미지"/></p>
									<p class="title">{{titleNm}}</p>
<%--									<p class="title">{{indNm}}<span>{{indNmEn}}</span></p>--%>
									<p class="img-txt">{{#safeTagToHtmlTag}}{{{mainDesc}}}{{/safeTagToHtmlTag}}</p>
								</a>
							</li>
							{{/tbIndMgtList}}
						</ul>
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
				</article>
				<!-- // reference -->

			</div>
		</article>
		<!-- // overview -->
		</script>

		<script type ="text/x-mustache" id="news-wrap-template">
		<!-- news -->
		<article class="main_news_wrap">
			<p class="img_tit"><img src="/common/images/svg/news.svg?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="news"/></p>
			<h2>{{mainMgt.newsDesc}}</h2>
			<div class="conts">
				<ul>
					{{#tbPrMgtList}}
					<li>
						<a href="/pr/detailView?prSeqId={{prSeqId}}">
						{{#thumImgUrl}}
							<p class="news_img_box"><img src="{{thumImgUrl}}" alt="images"/></p>
						{{/thumImgUrl}}
						{{^thumImgUrl}}
							<p class="news_img_box"><img src="/common/images/sub/gsit_11.png" alt="images"/></p>
						{{/thumImgUrl}}
							<dl>
								<dt>{{#safeTagToHtmlTag}}{{prTitl}}{{/safeTagToHtmlTag}}</dt> <!-- // 뉴스 타이틀 1줄까지 들어가고 말줄임 처리 -->
								<dd>{{#safeTagToHtmlTag}}{{summary}}{{/safeTagToHtmlTag}}</dd> <!-- // 뉴스 컨텐츠 최대 2줄까지 끌어오며, 이후는 말줄임처리 -->
							</dl>
						</a>
					</li>
					{{/tbPrMgtList}}

<%--					<li>--%>
<%--						<a href="#none">--%>
<%--							<dl>--%>
<%--								<dt>미래엔서해에너지에 빌링 시스템 구축</dt> <!-- // 뉴스 타이틀 1줄까지 들어가고 말줄임 처리 -->--%>
<%--								<dd>당사가 지난 2017년부터 참여하여 진행한'미래엔서해에너지 빌링시스템 재구축 프로젝트'를 성공적으로 완료</dd> <!-- // 뉴스 컨텐츠 최대 2줄까지 끌어오며, 이후는 말줄임처리 -->--%>
<%--							</dl>--%>
<%--						</a>--%>
<%--					</li>--%>
<%--					<li>--%>
<%--						<a href="#none">--%>
<%--							<dl>--%>
<%--								<dt>뉴타닉스와 리셀러 파트너십 계약 체결</dt> <!-- // 뉴스 타이틀 1줄까지 들어가고 말줄임 처리 -->--%>
<%--								<dd>당사는 지난 19일 하이퍼컨버지드 인프라(HCI) 및 엔터프라이즈 클라우드 컴퓨팅 전문 업체 '뉴타닉스'와 리셀러 파트너	</dd> <!-- // 뉴스 컨텐츠 최대 2줄까지 끌어오며, 이후는 말줄임처리 -->--%>
<%--							</dl>--%>
<%--						</a>--%>
<%--					</li>--%>
<%--					<li>--%>
<%--						<a href="#none">--%>
<%--							<dl>--%>
<%--								<dt>K쇼핑 차세대 시스템 구축 프로젝트</dt> <!-- // 뉴스 타이틀 1줄까지 들어가고 말줄임 처리 -->--%>
<%--								<dd>당사가 지난 2017년부터 참여하여 진행한'미래엔서해 에너지 빌링시스템 재구축 프로젝트'를 성공적으로</dd> <!-- // 뉴스 컨텐츠 최대 2줄까지 끌어오며, 이후는 말줄임처리 -->--%>
<%--							</dl>--%>
<%--						</a>--%>
<%--					</li>--%>
				</ul>
			</div>
		</article>
		<!-- // news -->
		<article class="partner">
			<div class="partner_box">
								<h2>IT분야 별 전문성을 갖춘 파트너사와 협력하여 <br>최적의 서비스를 제공합니다.</h2>
				<p><img src="{{mainMgt.partnerImgUrl1}}?date=<spring:eval expression="@environment.getProperty('build.date')" />"></p>
<%--
				<!--2019-12-16 이미지 한판으로 변경<ul>
					<li><img src="/common/images/main/aws.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="aws" /></li>
					<li><img src="/common/images/main/hp.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="hp" /></li>
					<li><img src="/common/images/main/ibm.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="ibm" /></li>
					<li><img src="/common/images/main/kt.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="kt" /></li>
					<li><img src="/common/images/main/pwc.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="pwc" /></li>
					<li><img src="/common/images/main/megazone-cloud.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="megazone-cloud" /></li>
					<li><img src="/common/images/main/tilon.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="tilon" /></li>
					<li><img src="/common/images/main/namu.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="namu" /></li>
					<li><img src="/common/images/main/nutanix.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="nutanix" /></li>
					<li><img src="/common/images/main/konana.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="konana" /></li>
					<li><img src="/common/images/main/oracle.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="oracle" /></li>
					<li><img src="/common/images/main/sap.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="sap" /></li>
					<li><img src="/common/images/main/dell.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="dell" /></li>
					<li><img src="/common/images/main/ms.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="ms" /></li>
					<li><img src="/common/images/main/douzone.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="douzone" /></li>
				</ul><!--11-17 메뉴 추가-->
--%>
			</div>
		</article>
		</script>
	</section>
	<!-- [s]container -->
</div>

<script type="text/javascript" src="/common/js/customJS/main.js?date=<spring:eval expression="@environment.getProperty('build.date')" />"></script>
<%--<script type="text/javascript" src="/common/js/customJS/main.js?date="></script>--%>
</html>

