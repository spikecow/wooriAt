<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<div id="container" class="trust">
	<!-- 각 메뉴명 고유 클래스 삽입 -->
	<!-- title area -->
	<div class="title_area">
		<h3>대리사무</h3>
	</div>
	<!-- //title area -->
	<!-- lnb area -->
	<div class="lnb_area">
		<div class="lnb_wrap">
			<div class="loc">
				<span class="home"><span class="blind">홈</span></span>
				<span class="dep1">신탁상품</span>
			</div>
			<div class="dep2">
				<a href="#none">대리사무</a>
				<ul class="dep_list">
					<li><a href="/trust/land">토지신탁</a></li>
					<li><a href="/trust/manage_land">관리형토지신탁</a></li>
					<li><a href="/trust/sale">분양관리신탁</a></li>
					<li><a href="/trust/security">담보신탁</a></li>
					<li><a href="/trust/disposal">처분신탁</a></li>
					<li><a href="/trust/manage">관리신탁</a></li>
					<li><a href="/trust/agency">대리사무</a></li>
					<li><a href="/trust/city">도시개발사업</a></li>
					<li><a href="/trust/pfv">PFV사업</a></li>
					<li><a href="/trust/assets">자산관리</a></li>
					<li><a href="/trust/finance">부동산금융</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //lnb area -->
	<!-- content -->
	<div id="content">
		<div class="content_wrap">
			<!-- 컨텐츠 영역 -->
			<h4>대리사무</h4>
			<div class="agency">
				<h5><span>대리사무</span>이란?</h5>
				<p>
					고객을 위하여 부동산의 취득·처분에 따르는 인·허가사항, 해당 부동산의<br />
					조사·분석, 자문 등 모든 사무를 전문지식과 경험을 토대로 신속하고 안전하게 대행하여 드립니다.
				</p>
				<h5>대리사무의 <span>구조도</span></h5>
				<img src="/images/content/agency02.jpg" alt="">
				<h5>대리사무의 <span>업무</span></h5>
				<ul class="txt-list">
					<li>부동산 취득/처분 대리사무</li>
					<li>부동산 분양 대리사무 (분양수입금 등 자금관리 포함)</li>
					<li>부동산 관리 대리사무</li>
					<li>부동산 개발 대리사무 (인허가 포함)</li>
				</ul>
				<h5>대리사무의 <span>장점</span></h5>
				<ul class="txt-list">
					<li>부동산 매매에 있어 당사자간 해결하기 어려운 부분을 신탁회사가 대리함으로써 매매 가능성을 높일 수 있습니다.</li>
					<li>신탁회사의 공신력과 정보력으로 금융기관을 통한 자금조달이 용이해지고, 최적의 시공사 선정이 가능하며 최단기의 인허가를 도출해낼 수 있습니다.</li>
					<li>분양수입금을 신탁회사가 대리하여 관리하는 경우 신탁회사의 공신력을 통해 분양계약자에게 신뢰를 줄 수 있습니다.</li>
				</ul>
				<h5><span>금융 기관</span> 중계</h5>
				<ul class="txt-list">
					<li>
						단일 또는 여러 금융기관으로부터 사업 자금 제공을 받을 수 있도록 사업구도개발과 사업수지분석, 다양한 이해 관계자를 조정하는 역할을 수행합니다.
					</li>
				</ul>
				<h5><span>대출금 상환</span> 관리</h5>
				<ul class="txt-list">
					<li>
						개발사업에 소요되는 자금을 금융기관으로부터 조달한 후 안정적으로 상환하기 위하여 현금유입·유출을 객관적으로 관리할 수 있는<br />
						위탁관리계좌(Escrow Account)를 개설함으로써 합리적으로 자금을 관리하고 자금 유용을 방지하여 대규모 개발자금을 안정적으로 상환하게 됩니다.
					</li>
				</ul>
				<h5><span>사업 수지</span> 관리</h5>
				<ul class="txt-list">
					<li>
						향후 개발사업의 추진과정을 통해 발생할 수입과 비용을 예측, 사업수지표와 자금 흐름표를 작성하여 개발사업에 대한 예상수지를 종합적으로 정리하고,<br />
						사업 위험을 사전에 예방하여 개발프로젝트가 안정적으로 종료할 수 있도록 관리합니다.
					</li>
				</ul>
			</div>
			<!-- //컨텐츠 영역 -->
		</div>
	</div>
	<!-- //content -->
</div>

</html>
