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
				<h4>공매물건정보</h4>
				<span class="board_top_rtxt">
					<span class="txt">PDF파일 내용이 보이지 않는 경우 <em>Sumatra PDF</em>를 설치해주시기 바랍니다.</span><a href="/down/SumatraPDF-3.0-install.exe" class="down_sumatra"><span>Sumatra PDF</span></a>
				</span>
				<!-- 상세 -->
				<div class="board_view">
					<div class="board_view_head">
						<span class="tit">${data.newsTitle}</span>
						<span class="date">
							<fmt:parseDate value="${ list.regDate }" pattern="yyyy-MM-dd'T'HH:mm" var="regDate" type="both" />
							<fmt:formatDate pattern="yyyy-MM-dd" value="${ regDate }" />
						</span>
					</div>
					<!-- 표 -->
					<div class="board_data_table">
						<table>
							<caption>공매물건정보 진행상태, 첨부파일</caption>
							<colgroup>
								<col width="160px">
								<col width="*">
							</colgroup>
							<tbody>
							<tr>
								<th>진행상태</th>
								<td class="state"><span class="ing">${data.sortStatus}</span></td>
								<!--<td class="state"><span>중지</span></td>-->
								<!--<td class="state"><span class="fin">낙찰</span></td>-->
							</tr>
							<tr>
								<th>첨부파일</th>
								<td>
									<c:if test="${!empty data.insertFile1}">
									<a href="http://images.wooriat.com/ShortSell/${data.insertFile1}" class="down_pdf"><span>${data.insertFile1}</span></a>
									</c:if>
									<c:if test="${!empty data.insertFile2}">
										<a href="http://images.wooriat.com/ShortSell/${data.insertFile2}" class="down_pdf"><span>${data.insertFile2}</span></a>
									</c:if>
									<c:if test="${!empty data.insertFile3}">
										<a href="http://images.wooriat.com/ShortSell/${data.insertFile3}" class="down_pdf"><span>${data.insertFile3}</span></a>
									</c:if>
									<c:if test="${!empty data.insertFile4}">
										<a href="http://images.wooriat.com/ShortSell/${data.insertFile4}" class="down_pdf"><span>${data.insertFile4}</span></a>
									</c:if>
									<c:if test="${!empty data.insertFile5}">
										<a href="http://images.wooriat.com/ShortSell/${data.insertFile5}" class="down_pdf"><span>${data.insertFile5}</span></a>
									</c:if>
								</td>
							</tr>
							</tbody>
						</table>
					</div>
					<!-- //표 -->
					<div class="board_view_body">
						<!-- pdf viewer 영역 -->
						<p style="text-align:center;">
							<iframe id="papermain" name="papermain" src="http://images.wooriat.com/ShortSell/${data.insertFile1}" width="100%" height="850" scrolling="no" frameborder="0" onload="javascript:resize_frame(this)" target="_self" title="데이터프레임"></iframe>
						<p>
							<!-- //pdf viewer 영역 -->
					</div>
					<div class="board_view_pg">
						<ul>
							<li class="prev">
								<strong>이전글</strong><span><a href="/vendue/detail/${prevDetail.sellId}">${prevDetail.newsTitle}</a></span>
							</li>
							<li class="next">
								<strong>다음글</strong><span><a href="/vendue/detail/${nextDetail.sellId}">${nextDetail.newsTitle}</a></span>
							</li>
						</ul>
					</div>
				</div>
				<!-- //상세 -->
				<!-- 버튼 -->
				<div class="board_btn_area">
					<a href="/vendue/list" class="btn_list"><span>목록</span></a>
				</div>
				<!-- //버튼 -->
			</div>
		</div>
		<!-- //content -->
	</div> 
	<!-- //container -->

</html>
