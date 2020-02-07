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
		<p class="img_tit"><img src="/common/images/svg/ethics.svg?date=<spring:eval expression="@environment.getProperty('build.date')" />" alt="ethice"/></p>
		<div class="conts">
			<ul class="location">
				<li><a href="/">Home</a></li>
				<li><a href="#none">Aboout GS ITM</a></li>
				<li><a href="#none">윤리경영</a></li>
			</ul>
		</div>
	</article>
	<!-- // location_wrap -->

		<article class="ethics_wrap">
			<!-- overview -->
			<div class="overview_wrap">
				<div class="conts">
					<h2>윤리경영</h2> <!-- // 국문일땐 노클래스, 영문일땐 클래스 eng -->
					<p class="txt blue">GS ITM은 경영활동의 의사결정 및 임직원들의 업무수행 기준이 되는 윤리규범을 제정하고 그 실천을 다짐합니다.</p>
					<p class="txt">GS ITM은 IT Service 분야에서 최적의 사업 포트폴리오를 구성하고 최대의 시너지 창출로 최고의 경쟁력을 갖춘 IT Leader로 성장할 것을 다짐합니다. 아울러 고객에게는 탁월한 서비스로 만족을 제공하고, 거래선 및 협력회사와의 공존공영을 이룰 것입니다. 임직원에게는 공정한 기회와 적극적 지원으로 성장을 제공하고, 주주에게는 탁월한 경영으로 주주가치 극대화를 실현하며, 사회에는 적극적 사회공헌 활동을 통하여 회사와 사회의 지속 가능한 성장/발전을 추구할 것입니다.</p>
					<p class="txt">GS ITM은 "유연성과 혁신 그리고 외적 성장"을 추구하되 위 "윤리규범 및 사회적 기대와 각종 법규" 를 존중하고 준수하고, 이에 Compliance Program을 정착하여 항상 옳은 행동을 할 수 있는 윤리적인 기업문화를 만들고 이를 유지하기 위해 노력합니다.</p>
				</div>
			</div>
			<!-- // overview -->

			<!-- tab_wrap -->
			<div class="tab_wrap">
				<div class="tab_before" id="tab"></div>
				<div class="tab_ly">
					<ul class="tab">
						<li class="current " data-tab="tab1"><p><a href="#tab">윤리규범</a></p></li>
						<li data-tab="tab2"><p><a href="#tab">상담제보</a></p></li>
					</ul>
				</div>
				<ul  class="tab_conts  about_eh">
					<li   id="tab1" class="tabcontent current">
						<div>
							<p class="txt blue">윤리규범</p>
							<dl class="ethics">
								<dt>제1장 고객만족</dt>
								<dd>경영고객이 회사의 이익과 성장의 기반임을 인식하고 고객이 원하는 참된 가치를 제공함으로써 고객만족을 실현한다.</dd>
							</dl>
							<ol class="ethics">
								<li>1. 고객의 의견을 항상 존중하고, 이를 경영활동의 최우선 판단기준으로 삼는다.</li>
								<li>2. 고객의 요구와 기대에 부응하는 최상의 제품과 서비스를 제공한다.</li>
								<li>3. 고객의 정보와 이익을 소중히 보호하고 고객과의 약속은 반드시 이행한다.</li>
							</ol>

							<dl class="ethics">
								<dt>제2장 협력회사와의 공존경영</dt>
								<dd>투명하고 공정한 거래를 통해 상호 신뢰와 협력관계를 구축함으로써 공동의 발전을 추구한다.</dd>
							</dl>
							<ol class="ethics">
								<li>1. 협력회사에게 공평한 거래 기회를 제공하고 합리적인 거래조건을 보장하여 동반자 관계로 성장한다.</li>
								<li>2. 협력회사와 상호 대등한 위치에서 공정하게 거래하며, 어떤 형태로든 우월적 지위를 이용한 부당한 행위를 하지 않는다.</li>
							</ol>

							<dl class="ethics">
								<dt>제3장 임직원 존중 및 기본윤리준수</dt>
								<dd>회사와 임직원은 상호 신뢰와 존중을 바탕으로 상호간의 성장과 발전을 위한 의무를 충실히 수행한다.</dd>
							</dl>
							<ol class="ethics">
								<li>1. 회사는 임직원 개개인을 독립된 인격체로 존중하고, 능력과 업적에 따라 공정하게 대우함으로써 자아실현의 장이 되도록 한다.</li>
								<li>2. 임직원간에 상호 존중하며, 공과 사를 명확히 구분하여 공정하고 투명하게 직무를 수행함으로써 주어진 사명을 완수한다.</li>
							</ol>

							<dl class="ethics">
								<dt>제4장 주주의 이익</dt>
								<dd>보호주주가 믿고 투자할 수 있는 효육적이고 투명한 경영활동을 통해 주주의 이익을 보호한다.</dd>
							</dl>
							<ol class="ethics">
								<li>1. 효율적인 경영을 통하여 건전한 이익을 실현함으로써 주주의 투자수익을 성실하게 보호한다.</li>
								<li>2. 회사에 대한 주주의 알 권리를 존중하고 필요한 정보를 적기에 진실하게 제공한다.</li>
							</ol>

							<dl class="ethics">
								<dt>제5장 국가와 사회에 대한 공헌</dt>
								<dd>기업시민으로서 국가 정책과 제반 법규를 존중하며, 사회적 책임을 다한다.</dd>
							</dl>
							<ol class="ethics">
								<li>1. 회사는 지속적인 고용창출과 조세의 성실한 납부로 국가발전에 기여한다.</li>
								<li>2. 지역사회와 함께 지속적인 발전을 위해 노력하며, 모두가 행복한 미래를 만드는 데 있어 선도적 역할을 한다.</li>
								<li>3. 자유경쟁 시장 질서와 사업을 영위하는 국내외 지역의 제반 법규를 준수하며 상거래 관습 및 문화를 존중한다.</li>
							</ol>
						</div>
					</li>
					<li   id="tab2" class="tabcontent">
						<div>
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
										<li>&middot; IP Address, 서비스 이용기록 등 : 서비스 이용과정에서 자동 생성되어 수집되는 정보  </li>
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
										<li>&middot; 성명과 이메일 정보에 대하여 파기를 원하는 개인은 webmaster@gsitm.com으로 요청 주시면 바로 처리하겠습니다.</li>
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
					<a href="#none" class="btn apply">제보하기</a> <!-- // 클릭시 팝업이 보입니다.-->
				</div>
					</li>
				</ul>
			</div>
			<!-- // tab_wrap -->
		</article>
	</section>
	<!-- [s]container -->

		<!-- [s]제보 팝업 -->
	<div class="layout_Pop apply">
		<a href="#none" class="close"></a>
		<div class="cont" id="alertApplyPop">
