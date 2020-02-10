<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">

	<div id="container" class="item"><!-- 각 메뉴명 고유 클래스 삽입 -->
		<!-- title area -->
		<div class="title_area">
			<h3>분양물건정보</h3>
		</div>
		<!-- //title area -->
		<!-- lnb area -->
		<div class="lnb_area">
			<div class="lnb_wrap">
				<div class="loc">
					<span class="home"><span class="blind">홈</span></span>
					<span class="dep1">물건정보</span>		
				</div>
				<div class="dep2">
					<a href="#none">분양물건정보</a>
					<ul class="dep_list">
						<li><a href="/sale/list">분양물건정보</a></li>
						<li><a href="/vendue/list">공매물건정보</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- //lnb area -->
		<!-- content -->
		<div id="content">
			<div class="content_wrap">
				<h4>분양물건정보</h4>
				<!-- 상세 -->
				<div class="board_view">
					<div class="board_view_img">
						<img src="http://images.wooriat.com/SaleItem/${data.NPhoto2}" alt="">
					</div>
					<div class="board_view_head">
						<span class="tit">${data.bunName}</span>
					</div>
					<!-- 표 -->
					<div class="board_data_table">
						<table>
							<caption>공매물건정보 진행상태, 첨부파일</caption>
							<colgroup>
								<col width="160px">
								<col width="400">
								<col width="160px">
								<col width="*">
							</colgroup>
							<tbody>
								<tr>
									<th>공급위치</th>
									<td colspan="3">
										${data.address}
										<c:if test="${!empty data.etcAddress}">
											, ${data.etcAddress}
										</c:if>
									</td>
								</tr>
								<tr>
									<th>규모</th>
									<td colspan="3">${data.scale}</td>
								</tr>
								<tr>
									<th>공정률</th>
									<td colspan="3">${data.progress6}%</td>
								</tr>
								<tr>
									<th>총세대수</th>
									<td>${data.totalSedae}</td>
									<th>분양세대수</th>
									<td>${data.bunSedae}</td>
								</tr>
								<tr>
									<th>분양시기</th>
									<td>
										<fmt:parseDate value="${ data.bunDate }" pattern="yyyy-MM-dd'T'HH:mm" var="bunDate" type="both" />
										<fmt:formatDate pattern="yyyy. MM. dd" value="${bunDate}" />
									</td>
									<th>면적</th>
									<td>${data.pyung }㎡</td>
								</tr>
								<tr>
									<th>입주시기</th>
									<td>
										<fmt:parseDate value="${ data.ipDate }" pattern="yyyy-MM-dd'T'HH:mm" var="ipDate" type="both" />
										<fmt:formatDate pattern="yyyy. MM. dd" value="${ipDate}" />
									</td>
									<th>구조</th>
									<td>${data.construction}</td>
								</tr>
								<tr>
									<th>대지면적</th>
									<td>${data.landArea }㎡</td>
									<th>건축면적</th>
									<td>${data.constArea }㎡</td>
								</tr>
								<tr>
									<th>용적율</th>
									<td>${data.yungPer}%</td>
									<th>건폐율</th>
									<td>${data.gunPer}%</td>
								</tr>
								<tr>
									<th>난방종류</th>
									<td>
										<c:if test="${data.hotWay eq '1'.toString()}">지역난방</c:if>
										<c:if test="${data.hotWay eq '2'.toString()}">개별난방</c:if>
										<c:if test="${data.hotWay eq '3'.toString()}">중앙난방</c:if>
										<c:if test="${data.hotWay eq '10'.toString()}">기타</c:if>
									</td>
									<th>주차대수</th>
									<td>${data.parkn}</td>
								</tr>
								<tr>
									<th>위탁사</th>
									<td><a href="${data.sigongHomePage}" target="_blank">${data.siOffice}</a></td>
									<th>시공사</th>
									<td><a href="${data.constHomePage}" target="_blank">${data.sgOffice}</a></td>
								</tr>
								<tr>
									<th>금융기관</th>
									<td>${data.bankOffice}</td>
									<th>사업종류</th>
									<td>
										<c:if test="${data.bizCase eq 'A'.toString()}">아파트</c:if>
										<c:if test="${data.bizCase eq 'F'.toString()}">아파트형공장</c:if>
										<c:if test="${data.bizCase eq 'O'.toString()}">오피스텔</c:if>
										<c:if test="${data.bizCase eq 'P'.toString()}">오피스텔/상가</c:if>
										<c:if test="${data.bizCase eq 'M'.toString()}">오피스/상가</c:if>
										<c:if test="${data.bizCase eq 'D'.toString()}">도시형생활주택</c:if>
										<c:if test="${data.bizCase eq 'U'.toString()}">도시형생활주택/오피스텔</c:if>
										<c:if test="${data.bizCase eq 'J'.toString()}">주상복합</c:if>
										<c:if test="${data.bizCase eq 'G'.toString()}">골프장</c:if>
										<c:if test="${data.bizCase eq 'S'.toString()}">상가</c:if>
										<c:if test="${data.bizCase eq 'T'.toString()}">타운하우스</c:if>
										<c:if test="${data.bizCase eq 'R'.toString()}">리조트</c:if>
										<c:if test="${data.bizCase eq 'L'.toString()}">토지</c:if>
										<c:if test="${data.bizCase eq 'K'.toString()}">지식산업센터</c:if>
										<c:if test="${data.bizCase eq 'N'.toString()}">아파트/오피스텔</c:if>
										<c:if test="${data.bizCase eq 'Q'.toString()}">생활숙박시설</c:if>
										<%--<c:if test="${data.bizCase eq 'S'.toString()}">오피스텔/오피스</c:if>--%>
										<c:if test="${data.bizCase eq 'Z'.toString()}">기타</c:if>
									</td>
								</tr>
								<tr>
									<th>분양방식</th>
									<td>
										<c:if test="${data.bizType eq '1'.toString()}">분양관리신탁</c:if>
										<c:if test="${data.bizType eq '2'.toString()}">관리형토지신탁</c:if>
										<c:if test="${data.bizType eq '3'.toString()}">일반분양</c:if>
										<c:if test="${data.bizType eq '4'.toString()}">선착순분양</c:if>
										<c:if test="${data.bizType eq '5'.toString()}">공개추첨</c:if>
										<c:if test="${data.bizType eq '6'.toString()}">공개추첨후수의분양</c:if>
										<c:if test="${data.bizType eq '7'.toString()}">대리사무/담보신탁</c:if>
										<c:if test="${data.bizType eq '8'.toString()}">관리신탁/자금관리</c:if>
										<c:if test="${data.bizType eq '9'.toString()}">차입형토지신탁</c:if>
										<c:if test="${data.bizType eq '10'.toString()}">기타</c:if>
									</td>
									<th>분양시기</th>
									<td>
										<fmt:parseDate value="${ data.bunDate }" pattern="yyyy-MM-dd'T'HH:mm" var="bunDate" type="both" />
										<fmt:formatDate pattern="yyyy. MM. dd" value="${bunDate}" />
									</td>
								</tr>
								<tr>
									<th>분양문의</th>
									<td>${data.reqTel}</td>
									<th>사업홈페이지</th>
									<td><a href="${data.homePage}" target="_blank">${data.homePage}</a></td>
								</tr>
							</tbody>
						</table>	 
					</div>
					<!-- //표 --> 
				</div>
				<!-- //상세 -->
				<!-- 버튼 -->
				<div class="board_btn_area">
					<a href="/sale/list" class="btn_list"><span>목록</span></a>
				</div>
				<!-- //버튼 -->
			</div>
		</div>
		<!-- //content -->
	</div> 
	<!-- //container -->

</html>
