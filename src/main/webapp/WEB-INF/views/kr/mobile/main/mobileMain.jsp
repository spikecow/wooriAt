<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE HTML>
<html lang="ko">

<div id="wrap">

	<div class="nav_dim"></div>

	<!--  11-13 변경-->
	<div class="visual_wrap main_visual">
		<div  class="main_banner swiper-container">
			<ul class="swiper-wrapper">

				<li class="swiper-slide">
					<img src="/common/mobile/images/common/ITO_neon.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="ITO_icon"/>
					<h1 class="small_titl">IT OUTSOURCING</h1>
					<p>고객의 비지니스 목표를 달성할 수 있도록 <br>포괄적인서비스 및 솔루션을 제공</p>
					</a>
				</li>
				<li class="swiper-slide">
					<img src="/common/mobile/images/common/SAP_neon@3x.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="SAP__icon"/>
					<h1>SAP SERVICE</h1>
					<p>자원관리 솔루션인 SAP컨설팅 구축 및<br> 운영 등 전반적인 서비스 제공</p>
				</li>
				<li class="swiper-slide">
					<img src="/common/mobile/images/common/CLOUD_icon.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="CLOUD_icon"/>
					<h1>CLOUD</h1>
					<p>비지니스와 산업을 분석해 <br> 최적화 된 클라우드환경을 제공</p>
				</li>
			</ul>
			<div class="swiper-pagination main_v_n"></div><!--  11-13 변경-->
		</div>
	</div>
	<!--  11-13 변경-->

	<!-- [s]container -->
	<section id="container">
		<h1 class="skip">본문내용</h1>

		<!-- // overview_wrap -->
		<script type ="text/x-mustache" id="industries-wrap-template">

		<!-- overview_wrap -->
		<article class="overview_wrap none-b">
			<div class="main_con_title"><img src="/common/mobile/images/svg/industires1.svg?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="INDUSTRIE"/></div>
			<p class="main_title_txt">{{mainMgt.indDesc}}</p>
		</article>

		<article class="main_insustrie swiper-container">
			<ul class="swiper-wrapper">
				{{#tbIndMgtList}}
				<li class="swiper-slide">
					<!-- atag 추가 문제없는지 확인-->
					<a href="/industry/indMgntInfo?indSeqId={{seqId}}">
					<!--  11-12 변경 이미지 사이즈 변경-->
					<p class="insustrie_img"><img src="{{mainIconImgUrl}}" alt="{{titleNm}}" style="height:117px; margin-top: 10px;" /></p>
<%--					<p class="insustrie_img"><img src="{{iconImgUrl3}}" alt="{{indNm}}"/></p>--%>
					<!--  11-12 변경-->
					<%--<strong>{{seqId}}</strong>--%>
					<%--<p>{{indNmEn}}</p>--%>
					<p>{{titleNm}}</p>
					</a>
				</li>
				{{/tbIndMgtList}}
<%--				<li class="swiper-slide">--%>
<%--					<img src="/common/mobile/images/common/PETROCHEMICAL.png" alt="news"/>--%>
<%--				</li>--%>
<%--				<li class="swiper-slide">--%>
<%--					<img src="/common/mobile/images/common/gas.png" alt="news"/>--%>
<%--				</li>--%>
<%--				<li class="swiper-slide">--%>
<%--					<img src="/common/mobile/images/common/RETAIL.png" alt="news"/>--%>
<%--				</li>--%>
<%--				<li class="swiper-slide">--%>
<%--					<img src="/common/mobile/images/common/FINANCE .png" alt="news"/>--%>
<%--				</li>--%>
<%--				<li class="swiper-slide">--%>
<%--					<img src="/common/mobile/images/common/education (2).png" alt="news"/>--%>
<%--				</li>--%>
			</ul>
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</article>
		</script>

		<script type ="text/x-mustache" id="news-wrap-template">
		<!-- overview_wrap -->
		<article class="overview_wrap mb_0 main_news">
			<div class="main_con_title"><img src="/common/mobile/images/svg/news.svg?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="news"/></div>
			<ul class="news_list">
					{{#tbPrMgtList}}
					<li>
						<a href="/pr/detailView?prSeqId={{prSeqId}}">
						{{#thumImgUrl}}
						<div class="list_img"><img src="{{thumImgUrl}}" /></div><!--이미지가 없다면  이녀석을 통째로 날려주세요   -->
						<div class="meta_data">
							<span>{{#dateFmt2}}{{postDt}}{{/dateFmt2}}</span>
							<p>{{#textLengthOverCut28}}{{prTitl}}{{/textLengthOverCut28}}</p><!--css 처리는 했는데 그래도 글자수25개 까지는  잘라주세요~  -->
						</div>
						{{/thumImgUrl}}
						{{^thumImgUrl}}
						<div class="meta_data">
							<span>{{#dateFmt2}}{{postDt}}{{/dateFmt2}}</span>
							<p>{{#textLengthOverCut49}}{{prTitl}}{{/textLengthOverCut49}}</p><!--css 처리는 했는데 그래도 글자수25개 까지는  잘라주세요~  -->
						</div>
						{{/thumImgUrl}}
<%--						<div class="meta_data">--%>
<%--							<span>{{#dateFmt2}}{{postDt}}{{/dateFmt2}}</span>--%>
<%--							<p>{{#textLengthOverCut}}{{#safeTagToHtmlTag}}{{prTitl}}{{/safeTagToHtmlTag}}{{/textLengthOverCut}}</p><!--css 처리는 했는데 그래도 글자수25개 까지는  잘라주세요~  -->--%>
<%--						</div>--%>
						</a>
					</li>
					{{/tbPrMgtList}}

<%--					<li>--%>
<%--						<div class="list_img"><img src="/common/mobile/images/common/t-img.png" /></div><!--이미지가 없다면  이녀석을 통째로 날려주세요   -->--%>
<%--						<div class="meta_data">--%>
<%--							<span>YYYY - MM - DD</span>--%>
<%--							<p>타이틀 최대 2줄까지 노출되며 넘어갈경우 말줄임 처리</p><!--css 처리는 했는데 그래도 글자수25개 까지는  잘라주세요~  -->--%>
<%--						</div>--%>
<%--					</li>--%>
<%--					<li>--%>
<%--						<div class="meta_data">--%>
<%--							<span>YYYY - MM - DD</span>--%>
<%--							<p>보도자료 중 이미지가 없는 경우, 이미지는 이렇게 빠지며 제목은 2줄까지 노출입니다. </p><!--css 처리는 했는데 그래도 글자수25개 까지는  잘라주세요~  -->--%>
<%--						</div>--%>
<%--					</li>--%>
<%--					<li>--%>
<%--						<div class="list_img"><img src="/common/mobile/images/common/t-img.png" /></div>--%>
<%--						<div class="meta_data">--%>
<%--							<span>YYYY - MM - DD</span>--%>
<%--							<p>타이틀 최대 2줄까지 노출되며 넘어갈경우 말줄임 처리</p><!--css 처리는 했는데 그래도 글자수25개 까지는  잘라주세요~  -->--%>
<%--						</div>--%>
<%--					</li>--%>
			</ul>
		</article>


		<article class="partner_main swiper-container">
			<div class="main_con_title"><img src="/common/mobile/images/svg/partners_w.svg?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="partners"/></div>

			<ul class="swiper-wrapper">

				{{#mainMgt.partnerImgUrl1}}
				<li class="swiper-slide">
					<p class="text_center"><img src="{{mainMgt.partnerImgUrl1}}" alt="partner"/></p><!---1216  이미지 통으로 변경->
					<!--div class="wbox_3"></div-->
				</li>
				{{/mainMgt.partnerImgUrl1}}

				{{#mainMgt.partnerImgUrl2}}
				<li class="swiper-slide">
					<p class="text_center"><img src="{{mainMgt.partnerImgUrl2}}" alt="partner"/></p><!---1216  이미지 통으로 변경->
					<!--div class="wbox_3"></div-->
				</li>
				{{/mainMgt.partnerImgUrl2}}

				{{#mainMgt.partnerImgUrl3}}
				<li class="swiper-slide">
					<p class="text_center"><img src="{{mainMgt.partnerImgUrl3}}" alt="partner"/></p><!---1216  이미지 통으로 변경->
					<!--div class="wbox_3"></div-->
				</li>
				{{/mainMgt.partnerImgUrl3}}

				{{#mainMgt.partnerImgUrl4}}
				<li class="swiper-slide">
					<p class="text_center"><img src="{{mainMgt.partnerImgUrl4}}" alt="partner"/></p><!---1216  이미지 통으로 변경->
					<!--div class="wbox_3"></div-->
				</li>
				{{/mainMgt.partnerImgUrl4}}

				{{#mainMgt.partnerImgUrl5}}
				<li class="swiper-slide">
					<p class="text_center"><img src="{{mainMgt.partnerImgUrl5}}" alt="partner"/></p><!---1216  이미지 통으로 변경->
					<!--div class="wbox_3"></div-->
				</li>
				{{/mainMgt.partnerImgUrl5}}

			</ul>
			<div class="swiper-pagination"></div>
		</article>
		</script>
	</section>
	<!-- [e]container -->
</div>


<script type="text/javascript" src="/common/mobile/js/customJS/main.js?date=<spring:eval expression="@environment.getProperty('build.date')" />"></script>
</html>