<%--			<p class="tit">제보가 접수되었습니다.</p>--%>
<%--			<p class="txt">--%>
<%--				<span class="block">제보내용이 성공적으로 제출 완료되었습니다.</span>--%>
<%--				<span class="block">고객님께서 입력하신 연락처로 최종결과를 알려드리도록 하겠습니다. </span>--%>
<%--				<span class="block">최종결과까지의 기간은 최소한 기일(7-10일)이 소요됩니다. </span>--%>
<%--				<span class="block">소중한 제보 감사합니다.</span>--%>
<%--			</p>--%>
			<div class="btn"><a href="#none">확인</a></div>
		</div>
	</div>
	<div class="all_shadow"></div> <!-- //그림자 -->
	<!-- [e]제보 팝업 -->
</div>
</body>
<script type="text/javascript" src="/common/js/customJS/apply.js?date=<spring:eval expression="@environment.getProperty('build.date')" />"></script>
<script type="text/javascript">


// $(function(){
// 	/* 서비스페이지만 존재합니다. tab 스크롤 스크립트입니다. */
// 	$(document).ready( function() {
// 		var tab = $('.tab_ly').offset();
// 		var tab_before = $('.tab_before').offset(); //탭 클릭 시 해더 돌려놓는 용도
// 		var tab_after = $('.tab_after').offset(); //탭 해더 돌려놓는 용도
// 		$(window).scroll(function() {
// 			if($(this).scrollTop() >= tab_before.top) {
// 				$('.gnb_wrap').removeClass('fixed');
// 			}
//
// 			if($(this).scrollTop() > tab.top) {
// 				$('.tab_ly').addClass('tab_fixed');
// 				$('.tab_ly').show();
// 				$('.gnb_wrap').removeClass('fixed');
// 			}
// 			else {
// 				$('.tab_ly').removeClass('tab_fixed');
// 			}
//
// 		});
// 	});
//
// //11-3 스크립트 변경
// $(function() {
// 			$('ul.tab li').click(function() {
// 				var activeTab = $(this).attr('data-tab');
// 				$('ul.tab li').removeClass('current');
// 				$('.tabcontent').removeClass('current');
// 				$(this).addClass('current');
// 				$('#' + activeTab).addClass('current');
// 			})
// 		});
//
//
//
// 	$('ul.tab li a').on('click', function(event){
// 		event.preventDefault();
// 		$('.gnb_wrap').removeClass('fixed');
// 		//$('html,body').animate({scrollTop:$(this.hash).offset().top}, 300);
// 	});
// });
</script>
</html>
