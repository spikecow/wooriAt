<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="scrollTop">
	<a href="#none" class="inquiry"><img src="/common/images/common/ico_voice.svg?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="voice"/></a>
	<span><img src="/common/images/common/ico_top.svg?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="scrollTop"/></span>
</div>

<footer id="footer">
		<!--  -->
</footer>

<!-- KR Footer-->
<script type ="text/x-mustache" id="footer-template">
<article class="conts">
	<!-- 파워맵 -->
	<ul class="sitemap">
		<li>
			<dl>
				<dt><a href="#none">Service</a></dt>
				{{#serviceMenuResult}}
				<dd><a href="/service/serviceInfo?svcSeqId={{seqId}}">{{titleNm}}</a></dd>
				{{/serviceMenuResult}}
			</dl>
		</li>
		<li>
			<dl>
				<dt><a href="#none">Industries</a></dt>
				{{#insdustryMenuResult}}
					<dd><a href="/industry/indMgntInfo?indSeqId={{seqId}}">{{titleNm}}</a></dd>
				{{/insdustryMenuResult}}
			</dl>
		</li>
		<li>
			<dl>
				<dt><a href="#none">IT Distribution</a></dt><!--11-17 메뉴 추가-->
				<dd><a href="/dist/partner/list">Partner</a></dd>
				<dd><a href="/dist/solution/list">Solution</a></dd>
				<dt><a href="/reference/referenceInfo">REFERENCES</a></dt><!--11-17 메뉴 추가-->
				<dt><a href="#none">PR</a></dt>
				<dd><a href="/pr/list">보도자료</a></dd>
				<dd><a href="/pr/pdf">홍보자료실</a></dd>
			</dl>
		</li>
		<li>
			<dl>
				<dt><a href="#none">Careers</a></dt>
				<dd><a href="/career/personnel">인재상</a></dd>
				<dd><a href="/career/role">인사제도 및 직무</a></dd>
				<dd><a href="/career/walfarepsd">복리후생</a></dd>
				<dd><a href="https://gsitm.recruiter.co.kr/" target="_blank">채용공고</a></dd>
			</dl>
		</li>
		<li>
			<dl>
				<dt><a href="#none">About GS ITM</a></dt>
				<dd><a href="/about/gsitm">GS ITM</a></dd>
				<dd><a href="/about/history">연혁</a></dd>
				<dd><a href="/about/ethics">윤리경영</a></dd>
				<dd><a href="/about/ci">CI가이드</a></dd>
			</dl>
		</li>
		<li>
			<dl>
				<dt><a href="#none">SNS</a></dt>
<%--				<dd><a href="https://www.instagram.com/gsitm/?hl=ko" target="_blank">INSTARGRAM</a></dd>--%>
<%--				<dd><a href="https://www.linkedin.com/company/gs-itm/about/" target="_blank">LINKD IN</a></dd>--%>
				<dd><a href="https://www.facebook.com/GSITM/" target="_blank">FACEBOOK</a></dd>
			</dl>
		</li>

	</ul>
	<!-- //파워맵 -->

	<!-- 유틸 사이트맵 -->
	<div class="util_wrap">
		<ul>
			<li><a href="#none" class="inquiry">영업문의</a></li>
			<li><a href="/terms/policy">개인정보처리방침</a></li>
			<li><a href="#tab" class="map_nox">오시는길</a></li>
		</ul>
	</div>
	<!-- // 유틸 사이트맵 -->
	<div class="copyright">COPYRIGHT (C)<strong>GS ITM</strong> CO., LTD. ALL RIGHT </div>
</article>

<!-- [s]map 팝업 -->
<div class="layout_Pop map_nox">
	<div class="cont map_lay">
		<!-- tab_wrap -->
		<article class="tab_wrap">
			<div class="tab_before" id="tab_map"></div>
			<div class="tab_ly">
				<ul class="tab_map_box">
					<li class="on"><p><a href="#none">본사</a></p></li>
					<li><p><a href="#none">제2사옥</a></p></li>
				</ul>
			</div>
			<ul class="tab_conts map_list">
				<li style="display:block;">
					<p class="map_add">서울시 종로구 계동길 31 보헌빌딩 1F & 2F (우)03059 <span>TEL : 02-2089-6700 / FAX : 02-764-4164, 2F / 747-2720, 1F</span></p>
					<div id="map1" style="width:1055px; height:398px;">
						<iframe src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJsV2eNNuifDURoS61lOqzUN4&key=AIzaSyDqQu65cs9ht1IRf6Jn3260nVAYPPIbJuk&zoom=18" width="1055" height="398" frameborder="0" style="border:0;" allowfullscreen></iframe>
<%--						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1329.4559400622713!2d126.9859492485342!3d37.57869007557577!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca2db349e5db1%3A0xde50b3ea94b52ea1!2z67O07ZeM67mM65Sp!5e0!3m2!1sko!2skr!4v1573716108366!5m2!1sko!2skr" width="1055" height="398" frameborder="0" style="border:0;" allowfullscreen=""></iframe>--%>
					</div>

				</li>
				<li>
					<p class="map_add">서울시 종로구 율곡로88 삼환빌딩 10F (우) 03131 <span>TEL : 02-2189-6700</span></p>
					<div id="map2" style="width:1055px; height:398px;">
						<iframe src="https://www.google.com/maps/embed/v1/place?q=%EC%82%BC%ED%99%98%EB%B9%8C%EB%94%A9&key=AIzaSyDqQu65cs9ht1IRf6Jn3260nVAYPPIbJuk&zoom=18" width="1055" height="398" frameborder="0" style="border:0;" allowfullscreen></iframe>
<%--						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d837.5255166859441!2d126.9882150464383!3d37.57684537001176!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca2db78561659%3A0x474ed5dc09ffe443!2z7IK87ZmY67mM65Sp!5e0!3m2!1sko!2skr!4v1573716062901!5m2!1sko!2skr" width="1055" height="398" frameborder="0" style="border:0;" allowfullscreen=""></iframe>--%>
					</div>
				</li>
			</ul>
		</article>
		<!-- // tab_wrap -->
		<div class="btn map_nox"><a href="#none">확인</a></div>
	</div>
</div>
<div class="all_shadow"></div> <!-- //그림자 -->
<!-- [e]map 팝업 -->


<!-- [s]제보 팝업 -->
<div class="layout_Pop inquiry">
	<a href="#none" class="close"></a>
	<div class="cont">
		<p class="tit">문의하기</p>
		<ul class="inpbox">
			<li><input type="text" name="inquiryNm" id="inquiryNm" placeholder="이름*" value=""/></li>
			<li><input type="text" name="phone" id="inquiryPhone" placeholder="연락처*" value=""/></li>
			<li><input type="text" name="email" id="inquiryEmail" placeholder="이메일*" value=""/></li>
			<li class="wd2 border-none">
				<!-- select -->
				<select id="ind_select" style="width:298px;"  class="select_asdf">
					<option value="0">문의분야선택</option>
					<option value="1">서비스</option>
					<option value="2">산업군</option>
				</select>
				<!-- // select -->
			</li>
			<li class="wd2 last  border-none">
				<!-- select -->
				<select id="svc_select" style="width:298px;" class="select_asdf">
<%--					<option value='1'>IT아웃소싱/컨설팅</option>--%>
<%--					<option value='2'>IT아웃소싱/SI</option>--%>
<%--					<option value='3'>IT아웃소싱/SM</option>--%>
<%--					<option value='4'>IT아웃소싱/IT컨버전스</option>--%>
<%--					<option value='5'>SAP서비스/마이그레이션</option>--%>
<%--					<option value='6'>SAP서비스/ERP</option>--%>
<%--					<option value='7'>SAP서비스/개발 및 관리</option>--%>
<%--					<option value='8'>클라우드</option>--%>
				</select>
				<!-- // select -->
			</li>
			<li><textarea id="inquiryCont" name="inquiryCont" placeholder="문의내용을 입력해주세요.(500자 미만)*" value=""/></textarea></li>
		</ul>
		<div class="btn_gray"><a href="#none">개인정보 수집 및 이용안내</a></div>

		<div class="inbox">
		<div class="title_box">
			<dl>
				<dt>개인정보 수집 및 이용안내</dt>
				<dd>아래 링크를 눌러 내용을 주의 깊게 읽어 주시기 바랍니다.</dd>
			</dl>
			<ul class="chk">
				<li class="all_inquiry"><input type="checkbox" class="inquiry_chk" id="inquiry1" ><label for="inquiry1">모두 동의하기</label></li>
<%--					<li class="wd2 close_chk"><input type="checkbox" class="inquiry_chk" id="inquiry2" ><label for="inquiry2"><span>이용약관</span>에 동의합니다.*</label></li>--%>
<%--					<li class="wd2 close_chk"><input type="checkbox" class="inquiry_chk" id="inquiry3" ><label for="inquiry3"><span>개인정보의 제3자 제공</span>에 관해 동의합니다.(선택)</label></li>--%>
<%--					<li class="wd2 close_chk"><input type="checkbox" class="inquiry_chk" id="inquiry4" ><label for="inquiry4"><span>개인정보 수집 및 이용</span>에 동의합니다.*</label></li>--%>
<%--					<li class="wd2 close_chk"><input type="checkbox" class="inquiry_chk" id="inquiry5" ><label for="inquiry5"><span>GSITM 및 이벤트 정보</span>를 수신합니다.(선택)</label></li>--%>
<%--					<li class="close_chk"><input type="checkbox" class="inquiry_chk" id="inquiry6" /><label for="inquiry6"><span>개인정보 해외이전*</span>에 동의합니다.</label></li>--%>
			</ul>
		</div>
		<!--개인정보수집 1102-->
		<div class="scroll_box">
			<!-- 1. 개인정보의 수집 및 이용 목적 -->
			<div class="apply_box">
				<dl class="apply">
					<dt>1. 개인정보의 수집 및 이용 목적</dt>
					<dd>수집한 개인정보는 회사관련 문의, 서비스 문의, 투자 문의, 채용 문의 등 고객문의에 대한 정보 제공 및 안내를 위해 이용됩니다.</dd>
				</dl>
				<ul class="apply">
					<li>&middot; 이름 : 고객 문의사항의 처리를 위한 이용자 식별</li>
					<li>&middot; 이메일주소 : 문의사항에 대한 답변 등 의사소통 경로 확보</li>
					<li>&middot; IP Address, 서비스 이용기록 등 : 서비스 이용과정에서 자동 생성되어 수집되는 정보  </li>
				</ul>
			</div>
			<!-- // 1. 개인정보의 수집 및 이용 목적 -->

			<!-- 2. 개인정보의 보유 및 이용기간 -->
			<div class="apply_box">
				<dl class="apply">
					<dt>2. 개인정보의 보유 및 이용기간</dt>
					<dd>개인정보 수집 및 이용 목적이 달성되면 개인정보취급방침 제6조(개인정보의 파기)에 따라 해당 정보를 지체 없이 파기합니다.</dd>
				</dl>
				<ul class="apply">
					<li>&middot; 개인정보 입력항목은 12개월간 보유함</li>
					<li>&middot; 이름 및 이메일주소의 경우 고객문의내역 관리를 위하여 36개월간 보관함</li>
					<li>&middot; 기타 개인정보의 경우 회원에게 개별적으로 사전 동의를 받아 보유함</li>
					<li>&middot; 성명과 이메일 정보에 대하여 파기를 원하는 개인은 webmaster@gsitm.com으로 요청 주시면 바로 처리하겠습니다.</li>
				</ul>
			</div>
			<!-- // 2. 개인정보의 보유 및 이용기간 -->

			<!-- 3. 개인정보 필수 수집 항목 및 수집 방법 -->
			<div class="apply_box">
				<dl class="apply">
					<dt>3. 개인정보 필수 수집 항목 및 수집 방법</dt>
					<dd>개인정보 수집 및 이용 목적이 달성되면 개인정보취급방침 제6조(개인정보의 파기)에 따라 해당 정보를 지체 없이 파기합니다.</dd>
				</dl>
				<ul class="apply">
					<li>&middot; 필수항목 : 이름, 이메일주소</li>
					<li>&middot; 입력하신 정보는 사전에 동의 받은 목적 외로는 사용하지 않으며 외부로 유출하지 않습니다.</li>
				</ul>
			</div>
			<!-- // 3. 개인정보 필수 수집 항목 및 수집 방법 -->

			<!-- 4. 개인정보 선택 수집 항목 및 수집방법 -->
			<div class="apply_box">
				<dl class="apply">
					<dt>4. 개인정보 선택 수집 항목 및 수집방법<span>(선택)</span></dt>
					<dd></dd>
				</dl>
				<ul class="apply">
					<li>&middot; 선택항목 : 전화번호</li>
					<li>&middot; 입력하신 정보는 사전에 동의 받은 목적 외로는 사용하지 않으며 외부로 유출하지 않습니다.</li>
				</ul>
			</div>
			<!-- // 4. 개인정보 선택 수집 항목 및 수집방법 -->
		</div>
		<!--개인정보수집 1102-->
		<div class="btn"><a href="#none">확인</a></div>
		</div>
		<div class="btn"><a href="#none" id="inquirySubmit">문의하기</a></div>
	</div>
</div>
<div class="all_shadow"></div> <!-- //그림자 -->
<!-- [e]제보 팝업 -->
</div>


<!-- [s]Alert 팝업 -->
<div class="layout_Pop alert" style="display:none;">
	<a href="#none" class="close"></a>
	<div class="cont" id="alertPop">
		<div class="btn"><a href="#none">확인</a></div>
	</div>
</div>
<div class="all_shadow"></div> <!-- //그림자 -->
<!-- [e]제보 팝업 -->

</script>
<!-- KR Footer End -->

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

