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
			<p class="img_tit"><img src="/common/images/common/tit_ethice.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="ethice"/></p>
			<div class="conts">
				<ul class="location">
					<li><a href="/">Home</a></li>
					<li><a href="#none">Aboout GS ITM</a></li>
					<li><a href="#none">윤리경영</a></li>
				</ul>
			</div>
		</article>
		<!-- // location_wrap -->

		<article class="apply_wrap">
			<!-- overview -->
			<div class="overview_wrap">
				<div class="conts">
					<h2 class="eng">윤리경영</h2> <!-- // 국문일땐 노클래스, 영문일땐 클래스 eng -->
					<p class="txt blue">GS ITM은 경영활동의 의사결정 및 임직원들의 업무수행 기준이 되는 윤리규범을 제정하고 그 실천을 다짐합니다.</p>
					<p class="txt">GS ITM은 IT Service 분야에서 최적의 사업 포트폴리오를 구성하고 최대의 시너지 창출로 최고의 경쟁력을 갖춘 IT Leader로 성장할 것을 다짐합니다. 아울러 고객에게는 탁월한 서비스로 만족을 제공하고, 거래선 및 협력회사와의 공존공영을 이룰 것입니다. 임직원에게는 공정한 기회와 적극적 지원으로 성장을 제공하고, 주주에게는 탁월한 경영으로 주주가치 극대화를 실현하며, 사회에는 적극적 사회공헌 활동을 통하여 회사와 사회의 지속 가능한 성장/발전을 추구할 것입니다.</p>
					<p class="txt">GS ITM은 "유연성과 혁신 그리고 외적 성장"을 추구하되 위 "윤리규범 및 사회적 기대와 각종 법규" 를 존중하고 준수하고, 이에 Compliance Program을 정착하여 항상 옳은 행동을 할 수 있는 윤리적인 기업문화를 만들고 이를 유지하기 위해 노력합니다.</p>
				</div>
			</div>
			<!-- // overview -->

			<!-- tab_wrap -->
			<div class="tab_wrap">
				<div class="tab_ly z_i">
					<ul class="tab wd5">
						<li><p><a href="/about/ethics/">윤리규범</a></p></li>
						<li class="on"><p><a href="/about/apply">상담제보</a></p></li>
					</ul>
				</div>
			
				<div class="tab_conts section">
					<p class="txt blue">상담제보 프로세스</p>
					<p class="txt">윤리경영 제보라인으로 제보하실 경우 아래의 절차를 거쳐 최종 결과를 알려 드리기 까지 최소한 기일(7-10일)이 소요되니 이점 양지하여 주시기 바랍니다.</p>
					<div class="img"><img src="/common/images/sub/img_about.png?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt=""/></div>
					<p class="txt">GS ITM은 귀하의 문의사항을 처리하기 위해 수집하는 개인정보의 취급에 대해 『정보통신망이용촉진 및 정보보호 등에 관한 법률』및 『개인정보보호법』에 따라 고지하며 동의를 구하고 있습니다. 
					홈페이지 하단의 개인정보취급방침에 보다 자세한 내용이 기재되어 있습니다.</p>
						
					<!-- apply_chk -->
					<div class="apply_chk">
						<dl class="ethics">
							<dt>개인정보의 수집 및 이용안내</dt>
							<dd><span class="block">㈜ 지에스아이티엠 (이하 ‘회사’)는 다음의 목적을 위하여 개인정보를 처리합니다.</span>
								개인정보는 다음의 목적 이외의 용도로 이용되지 않으며, 이용 목적이 변경된 경우에는 개인정보보호법 제18조에 따라 필요한 조치를 이행 하겠습니다.
							</dd>
						</dl>
						
						<!-- 1. 개인정보의 수집 및 이용 목적 -->
						<div class="apply_box">
							<dl class="apply">
								<dt>1. 개인정보의 수집 및 이용 목적</dt>
								<dd>수집한 개인정보는 회사관련 문의, 서비스 문의, 투자 문의, 채용 문의 등 고객문의에 대한 정보 제공 및 안내를 위해 이용됩니다.</dd>
							</dl>
							<ul class="apply">
								<li>&middot; 이름 : 고객 문의사항의 처리를 위한 이용자 식별</li>
								<li>&middot; 이메일주소 : 문의사항에 대한 답변 등 의사소통 경로 확보</li>
								<li>&middot; IP Address, 서비스 이용기록 등 : 서비스 이용과정에서 자동 생성되어 수집되는 정보  </li>
							</ul>
						</div>
						<div class="apply_box_chk"><input type="checkbox" id="apply1" /><label for="apply1">본인은 상기 기재된 개인정보 수집 및 이용내용에 동의합니다.<span>(필수)</span></label></div>
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
								<li>&middot; 성명과 이메일 정보에 대하여 파기를 원하는 개인은 webmaster@wooriat.com으로 요청 주시면 바로 처리하겠습니다.</li>
							</ul>
						</div>
						<div class="apply_box_chk"><input type="checkbox" id="apply2" /><label for="apply2">본인은 상기 기재된 개인정보 수집 및 이용내용에 동의합니다.<span>(필수)</span></label></div>
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
						<div class="apply_box_chk"><input type="checkbox" id="apply3" /><label for="apply3">본인은 상기 기재된 개인정보 수집 및 이용내용에 동의합니다.<span>(필수)</span></label></div>
						<!-- // 3. 개인정보 필수 수집 항목 및 수집 방법 -->
						
						<!-- 4. 개인정보 선택 수집 항목 및 수집방법 -->
						<div class="apply_box">
							<dl class="apply">
								<dt>4. 개인정보 선택 수집 항목 및 수집방법</dt>
								<dd></dd>
							</dl>
							<ul class="apply">
								<li>&middot; 선택항목 : 전화번호</li>
								<li>&middot; 입력하신 정보는 사전에 동의 받은 목적 외로는 사용하지 않으며 외부로 유출하지 않습니다.</li>
							</ul>
						</div>
						<div class="apply_box_chk"><input type="checkbox" id="apply4" /><label for="apply4">본인은 상기 기재된 개인정보 수집 및 이용내용에 동의합니다.<span>(필수)</span></label></div>
						<!-- // 4. 개인정보 선택 수집 항목 및 수집방법 -->
					</div>
					<!-- // apply_chk -->
				</div>
				
				<!-- tip-off -->
				<div class="tip-off_wrap">
					<div class="conts">
						<p class="tit">제보하기</p>

						<ul>
							<li class="wd3"><input type="text" id="reportNm" name="reportNm" placeholder="제보자 이름*" value=""/></li>
							<li class="wd3"><input type="text" id="phone" name="phone" placeholder="제보자 전화번호*" value=""/></li>
							<li class="wd3"><input type="text" id="email" name="email" placeholder="제보자 이메일*" value=""/></li>
						</ul>
						<ul class="md2">
							<li><input type="text" id="titl" name="titl" placeholder="제보할 내용 제목 *" value=""/></li>
						</ul>
						<ul>
							<li><textarea  id="reportCont" name="reportCont" placeholder="제보할 내용을  입력하세요.(500자) *"></textarea></li>
						</ul>

						<div class="file_wrap">
							<p>파일첨부</p>
							<div class="fileBox">
								<input type="text" class="fileName" readonly="readonly">
								<label for="uploadBtn" class="btn_file">찾아보기</label>
								<input type="file" name="attachFile"  id="uploadBtn" class="uploadBtn">
							</div>
							<span>첨부파일의 용량은 2MB를 넘을 수 없습니다.</span>
						</div>
					</div>
				</div>
				<!-- // tip-off -->
				<div class="btn_wrap">
					<a href="#none"  class="btn apply">제보하기</a> <!-- 클릭시 팝업이 보입니다. -->
				</div>
			</div>
			<!-- tab_wrap -->
		</article>
	</section>
	<!-- [s]container -->
	
	
	<!-- [s]제보 팝업 -->
	<div class="layout_Pop apply">
		<a href="#none" class="close"></a>
		<div class="cont" id="alertApplyPop">
			<!-- <p class="tit">제보가 접수되었습니다.</p>
			<p class="txt">
				<span class="block">제보내용이 성공적으로 제출 완료되었습니다.</span>
				<span class="block">고객님께서 입력하신 연락처로 최종결과를 알려드리도록 하겠습니다. </span>
				<span class="block">최종결과까지의 기간은 최소한 기일(7-10일)이 소요됩니다. </span>
				<span class="block">소중한 제보 감사합니다.</span>
			</p>  -->
			<div class="btn"><a href="#none">확인</a></div>
		</div>
		
	</div>
	<div class="all_shadow"></div> <!-- //그림자 -->
	<!-- [e]제보 팝업 -->
	

	
</div>
</body>
<%--<script type="text/javascript">--%>
<%--$('header').addClass("about");--%>
<%--$('header h1').text("Aboout GS ITM");--%>
<%--</script>--%>
<script>
	var langCd ="${langCd}";
</script>
</html>
<script type="text/javascript" src="/common/js/customJS/apply.js?date=<spring:eval expression="@environment.getProperty('build.date')" />"></script>
