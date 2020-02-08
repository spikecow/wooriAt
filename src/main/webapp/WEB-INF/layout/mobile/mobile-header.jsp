<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Nav 구성 -->
<script type ="text/x-mustache" id="top-navi">
	<ul class="dep1">
		<li><p class="tit"><a href="#none">SERVICE</a></p>
			<ul class="dep2">
				{{#serviceMenuResult}}
					<li><a href="/service/serviceInfo?svcSeqId={{seqId}}">{{titleNm}}</a></li>
				{{/serviceMenuResult}}
			</ul>
		</li>
		<li><p class="tit"><a href="#none">INDUTRIES</a></p>
			<ul class="dep2">
				{{#insdustryMenuResult}}
					<li><a href="/industry/indMgntInfo?indSeqId={{seqId}}">{{titleNm}}</a></li>
				{{/insdustryMenuResult}}
			</ul>
		</li>
		<li><p class="tit"><a href="#none">IT Distribution</a></p>
			<ul class="dep2">
				<li><a href="/dist/partner/list">Partner</a></li>
				<li><a href="/dist/solution/list">Solution</a></li>
			</ul>
		</li>
		<li><a href="/reference/referenceInfo" class="link_menu">REFERENCES</a></li>
		<li><p class="tit"><a href="#none">PR</a></p>
			<ul class="dep2">
				<li><a href="/pr/list">보도자료</a></li>
				<li><a href="/pr/pdf">홍보자료</a></li>
				<li><a href="/pr/cliplist">ITM Clip</a></li>
			</ul>
		</li>
		<li><p class="tit"><a href="#none">CAREERS</a></p>
			<ul class="dep2">
				<li><a href="/career/personnel">인재상</a></li>
				<li><a href="/career/role">인사제도 및 직무</a></li>
				<li><a href="/career/walfarepsd">복리후생</a></li>
				<li><a href="https://wooriat.recruiter.co.kr/" target="_blank">채용공고</a></li>
			</ul>
		</li>
		<li><p class="tit"><a href="#none">ABOUT</a></p>
			<ul class="dep2">
				<li><a href="/about/wooriat">GS ITM</a></li>
				<li><a href="/about/history">연혁 </a></li>
				<li><a href="/about/ethics">윤리경영</a></li>
				<li><a href="/about/ci">CI가이드</a></li>
			</ul>
		</li>
	</ul>
</script>
<script>
    var langCd = "${langCd}";
    if(langCd ==''){
        langCd="KR";
    }
</script>

