<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<div id="container" class="company">
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
					<li><a href="/cs/privacy#tabs-2">개인정보처리방침</a></li>
				</ul>
			</div>
			<div class="dep3">
				<ul>
					<li><a href="/cs/privacy#tabs-2">개인정보처리방침</a></li>
					<li><a href="/cs/security" class="curr">보안센터</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //lnb area -->
	<!-- content -->
	<div id="content">
		<div class="content_wrap">
			<!-- 컨텐츠 영역 -->
			<h4>보안센터</h4>
			<div class="security">
				<div class="security__head">
					<h5>전자금융 <span>사고 예방</span></h5>
					<ul class="txt-list">
						<li>
							<strong>불법사금융피해신고센터</strong>
							<p>금융감독원이 운영하는 금융소비자의 참여공간 입니다. </p>
						</li>
					</ul>
					<a href="https://www.fss.or.kr/fss/kr/acro/report/privateloan/report_write.jsp" target="blank" class="security__btn">신고센터 바로가기</a>
				</div>
				<h5>금융사기 <span>신고센터</span></h5>
				<div class="board_list_type4">
					<table summary="관련기관, 신고대상 사고범위, 전화번호 항목으로 구성된 테이블입니다.">
						<caption>금융사기 신고센터</caption>
						<colgroup>
							<col width="33.333%">
							<col width="33.333%">
							<col width="33.333%">
						</colgroup>
						<thead>
						<tr>
							<th scope="col">관련기관</th>
							<th scope="col">신고대상</th>
							<th scope="col">전화번호</th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td>인터넷침해사고대응센터</td>
							<td>해킹, 피싱, 보안 취약점 등</td>
							<td><strong>02-118</strong></td>
						</tr>
						<tr>
							<td>개인정보침해신고센터</td>
							<td>주민번호, ID 등 개인정보 도용</td>
							<td><strong>02-1336</strong></td>
						</tr>
						<tr>
							<td>불법스팸대응센터</td>
							<td>스팸문자 신고</td>
							<td><strong>02-118</strong></td>
						</tr>
						<tr>
							<td>국가정보원 국가사이버안전센터</td>
							<td>정부, 공공기관 각종 침해사고 신고</td>
							<td><strong>02-3432-0462</strong></td>
						</tr>
						<tr>
							<td>경찰청 사이버테러대응센터</td>
							<td>인터넷사기, 해킹, 바이러스 유포 등</td>
							<td><strong>02-3939-112</strong></td>
						</tr>
						<tr>
							<td>금융보안연구원 보안기술팀</td>
							<td>금융기간 인터넷침해사고 대응</td>
							<td><strong>02-6919-9138</strong></td>
						</tr>
						<tr>
							<td>금융결제원 금융ISAC</td>
							<td>피싱사고 신고접수</td>
							<td><strong>02-531-3138</strong></td>
						</tr>
						<tr>
							<td>금융감독원 전자민원창구</td>
							<td>금융관련 분쟁 및 범죄신고</td>
							<td><strong>02-1332</strong></td>
						</tr>
						<tr>
							<td>농협은행</td>
							<td>전자금융사고 신고</td>
							<td><strong>1588-2100</strong></td>
						</tr>
						<tr>
							<td>검찰청, 해양경찰청</td>
							<td>보이스피싱 지급정지 신고</td>
							<td><strong>112, 122</strong></td>
						</tr>
						<tr>
							<td>국민권인위원회 110콜센터</td>
							<td>보이스피싱 / 파밍신고 안내</td>
							<td><strong>110</strong></td>
						</tr>
						</tbody>
					</table>
				</div>
				<h5>개인정보 <span>대청소 캠페인</span></h5>
				<ul class="txt-list">
					<li>개인정보보호 캠페인 홍보 동영상 및 포스터 보기</li>
				</ul>
				<br />
				<h5>고객<span>문의</span></h5>
				<ul class="txt-list">
					<li>회사 또는 프로젝트와 관련하여 궁금한 사항이 있으실 경우 고객문의 코너를 활용하시면 상세한 답변을 얻을 수 있습니다.</li>
				</ul>
				<a href="" class="security__btn security__btn--customer">고객문의 바로가기</a>
			</div>
			<!-- //컨텐츠 영역 -->
		</div>
	</div>
	<!-- //content -->
</div>
</html>
