<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="scrollTop">
	<a href="/inquiry/sales" class="inquiry"><img src="/common/mobile/images/common/ico_voice.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="voice"/></a>
	<span><img src="/common/mobile/images/common/ico_top.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="scrollTop"/></span>
</div>
<!-- [s]footer -->

<footer id="footer">
</footer>


<script type ="text/x-mustache" id="footer-template">

	<article class="footer_map">
		<dl>
			<dt><a href="/service/serviceInfo?svcSeqId={{mblServiceMenuResult.seqId}}">SERVICE</a></dt>
			<dt><a href="/industry/indMgntInfo?indSeqId={{mblInsdustryMenuResult.seqId}}">INDUSTIRES</a></dt>
			<dt><a href="/dist/partner/list">IT Distribution</a></dt>
			<dt><a href="/reference/referenceInfo">REFERENCES</a></dt>
			<dt><a href="/pr/list">PR</a></dt>
			<dt><a href="/career/personnel">CAREERS</a></dt>
			<dt><a href="/about/gsitm">ABOUT</a></dt>
		</dl>

<%--		<dl>--%>
<%--			<dt><a href="#none">SERVICE</a></dt>--%>
<%--			{{#serviceMenuResult}}--%>
<%--				<dd><a href="/service/serviceInfo?svcSeqId={{svcSeqId}}">{{svcNm}}</a></dd>--%>
<%--			{{/serviceMenuResult}}--%>
<%--		</dl>--%>
<%--		<dl>--%>
<%--			<dt><a href="#none">Industries</a></dt>--%>
<%--				{{#insdustryMenuResult}}--%>
<%--					<dd><a href="/industry/indMgntInfo?indSeqId={{indSeqId}}">{{indNm}}</a></dd>--%>
<%--				{{/insdustryMenuResult}}--%>
<%--		</dl>--%>
		<ul class="footer_util">
			<li><a href="https://www.facebook.com/GSITM/" target="_blank">FACEBOOK</a></li>
<%--			<li><a href="https://www.linkedin.com/company/gs-itm/about/" target="_blank">LINKED IN</a></li>--%>
<%--			<li><a href="https://www.instagram.com/gsitm/?hl=ko" target="_blank">INSTAGRAM</a></li>--%>
		</ul>
	</article>

	<article class="copyright_wrap">
		<!-- 유틸 사이트맵 -->
		<div class="util_wrap">
			<ul>
			<li><a href="/inquiry/sales" class="inquiry">영업문의</a></li>
			<li><a href="/terms/policy">개인정보처리방침</a></li>
			<li><a href="/about/location">오시는길</a></li>
		</ul>
		</div>
		<!-- // 유틸 사이트맵 -->
		<p class="copyright">COPYRIGHT (C) <span>GS ITM</span> CO., LTD. ALL RIGHT </p><!-- 11.22 수정 -->
	</article>

</script>

<script type ="text/x-mustache" id="industry-select-option-template">
<option value="0">전체 *</option>
{{#indMgtList}}
	<option value="{{indSeqId}}">{{indNm}}</option>
{{/indMgtList}}
<option value="0">전체 *</option>
</script>

<script type ="text/x-mustache" id="service-select-option-template">
<option value="0">전체 *</option>
{{#svcMgtList}}
<option value="{{svcSeqId}}">{{svcNm}}</option>
{{/svcMgtList}}
</script>
	<!-- [e]footer -->

