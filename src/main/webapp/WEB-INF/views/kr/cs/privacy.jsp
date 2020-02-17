<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">

<!-- container -->
<div id="container" class="cs">
	<!-- 각 메뉴명 고유 클래스 삽입 -->
	<!-- title area -->
	<div class="title_area">
		<h3>개인정보처리방침</h3>
	</div>
	<!-- //title area -->
	<!-- lnb area -->
	<div class="lnb_area">
		<div class="lnb_wrap">
			<div class="loc">
				<span class="home"><span class="blind">홈</span></span>
				<span class="dep1">고객센터</span>
			</div>
			<div class="dep2">
				<a href="#none">개인정보처리방침</a>
				<ul class="dep_list">
					<li><a href="/cs/terms">약관공시</a></li>
					<li><a href="/cs/customer">고객문의</a></li>
					<li><a href="/cs/faq">신탁 FAQ</a></li>
					<li><a href="/cs/privacy">개인정보처리방침</a></li>
				</ul>
			</div>
			<div class="dep3">
				<ul>
					<li><a href="/cs/privacy" class="curr">개인정보처리방침</a></li>
					<li><a href="/cs/security">보안센터</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //lnb area -->
	<!-- content -->
	<div id="content">
		<div class="content_wrap">
			<h4>개인정보처리방침</h4>

			<div class="privacy-tab">
				<ul>
					<li class="privacy-tab__item"><a href="#tabs-1">고객정보취급방침</a></li>
					<li class="privacy-tab__item"><a href="#tabs-2">개인정보 처리방침</a></li>
					<li class="privacy-tab__item"><a href="#tabs-3">신용정보활용체제의 공시</a></li>
					<li class="privacy-tab__item"><a href="#tabs-4">개인정보의 처리 위탁 현황</a></li>
				</ul>
				<div id="tabs-1">
					<div class="privacy-tab__head">
						우리금융그룹을 아끼고 사랑해 주시는 고객여러분께 깊은 감사를 드립니다.<br />
						우리금융그룹은 금융지주회사법령에 의해 그룹사간에는 고객정보의 제공 및 이용이 가능하게 되어 있습니다.<br />
						이에 다음과 같이 안내하여 드리오니 참고하시기 바랍니다.
					</div>

					<h5>금융지주회사법 제48조의2(고객정보의 제공 및 관리)</h5>
					<ul>
						<li>
							① 금융지주회사등은 「금융실명거래 및 비밀보장에 관한법률」제4조 제1항 및「신용정보의 이용 및 보호에 관한 법률」제32조ㆍ제33조에도 불구하고
							「금융실명거래 및 비밀보장에 관한 법률」제4조에 따른 금융거래의 내용에 관한 정보 또는 자료(이하 "금융거래정보"라 한다) 및 「신용정보의 이용 및
							보호에 관한 법률」 제32조제1항에 따른 개인신용정보를 다음 각 호의 사항에 관하여 금융위원회가 정하는 방법과 절차 (이하 "고객정보제공절차"라 한다)에
							따라 그가 속하는 금융지주회사등에게 신용위험 관리 등 대통령령으로 정하는 내부 경영관리상 이용하게 할 목적으로 제공할 수 있다.
							<ol>
								<li>1. 제공할 수 있는 정보의 범위</li>
								<li>2. 고객정보의 암호화 등 처리방법</li>
								<li>3. 고객정보의 분리 보관</li>
								<li>4. 고객정보의 이용기간 및 이용목적</li>
								<li>5. 이용기간 경과 시 고객정보의 삭제</li>
								<li>6. 그 밖에 고객정보의 엄격한 관리를 위하여 대통령령으로 정하는 사항</li>
							</ol>
						</li>
						<li>
							② 금융지주회사의 자회사등인「자본시장과 금융투자업에 관한 법률」에 따른 투자매매업자 또는 투자중개업자는 해당 투자매매업자 또는 투자중개업자를 통하여
							증권을 매매하거나 매매하고자 하는 위탁자가 예탁한 금전 또는 증권에 관한 정보 중 다음 각 호의 어느 하나에 해당하는 정보(이하 "증권총액정보등"이라 한다)
							를 고객정보제공절차에 따라 그가 속하는 금융지주회사등에게 신용위험관리 등 대통령으로 정하는 내부 경영관리상 이용하게 할 목적으로 제공할 수 있다.
							<ol>
								<li>1. 예탁한 금전의 총액</li>
								<li>2. 예탁한 증권의 총액</li>
								<li>3. 예탁한 증권의 종류별 총액</li>
								<li>4. 그 밖에 제1호부터 제3호까지에 준하는 것으로서 금융위원회가 정하여 고시 하는 정보</li>
							</ol>
						</li>
					</ul>

					<h5>I. 제공되는 고객정보의 종류</h5>
					<ul>
						<li>1. 『금융실명거래 및 비밀보장에 관한 법률』 제4조에 따른 금융거래의 내용에 관한 정보 또는 자료</li>
						<li>2. 『신용정보의 이용 및 보호에 관한 법률』 제32조 제1항에 따른 개인신용정보</li>
						<li>3. 『자본시장과 금융투자업에 관한 법률』에 따른 투자매매업자 또는 투자중개업자를 통하여 증권을 매매하거나 매매하고자 하는 위탁자가 예탁한 금전 또는
							증권에 관한 정보 중 다음 각 목의 어느 하나에 해당하는 정보
							<ol>
								<li>가. 예탁한 금전의 총액</li>
								<li>나. 예탁한 증권의 총액</li>
								<li>다. 예탁한 증권의 종류별 총액</li>
								<li>라. 채무증권의 종류별 총액</li>
								<li>마. 수익증권으로서 『자본시장과 금융투자업에 관한 법률』 제229조 각 호의 구분에 따른 집합투자기구의 종류별 총액</li>
								<li>바. 예탁한 증권의 총액을 기준으로 한 위탁자의 평균 증권 보유기간 및 일정기간 동안의 평균 거래회수</li>
							</ol>
						</li>
						</li>
					</ul>

					<h5>II. 고객정보의 제공처</h5>
					<p class="privacy-tab__text">
						우리금융그룹 중 금융지주회사법령에 의한 고객정보의 제공 및 이용이 가능한 회사는 우리금융지주, 우리은행, 우리카드, 우리종합금융, 우리에프아이에스,
						우리신용정보, 우리프라이빗에퀴티자산운용, 우리자산운용, 우리글로벌자산운용 입니다.
					</p>

					<h5>III. 고객정보의 보호에 관한 내부방침</h5>
					<p class="privacy-tab__text">
						우리금융그룹에서는 고객 여러분의 고객정보를 최대한 안전하게 관리하기 위해 그룹사간 정보 제공 및 이용이 아래와 같이 엄격한 절차 와 관리·감독하에
						이루어지도록 하였습니다.
					</p>

					<h5>III. 고객정보의 보호에 관한 내부방침</h5>
					<p class="privacy-tab__text">
						우리금융그룹에서는 고객 여러분의 고객정보를 최대한 안전하게 관리하기 위해 그룹사간 정보 제공 및 이용이 아래와 같이 엄격한 절차 와 관리·감독하에
						이루어지도록 하였습니다.
					</p>
					<ul>
						<li>① 고객정보의 제공 및 이용은 내부 경영관리 목적으로만 이용되도록 하였습니다.</li>
						<li>② 그룹사의 임원 1인 이상을 고객정보관리인으로 선임하여 고객정보의 제공 및 이용에 관련된 일체의 책임을 지도록 하였습니다.</li>
						<li>③ 그룹사별로 소관부서 및 담당자를 지정하여 체계적이고 집중적인 관리를 도모하였습니다.</li>
						<li>④ 고객정보의 요청 및 제공시 서면 또는 전자결재시스템을 통하여 고객정보관리인의 결재를 받은 후 요청 및 제공하도록 하는 등 업무 프로세스의 정형화를
							통해 엄격한 관리 및 통제가 이루어지도록 하였습니다.</li>
						<li>⑤ 그룹사간 고객정보의 요청 및 제공, 이용 등과 관련한 업무에 대하여 금융지주회사 고객정보관리인에게 총괄관리 역할을 부여함으로써 고객정보의 보호에
							만전을 기하였습니다.</li>
						<li>⑥ 고객정보의 제공 및 이용 관련 취급방침의 제·개정시 지체없이 그 내용을 기존의 고객에게 통지하거나 일간지에 공고하고, 각 영업점(본점 해당부서 포함),
							그리고 각 그룹사 홈페이지 등에 게시하는 등 고객 공지 의무에 최선을 다 할 것입니다.</li>
						<li>⑦ 고객정보를 제공하는 경우 고객정보조회시스템을 구축하고 관련 법령에 따라 통지하는 등 고객의 자기정보 접근권을 제공하는데 최선을 다 할 것입니다.</li>
						<li>⑧ 위법·부당한 방법으로 인해 피해를 입게 된 고객 분을 위해 적정한 보상 및 처리가 이루어지도록 민원사항에 대한 안내 및 상담, 처리, 그리고 결과 및 통지
							등 민원처리 관련 일체의 업무를 수행할 소관 부서를 그룹사마다 두었습니다. 그리고 소관부서 외 금융감독원 분 쟁조정제도를 통하여 구제받으실 수
							있도록 하였습니다.</li>
						<li>⑨ 고객정보 제공 및 관리에 대한 권한이 부여된 자만 고객정보에 접근 하고, 고객정보의 송·수신, 보관 등에 있어 암호화하여 관리하며, 천재지변 및
							외부로부터의 공격·침입 등 불가항력에 대비한 보안시스템을 구축하였고, 고객정보와 관련된 임직원에 대하여는 정기적으로 보안 교육을 실시하는 등 철저한
							보안 대책을 마련하고 있습니다.</li>
					</ul>
					<p class="privacy-tab__text">
						우리금융그룹은 그룹사간 고객정보의 제공 및 이용을 허용한 것이 금융서비스의 질을 높이고, 나아가 우리나라 금융산업을 선진화시키기 위한 조치임을
						명심하고 고객정보의 교류를 토대로 고객 여러분들께 보다 편리하고 질 높은 선진금융서비스를 제공할 것을 약속드리며 , 고객 여러분의 고객정보의 보호 및
						엄격한 관리를 위해 최선을 다 할 것입니다 .
					</p>

					<h5>III. 고객정보의 보호에 관한 내부방침</h5>
					<p class="privacy-tab__text">
						우리금융그룹에서는 고객 여러분의 고객정보를 최대한 안전하게 관리하기 위해 그룹사간 정보 제공 및 이용이 아래와 같이 엄격한 절차 와 관리·감독하에
						이루어지도록 하였습니다.
					</p>
					<ul>
						<li>① 고객정보의 제공 및 이용은 내부 경영관리 목적으로만 이용되도록 하였습니다.</li>
						<li>② 그룹사의 임원 1인 이상을 고객정보관리인으로 선임하여 고객정보의 제공 및 이용에 관련된 일체의 책임을 지도록 하였습니다.</li>
						<li>③ 그룹사별로 소관부서 및 담당자를 지정하여 체계적이고 집중적인 관리를 도모하였습니다.</li>
						<li>④ 고객정보의 요청 및 제공시 서면 또는 전자결재시스템을 통하여 고객정보관리인의 결재를 받은 후 요청 및 제공하도록 하는 등 업무 프로세스의 정형화를
							통해 엄격한 관리 및 통제가 이루어지도록 하였습니다.</li>
						<li>⑤ 그룹사간 고객정보의 요청 및 제공, 이용 등과 관련한 업무에 대하여 금융지주회사 고객정보관리인에게 총괄관리 역할을 부여함으로써 고객정보의 보호에
							만전을 기하였습니다.</li>
						<li>⑥ 고객정보의 제공 및 이용 관련 취급방침의 제·개정시 지체없이 그 내용을 기존의 고객에게 통지하거나 일간지에 공고하고, 각 영업점(본점 해당부서 포함),
							그리고 각 그룹사 홈페이지 등에 게시하는 등 고객 공지 의무에 최선을 다 할 것입니다.</li>
						<li>⑦ 고객정보를 제공하는 경우 고객정보조회시스템을 구축하고 관련 법령에 따라 통지하는 등 고객의 자기정보 접근권을 제공하는데 최선을 다 할 것입니다.</li>
						<li>⑧ 위법·부당한 방법으로 인해 피해를 입게 된 고객 분을 위해 적정한 보상 및 처리가 이루어지도록 민원사항에 대한 안내 및 상담, 처리, 그리고 결과 및 통지
							등 민원처리 관련 일체의 업무를 수행할 소관 부서를 그룹사마다 두었습니다. 그리고 소관부서 외 금융감독원 분 쟁조정제도를 통하여 구제받으실 수
							있도록 하였습니다.</li>
						<li>⑨ 고객정보 제공 및 관리에 대한 권한이 부여된 자만 고객정보에 접근 하고, 고객정보의 송·수신, 보관 등에 있어 암호화하여 관리하며, 천재지변 및
							외부로부터의 공격·침입 등 불가항력에 대비한 보안시스템을 구축하였고, 고객정보와 관련된 임직원에 대하여는 정기적으로 보안 교육을 실시하는 등 철저한
							보안 대책을 마련하고 있습니다.</li>
					</ul>
					<p class="privacy-tab__text">
						우리금융그룹은 그룹사간 고객정보의 제공 및 이용을 허용한 것이 금융서비스의 질을 높이고, 나아가 우리나라 금융산업을 선진화시키기 위한 조치임을
						명심하고 고객정보의 교류를 토대로 고객 여러분들께 보다 편리하고 질 높은 선진금융서비스를 제공할 것을 약속드리며 , 고객 여러분의 고객정보의 보호 및
						엄격한 관리를 위해 최선을 다 할 것입니다 .
					</p>

					<h5>우리금융그룹</h5>
					<div class="privacy-tab__group">
						<ul>
							<li>· 우리금융지주 고객정보관리인</li>
							<li>· 우리은행 고객정보관리인</li>
							<li>· 우리카드 고객정보관리인</li>
							<li>· 리종합금융 고객정보관리인</li>
							<li>· 우리에프아이에스 고객정보관리인</li>
							<li>· 인우리신용정보 고객정보관리인</li>
							<li>· 우리PE자산운용 고객정보관리인</li>
							<li>· 우리자산운용 고객정보관리인</li>
							<li>· 우리글로벌자산운용 고객정보관리인</li>
							<li>· 우리자산신탁 고객정보관리인</li>
						</ul>
					</div>
				</div>
				<div id="tabs-2">
					<div class="privacy-tab__head">
						<ul class="fir">
							<li><a href="#p_link1">1. 총칙 </a></li>
							<li><a href="#p_link2">2. 개인정보의 수집 및 이용목적 </a></li>
							<li><a href="#p_link3">3. 개인정보의 수집항목 및 수집방법 </a></li>
							<li><a href="#p_link4">4. 개인정보 수집에 대한 동의 </a></li>
							<li><a href="#p_link5">5. 목적외 사용 및 제3자에 대한 제공 </a></li>
							<li><a href="#p_link6">6. 개인정보의 보유 및 이용기간, 개인정보의 파기절차 및 방법 </a></li>
							<li><a href="#p_link7">7. 개인정보의 안정성 확보를 위한 기술적 대책 </a></li>
							<li><a href="#p_link8">8. 링크 사이트</a></li>
							<li><a href="#p_link9">9. 이용자의 권리·의무와 그 행사방법 </a></li>
						</ul>
						<ul>
							<li><a href="#p_link10">10. 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항</a></li>
							<li><a href="#p_link11">11. 의견수렴 및 불만처리 </a></li>
							<li><a href="#p_link12">12. 개인정보 열람 청구</a></li>
							<li><a href="#p_link13">13. 아동의 개인정보보호 </a></li>
							<li><a href="#p_link14">14. 영상정보처리기기(CCTV) 운영·관리 방침 </a></li>
							<li><a href="#p_link15">15.개인정보 관리책임자 및 민원서비스 </a></li>
							<li><a href="#p_link16">16. 고지의 의무 </a></li>
						</ul>
					</div>
					<div class="protec_cn">
						<h5 id="p_link1">1.총칙</h5>
						<ul>
							<li>① 우리자산신탁(주)는 귀하의 개인정보보호를 매우 중요시하며, 『정보통신망이용촉진및정보보호등에관한법률』 및 『개인정보보호법』상의 개인정보보호 규정을 준수하고 있습니다. 우리자산신탁(주)는 개인정보처리방침을 통하여 귀하께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. </li>
							<li>② 우리자산신탁(주)는 개인정보처리방침을 홈페이지 첫 화면에 공개함으로써 귀하께서 언제나 용이하게 보실 수 있도록 조치하고 있습니다. </li>
							<li>③ 우리자산신탁(주)는 개인정보처리방침의 지속적인 개선을 위하여 개정하는데 필요한 절차를 정하고 있습니다. 그리고 개인정보처리방침을 개정하는 경우 버전번호 등을 부여하여 개정된 사항을 귀하께서 쉽게 알아볼 수 있도록 하고 있습니다. </li>
						</ul>

						<h5 id="p_link2">2.개인정보의 수집 및 이용목적</h5>
						<ul>
							<li>우리자산신탁(주)는 이용자 동의를 통한 개인정보 수집의 경우 다음과 같은 목적으로 개인정보를 활용하며 이를 변경할 시에는 관련 법령 상 허용되는 경우가 아닌 한 사전동의를 구할 예정입니다.
								<ul>
									<li>ㆍ [분양계약/납입조회]</li>
									<li> = 분양계약자 본인 확인 및 분양계약 관련 정보 제공</li>
									<li>ㆍ [고객민원접수]</li>
									<li>= 고객 민원처리</li>
								</ul>
							</li>
						</ul>

						<h5 id="p_link3">3.개인정보의 수집항목 및 수집방법</h5>
						<ul>
							<li>① 개인정보의 수집항목
								<ul>
									<li>ㆍ [분양계약/납입조회]</li>
									<li> = 성명, 생년월일 및 남녀 구분 1자리</li>
									<li>ㆍ [고객민원접수]</li>
									<li> = 성명, 비밀번호</li>
								</ul>
							</li>
							<li>당사 홈페이지는 회원제 운영이 아니며, 고객민원 처리를 위한 최소한의 정보만 수집합니다. <br>
								또한, 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지,정치적 성향 및 범죄기록, 건강상태 및 성생활 등)는 수집하지 않습니다.
							</li>
							<li>② 개인정보의 수집방법<br>
								우리자산신탁(주)는 홈페이지 상 개인정보 입력란에 이용자가 직접 입력하는 방식으로 개인정보를 수집합니다. </li>
						</ul>

						<h5 id="p_link4">4.개인정보 수집에 대한 동의</h5>
						<ul>
							<li>우리자산신탁(주)는 귀하께서 우리자산신탁(주)의 개인정보처리방침 또는 이용약관의 내용에 대해 「동의함」버튼 또는 「동의안함」버튼을 클릭할 수 있는 절차를 마련하여, 「동의함」버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 봅니다. 또한, 「동의안함」를 클릭 할 경우 온라인 상으로는 서비스 이용이 불가능 하며 우리자산신탁(주)에 직접 방문이나 서면, 유선 등의 별도 절차에 따를 경우 이용 가능합니다. </li>
						</ul>

						<h5 id="p_link5">5.목적외 사용 및 제3자에 대한 제공 </h5>
						<ul>
							<li>① 우리자산신탁(주)는 귀하의 개인정보를 &lt;개인정보의 수집 및 이용목적&gt; 에서 고지한 범위내에서 사용하며, 동 범위를 초과하여 이용하거나 타인 또는 타기업·기관에 제공하지 않습니다. </li>
							<li>② 그러나 보다 나은 서비스 제공을 위하여 귀하의 개인정보를 제휴사에게 제공하거나 또는 제휴사와 공유할 수 있습니다. 개인정보를 제공하거나 공유할 경우에는 사전에 귀하께 제휴사가 누구인지, 제공 또는 공유되는 개인정보항목이 무엇인지, 왜 그러한 개인정보가 제공되거나 공유되어야 하는지, 그리고 언제까지 어떻게 보호·관리되는지에 대해 개별적으로 전자우편 및 서면을 통해 고지하여 동의를 구하는 절차를 거치게 되며, 귀하께서 동의하지 않는 경우에는 제휴사에게 제공하거나 제휴사와 공유하지 않습니다. </li>
							<li>③ 다음은 예외로 합니다.
								<ul>
									<li>ㆍ 관계법령에 의하여 수사상의 목적으로 관계기관으로부터의 요구가 있을 경우 </li>
									<li>ㆍ 통계작성·학술연구나 시장조사를 위하여 특정 개인을 식별할 수 없는 형태로 광고주·협력사나 연구단체 등에 제공하는 경우</li>
									<li>ㆍ 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우 </li>
									<li>ㆍ 정보통신윤리위원회의 요청이 있는 경우 </li>
								</ul>
							</li>
						</ul>

						<h5 id="p_link6">6.개인정보의 보유 및 이용기간, 개인정보의 파기절차 및 방법 </h5>
						<ul>
							<li>① 귀하의 개인정보는 다음과 같이 개인정보의 수집목적 또는 제공받은 목적이 달성되면 파기절차 및 방법에 따라 처리됩니다. 단, 상법 등 관련법령의 규정에 의하여 다음과 같이 거래 관련 권리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우에는 일정기간 보유합니다. <br><br>
								<ul>
									<li>ㆍ 분양예약/납입조회(홈페이지)의 경우 서비스 이용 완료 즉시 삭제(쿠키형태로도 보관하지 않음)</li>
									<li>ㆍ 고객민원접수 및 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년(개인정보는 제외)</li>
									<li>ㆍ 계약 및 청약철회 (5년)</li>
									<li>ㆍ 채용을 위한 지원자의 개인정보는 해당 채용기간 동안 이용되며 채용종료 후 당사 문서 규정에 따른 보존기간 동안 보유합니다.</li>
								</ul>
							</li>
							<li>② 파기절차 및 방법
								<ul>
									<li>우리자산신탁㈜는 개인정보 보유 및 처리가 불필요한 것으로 인정되는 날로부터 지체 없이 그 개인정보를 다음과 같은 방법으로 파기합니다.</li>
									<li>ㆍ 전자적 파일 형태 : 복원이 불가능한 방법으로 영구 삭제</li>
									<li>ㆍ 기록된 출력물, 서면, 그 밖의 기록매체 : 파쇄 또는 소각 </li>
								</ul>
							</li>
						</ul>

						<h5 id="p_link7">7.개인정보의 안정성 확보를 위한 기술적 대책 </h5>
						<ul>
							<li>① 우리자산신탁(주)는 백신프로그램을 이용하여 컴퓨터바이러스에 의한 피해를 방지하기 위한 조치를 취하고 있습니다. 백신프로그램은 주기적으로 업데이트되며 갑작스런 바이러스가 출현할 경우 백신이 나오는 즉시 이를 제공함으로써 개인정보가 침해되는 것을 방지하고 있습니다. </li>
							<li>② 우리자산신탁(주)는 고객의 개인정보(고유식별번호, 비밀번호) 유출에 대비 DB를 암호화 하여 저장, 관리되며 암호알고리즘을 이용하여 네트워크 상의 개인정보를 안전하게 전송할 수 있는 보안장치(SSL)를 채택하고 있습니다. </li>
							<li>③ 해킹 등에 의해 귀하의 개인정보가 유출되는 것을 방지하기 위해, 외부로부터의 침입을 차단하는 침입탐지시스템(방화벽, IPS 등)을 설치,운영하고 있으며, 최신 방범패턴을 신속하게 업데이트 하고 있습니다.</li>
							<li>④ 또한, 위와 같은 시스템들은 외부로부터의 접근이 통제된 구역에 보관·운영하고 있으며, 개인정보를 처리하는 시스템에 대한 접근권한을 최소화 하여 권한을 부여하고 있습니다.</li>
						</ul>

						<h5 id="p_link8">8.링크 사이트</h5>
						<ul>
							<li>우리자산신탁㈜는 귀하께 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 우리자산신탁㈜는 외부사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다. 우리자산신탁㈜가 포함하고 있는 링크를 클릭(click)하여 타 사이트(site)의 페이지로 옮겨갈 경우 해당 사이트의 개인정보보호정책은 우리자산신탁㈜와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다. </li>
						</ul>

						<h5 id="p_link9">9.이용자의 권리·의무와 그 행사방법</h5>
						<ul>
							<li>① 귀하는 개인정보를 보호받을 권리와 함께 스스로를 보호하고 타인의 정보를 침해하지 않을 의무도 가지고 있습니다. 비밀번호를 포함한 귀하의 개인정보가 유출되지 않도록 조심하시고 게시물을 포함한 타인의 개인정보를 훼손하지 않도록 유의해 주십시오.</li>
							<li>② 이용자는 열람한 개인정보의 내용이 사실과 다르거나 확인할 수 없는 개인정보에 대하여 당사에 정정 또는 삭제를 요구할 수 있습니다. 다만, 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 삭제를 요구할 수 없습니다.</li>
							<li>③ 이용자는 당사에 자신의 개인정보 처리 정지를 요구할 수 있습니다. 다만, 아래의 경우는 당사가 그 사유를 이용자에게 알리고, 처리정지 요구를 거절할 수 있습니다.
								<ul>
									<li>ㆍ 법률에 특별한 규정이 있거나 법령상 의무를 준수하기 위하여 불가피한 경우</li>
									<li>ㆍ 다른 사람의 생명,신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가 있는 경우</li>
									<li>ㆍ 개인정보를 처리하지 아니하면 이용자와 약정한 서비스를 제공하지 못하는 등 계약의 이행이 곤란한 경우로서 이용자가 그 계약의 해지 의사를 명확하게 밝히지 아니한 경우</li>
								</ul>
							</li>
						</ul>

						<h5 id="p_link10">10.개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항</h5>
						<ul>
							<p>우리자산신탁(주)는 귀하의 정보를 수시로 저장하고 찾아내는 '쿠키(cookie)' 등을 운용합니다. 쿠키란 웹사이트를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다. </p>

							우리자산신탁(주)는 다음과 같은 목적을 위해 쿠키를 사용합니다.<br><br>

							<li>① 쿠키 등 사용 목적
								<ul>
									<li>ㆍ 회원과 비회원의 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스 제공</li>
									<li>ㆍ 귀하는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 귀하는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.</li>
								</ul>
							</li>
							<li>② 쿠키 설정 거부 방법
								<ul>
									<li>ㆍ 쿠키 설정을 거부하는 방법으로는 회원님이 사용하시는 웹 브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다.</li>
									<li>ㆍ 설정방법 예(인터넷 익스플로어의 경우) : 웹 브라우저 상단의 도구 &gt; 인터넷 옵션 &gt; 개인정보</li>
									<li>ㆍ 단, 귀하께서 쿠키 설치를 거부하였을 경우 서비스 제공에 어려움이 있을 수 있습니다.</li>
								</ul>
							</li>
						</ul>
       
						<h5 id="p_link11">11.의견수렴 및 불만처리 </h5>
						<p>우리자산신탁(주)는 개인정보보호와 관련하여 귀하가 의견과 불만을 제기할 수 있는 창구를 개설하고 있습니다. 개인정보와 관련한 불만이 있으신 분은 우리자산신탁(주)의 개인정보 관리책임자에게 의견을 주시면 접수 즉시 조치하여 처리결과를 통보해 드립니다.</p>

						<h5 id="p_link12">12.아동의 개인정보보호 </h5>
						<p>만14세 미만 아동의 법정대리인은 아동의 개인정보의 열람, 정정, 동의철회를 요청할 수 있으며, 이러한 요청이 있을 우리자산신탁(주)는 지체없이 필요한 조치를 취합니다. </p>

						<h5 id="p_link13">13.개인정보 열람 청구 </h5>
						<ul>
							<li>① 고객 본인의 개인정보 이용 및 제3자 제공 현황에 대한 열람 요청은 방문, 전화, 팩스, 고객민원접수 게시판을 통하여 요청할 수 있습니다.<br><br>
								<ul>
									<li>ㆍ 전화번호 : 02-6202-3000</li>
									<li>ㆍ 팩스 : 02-6202-3010</li>
									<li>ㆍ <a href="/custom/CQA/QA.asp">고객민원접수게시판 바로가기</a></li>
								</ul>
							</li>
							<li>② 요청 후 「 개인정보(□열람 □정정·삭제 □처리정지 ) 요구서 」 제출 및 보인 확인 철자를 거처 본인의 개인정보 이용 및 제공 현황에 대해 통지해 드립니다.<br><br>
								<ul>
									<li>ㆍ <a href=“http://images.wooriat.com/Memeber/2014_Privercy_Request.pdf"><img src="/images/common/pdf.gif">요구서(PDF) 다운로드</a></li>
									<li>ㆍ <a href=“http://images.wooriat.com/Memeber/2014_Privercy_Request.docx"><img src="/images/common/doc.gif">요구서(DOC) 다운로드</a></li>
								</ul>
							</li>
						</ul>
						<h5 id="p_link14">14.영상정보처리기기(CCTV) 운영·관리 방침</h5>
						<p>우리자산신탁(주)는 영상정보처리기기 운영·관리 방침을 통해 처리되는 영상정보가 어떠한 용도와 방식으로 이용·관리되고 있는지 알려드립니다.</p>
						<ul>
							<li>① 영상정보처리기기의 설치 근거 및 설치 목적<br>
								우리자산신탁(주)는 개인정보보호법 제25조 제1항에 따라 다음과 같은 목적으로 영상정보처리기기(CCTV)를 설치·운영 합니다.<br><br>
								<ul>
									<li> ㆍ 시설의 보호 및 보안</li>
								</ul>
							</li>
							<li>② 설치 대수, 설치 위치 및 촬영범위<br><br>
								<ul>
									<li>ㆍ 본사 20층(7대)</li>
									<li>1) 출입문(출입문 방향 촬영)</li>
									<li>2) 업무공간(직원 업무공간 촬영)</li>
									<li>3) 전산실(전산실 내부 촬영)</li>
								</ul>
								<br>
								<ul>
									<li>ㆍ 본사 19층 (5대)</li>
									<li>1) 출입문(출입문 및 업무공간 촬영)</li>
									<li>2) 업무공간(직원 업무공간 촬영)</li>
								</ul>
							</li>
							<li>③ 안내판 부착 장소<br>
								본사 20층 출입문, 19층 출입문, 20층 업무공간 출입문, 전산실 출입문
							</li>
							<li>④ 관리책임자 및 접근권한자, 유지보수책임자<br>
								귀하의 영상정보를 보호하고 개인영상정보와 관련한 불만을 처리하기 위하여 아래와 같이 개인영상정보 보호책임자를 두고 있습니다.
								<ul>
									<li>ㆍ 관리 책임자 및 유지보수 책임자 : 경영지원팀 보안담당책임자 (02-6202-5137)</li>
									<li>ㆍ 접근 권한자 : 경영지원팀 보안담당 부서원 (02-6202-3097)</li>
								</ul>
							</li>
							<li>⑤ 영상정보의 촬영시간, 보관기간, 보관장소 및 처리방법<br>
								24시간 촬영하며, 촬영일로부터 30일 동안 전산실 내에 보관 하고 관리책임자가 개인영상정보의 목적외 이용, 제3자 제공, 파기, 열람 등 요구에 관한 사항을 기록·관리합니다. 또한, 보관기간 만료시 자동 삭제 방법으로 영구 삭제(출력물의 경우 파쇄 또는 소각)합니다.</li>
							<li>⑥ 개인영상정보의 확인 방법 및 장소에 관한 사항<br>
								영상정보 관리책임자에게 미리 연락하고 우리자산신탁(주) 20층을 방문하시면 승인 결정여부에 따라 확인 가능합니다.</li>
							<li>⑦ 정보주체의 영상정보 열람 등 요구에 대한 조치<br>
								귀하는 개인영상정보에 관하여 열람 또는 존재확인·삭제를 원하는 경우 언제든지 영상정보열람청구서 등 서식을 작성 관리책임자에게 요구하실 수 있습니다. 단, 귀하가 촬영된 개인영상정보 및 명백히 정보주체의 급박한 생명, 신체, 재산의 이익을 위하여 필요한 개인영상정보에 한정됩니다.
								본 기관은 개인영상정보에 관하여 열람 또는 존재확인·삭제를 요구한 경우 지체없이 필요한 조치를 하겠습니다.</li>
							<li>⑧ 영상정보의 안전성 확보조치<br>
								우리자산신탁(주)는 개인영상정보보호를 위한 관리적 대책으로서 개인정보에 대한 접근 권한을 최소화하고 있고, 개인영상정보의 위·변조 방지를 위하여 개인영상정보의 생성 일시, 열람 시 열람 목적·열람자·열람 일시 등을 기록하여 관리하고 있습니다. 이 외에도 개인영상정보의 안전한 물리적 보관을 위하여 잠금장치를 설치하고 있습니다.</li>
							<li>⑨ 영상정보의 열람 및 출입통제 <br>
								우리자산신탁(주)는 영상정보기기의 장소 출입 및 녹화기기작동은 관리책임자 및 접근권한자로 하며, 권한이 부여된 자 이외의 출입을 통제하고 있습니다.</li>
						</ul>


						<h5 id="p_link15">15.개인정보 관리책임자 및 민원서비스 </h5>
						<ul>
							<li>우리자산신탁(주)는 개인정보에 대한 의견수렴 및 불만처리를 담당하는 개인정보 관리책임자를 지정하고 있습니다. 개인정보 관리책임자는 다음과 같습니다. </li>
							<li>
								<ul>
									<li>ㆍ 고객서비스담당 부서 : 경영지원본부</li>
									<li>ㆍ 개인정보관리책임자 : 경영지원본부장</li>
									<li>ㆍ 전화번호 : 02-6202-3000 </li>
									<li>ㆍ 팩스번호 : 02-6202-3010 </li>
									<li>ㆍ E-mail : <a href="mailto:webplanner@wooriat.com" target="_blank" title="새창 열림">webplanner@wooriat.com</a></li>
								</ul>
							</li>
							<li>귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다. 회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다. 기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.</li>
							<li>
								<ul>
									<li>① 개인분쟁조정위원회 (www.1336.or.kr/1336)</li>
									<li>② 정보보호마크인증위원회 (www.eprivacy.or.kr/02-580-0533~4)</li>
									<li>③ 대검찰청 인터넷범죄수사센터 (http://icic.sppo.go.kr/02-3480-3600)</li>
									<li>④ 경찰청 사이버테러대응센터 (www.ctrc.go.kr/02-392-0330)</li>
								</ul>
							</li>
						</ul>

						<h5 id="p_link16">16.고지의 의무</h5>
						<p>현 개인정보처리방침은 2012년 6월 20일에 제정되었으며 정부의 정책 또는 서비스, 보안기술상의 변경필요성에 따라 내용의 추가·삭제 및 수정이 있을 시에는 개정 최소 10일 전부터 홈페이지의 '공지'란을 통해 고지할 것입니다. </p>
						<br><br>
						<ul class="last">
							<li class="pt_10"><br>이상의 변경된 우리자산신탁(주) 개인정보처리방침은 <br><br>
								<ul>
									<li>수정 및 추가 : 2013년 5월 14일</li>
									<li>시&nbsp;&nbsp;&nbsp;&nbsp;행&nbsp;&nbsp;&nbsp;&nbsp;일 : 2013년 5월 14일</li>
								</ul>
							</li>
						</ul>

					</div>
				</div>
				<div id="tabs-3">
					<div class="protec_cn">
						<h5 id="p_link1">1.관리하는 신용정보의 이용목적 및 종류</h5>
						<ul>
							<li>① 이용목적</li>
						</ul>
						<ul>
							<li>
								ㆍ 해당 신용정보 주체가 신청한 금융거래등 상거래 설정 및 유지여부 판단<br>
								ㆍ 채권추심<br>
								ㆍ 마케팅<br>
								ㆍ 주택 및 상가 등 건축물의 청약, 분양 및 입주관련 업무<br>
								ㆍ 세무신고대행 등 부가서비스의 체결 및 유지<br>
								ㆍ 기타 동법 및 다른 법률의 규정에서 정한 경우<br>
							</li>
						</ul>

						<ul>
							<li>② 신용정보의 종류</li>
						</ul>
						<ul>
							<li>
								ㆍ 식별정보 <br>
								개인의 성명 및 주민등록번호(외국인의 경우 외국인등록번호, 재외동포의 경우 국내거소 신고번호, 외국인등록번호 또는 국내거소신고번호가 없는 경우 외국인, 재외동포 신용정보 등록번호), 개인기업 및 법인의 상호, 사업자 및 법인등록번호, 대표자 성명 등
							</li>
						</ul>
						<ul>
							<li>
								ㆍ 신용거래정보 <br>
								&nbsp;&nbsp;&nbsp;- 개인신용거래정보<br>
								&nbsp;&nbsp;&nbsp; 대출, 채무보증 및 신용카드 현금서비스현황, 신용카드 발급 및 해지사실, 연체정보, 대위변제대지급정보, 어음 <br> &nbsp;&nbsp;&nbsp; 및 수표 부도정보 등<br>
								&nbsp;&nbsp;&nbsp;- 기업신용거래정보 신용카드 발급 및 해지사실, 연체정보, 대위변제 및 지급정보, 어음 및 수표 부도정보, 대출<br> &nbsp;&nbsp;&nbsp; 및 지급보증 등 신용공여현황 등</li>
						</ul>
						<ul>
							<li>
								ㆍ 금융질서문란정보 <br>
								부정한 방법으로 대출을 받는 등 금융거래질서를 문란하게 한 사실 등</li>
						</ul>
						<ul>
							<li>
								ㆍ 신용능력정보 <br>
								회사의 개황, 사업의 내용 등 일반정보, 재무상태, 재무비율 등 재무에 관한 사항, 감사인의 감사의견 및 납세실적 등 비재무에 관한 사항 등</li>
						</ul>
						<ul>
							<li>
								ㆍ 공공기록정보 <br>
								국세, 지방세, 관세, 과태료, 고용산재보험료의 체납, 법원의 판결에 의해 채무불이행자로 등록된 사실, 개인회생절차가 진행 중인 거래처, 신용회복지원이 확정된 거래처, 파산으로 인한 면책 결정을 받은 거래처 등</li>
						</ul>


						<h5 id="p_link1">2.제공대상자, 제공받는 자의 이용목적 및 제공하는 신용정보의 종류</h5>
						<ul>
							<li>
								ㆍ 제공대상자 <br>
								&nbsp;&nbsp;&nbsp;- 신용정보집중기관, 신용정보회사, 기타 동법 및 다른 법률에 의해 제출을 요구하는 공공기관 등<br>
							</li>
						</ul>
						<ul>
							<li>
								ㆍ 제공받는 자의 이용목적<br>
								&nbsp;&nbsp;&nbsp;- 금융기관에 대한 신용정보를 집중, 수집, 보관, 제공 <br>
								&nbsp;&nbsp;&nbsp;- 기타 동법 및 다른 법률의 규정에서 정한 경우 <br>
							</li>
						</ul>
						<ul>
							<li>
								ㆍ 제공하는 신용정보의 종류<br>
								&nbsp;&nbsp;&nbsp;- 식별정보 <br>
								&nbsp;&nbsp;&nbsp;- 신용거래정보<br>
								&nbsp;&nbsp;&nbsp;- 금융질서문란정보<br>
								&nbsp;&nbsp;&nbsp;- 신용능력정보<br>
							</li>
						</ul>



						<h5 id="p_link1">3.보유 및 이용기간, 신용정보 파기절차 및 방법</h5>
						<ul>
							<li>
								ㆍ 신용정보 보유 및 이용기간<br>
								&nbsp;&nbsp;&nbsp;- 원칙 : 당사와의 거래관계 존속시 또는 고객정보제공동의 철회시까지<br>
								&nbsp;&nbsp;&nbsp;- 다만, 관련 법령상 의무이행, 민ㆍ형사상 또는 행정상의 책임 또는 시효가 지속되거나 , 증명자료로서의<br> &nbsp;&nbsp;&nbsp; 가치가 지속될 경우 별도보관 등을 할 수 있고 그 사유 달성시 파기함<br>
							</li>
						</ul>
						<ul>
							<li>
								ㆍ 신용정보 파기절차 및 방법<br>
								&nbsp;&nbsp;&nbsp;고객정보관리 책임자 입회하에 즉시 문서파쇄기를 통한 세단 및 파일삭제 등 엄격한 관리를 하고 있습니다.<br>
							</li>
						</ul>



						<h5 id="p_link1">4.신용정보주체의 권리 및 행사방법</h5>
						<ul>
							<li>
								ㆍ 본인신용정보 제공 및 열람청구권<br>
								&nbsp;&nbsp;&nbsp;- 신용정보주체는 본인의 신분을 나타내는 증표를 표시하고 신용정보업자가 보유하고 있는 본인정보의 제공<br> &nbsp;&nbsp;&nbsp; 또는 열람을 청구할 수 있습니다.<br>
							</li>
						</ul>
						<ul>
							<li>
								ㆍ 본인신용정보 정정청구권<br>
								&nbsp;&nbsp;&nbsp;- 신용정보주체는 본인의 신용정보가 사실과 다른 경우에는 신용정보회사등에게 정정을 청구할 수 있습니다.<br>
							</li>
						</ul>
						<ul>
							<li>
								ㆍ 신용정보제공사실의 통보요구권<br>
								&nbsp;&nbsp;&nbsp;- 신용정보주체는 최근 1년간 본인에 관한 신용정보를 제공한 내역을 통보하도록 요구할 수 있습니다.<br>
							</li>
						</ul>
						<ul>
							<li>
								ㆍ 개인신용정보 제공, 이용 동의 철회권<br>
								&nbsp;&nbsp;&nbsp;- 신용정보주체는 본인의 신용도 등을 평가하기 위한 목적외의 목적으로 제공동의를 한 경우 인터넷 홈페이지, <br> &nbsp;&nbsp;&nbsp; 유무선통신, 서면 등을 통해 개인신용정보의 제공동의를 철회할 수 있습니다.<br>
							</li>
						</ul>




						<h5 id="p_link15">5.신용정보 관리, 보호 관련 고충처리 담당자 </h5>
						<ul>
							<li>
								<ul>
									<li>ㆍ 성명 : 김창오</li>
									<li>ㆍ 부서 : 준법감시인 </li>
									<li>ㆍ 전화번호 : 02-6202-3000 </li>
									<li>ㆍ 팩스번호 : 02-6202-3010 </li>
									<li>ㆍ E-mail : <a href="mailto:webplanner@wooriat.com" target="_blank" title="새창 열림">webplanner@wooriat.com</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
				<div id="tabs-4">
					<div class="protec_cn">


						<h5>개인정보의 처리 위탁 현황</h5>
						<p>우리자산신탁(주)는 원할한 개인정보 업무처리를 위해 [개인정보보호법 제26조]에 따라 아래와 같이 개인정보를 위탁하고 있습니다.</p><br>

						<ul>
							<li>1. 정보시스템 관리
							</li>
						</ul>

						<ul>
							<li>
								ㆍ 위탁받는자 : (주)더존비즈온<br>
								ㆍ 위탁내용 : 정보시스템 유지보수<br>
								ㆍ 개인정보 보유 및 이용기간 : 위탁계약 종료시까지 <br>
							</li>
						</ul>

						<ul>
							<li>2. 분양대행업무
							</li>
						</ul>

						<ul>
							<li>① 위탁받는자 : 아이에스컨설팅
								<br>
								ㆍ 위탁내용 : 경기도 용인시 수지구 동천동 오피스텔 차입형토지신탁 분양대행업무
							</li>

							<li>② 위탁받는자 : 원하우스(주)
								<br>
								ㆍ 위탁내용 : 경기도 평택시 신장동 주상복합 신축사업 차입형토지신탁 분양대행업무
							</li>

							<li>③ 위탁받는자 : ㈜제이에스파트너
								<br>
								ㆍ 위탁내용 : 경기도 의정부시 의정부동 이든타워 차입형토지신탁 분양대행업무
							</li>

							<li>④ 위탁받는자 : ㈜비엘에스프러퍼티
								<br>
								ㆍ 위탁내용 : 경기도 화성시 동탄테크노밸리 12-2블럭 지식산업센터 차입형토지신탁 분양대행업무
							</li>

							<li>⑤ 위탁받는자 : ㈜보담
								<br>
								ㆍ 위탁내용 : 부산시 해운대구 우동 뷰티크테라스 호텔 차입형토지신탁 분양대행업무
							</li>

						</ul>


						<ul>
							<li>
								기준일 : 2018. 01
							</li>
						</ul>




					</div>
				</div>
			</div>

			<!-- //컨텐츠 영역 -->
		</div>
	</div>
	<!-- //content -->
</div>

<script type="text/javascript">
	var ref = "${ref}";
	$(function () {
		$(".privacy-tab").tabs();

		if(ref == "ft") {
			$(".privacy-tab__item:eq(1) a").click();
		}
	});
</script>
</html>
