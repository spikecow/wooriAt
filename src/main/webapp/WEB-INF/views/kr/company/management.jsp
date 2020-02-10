<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<script type="text/javascript">

		$(document).ready(function(){
			$(".lnb_area .dep3").hide();
			$(".lnb_area .dep2 a:eq(0)").html("경영현황");
		});

	</script>
</head>
<body>

	<!-- container -->
	<div id="container" class="company"><!-- 각 메뉴명 고유 클래스 삽입 -->
		<!-- title area -->
		<div class="title_area">
			<h3>경영현황</h3>
		</div>
		<!-- //title area -->
		<!-- lnb area -->
		<%@ include file="/WEB-INF/layout/newMenu.jsp"%>
		<!-- //lnb area -->
		<!-- content -->
		<div id="content">
			<div class="content_wrap">
				<h4>경영현황</h4> 
				<span class="board_top_rtxt">
					<span class="txt">우리자산신탁의 자료 열람을 위해서는 <em>Acrobat Reader</em>(무료)의 설치가 필요합니다.</span><a href="#none" class="down_acrobat"><span>Acrobat Reader Download</span></a>
				</span>
				<!-- tab wrap -->
				<div class="tab_type1 tab_wrap">
					<!-- tab menu -->
					<ul class="tab_menu">
						<li class="tab_btn"><a href="#none">수시공시</a></li>
						<li class="tab_btn"><a href="#none">영업보고</a></li>
						<li class="tab_btn"><a href="#none">영업순자본비율</a></li>
						<li class="tab_btn"><a href="#none">감시보고서</a></li>
						<li class="tab_btn"><a href="#none">경영공시</a></li>
					</ul>
					<!-- tab menu -->
					<!-- tab cont -->
 					<div class="tab_cont">
 						<!-- 목록 -->
						<div class="board_list_type1">
							<table>
								<caption>회사소식 목록</caption>
								<colgroup>
									<col width="100px">
									<col width="600px">
									<col width="270px">
									<col width="*">
								</colgroup>
								<thead>
									<tr>
										<th>번호</th>
										<th>제목</th>
										<th>파일</th>
										<th>등록일</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>20</td>
										<td class="tit2"><a href="#none">임시주주총회 의결권 행사내역 등 공시(2019.12.30)</a></td>
										<td class="file"><a href="#none" class="btn_m pdf"><span>PDF 보기</span></a><a href="#none" class="btn_m down"><span>다운로드 받기</span></a></td>
										<td>2019. 12. 31</td>
									</tr>
									<tr>
										<td>19</td>
										<td class="tit2"><a href="#none">임시주주총회 의결권 행사내역 등 공시(2019.12.30) 임시주주총회 의결권 행사내역 등 공시(2019.12.30) 임시주주총회 의결권 행사내역 등 공시(2019.12.30) 임시주주총회 의결권 행사내역 등 공시(2019.12.30)</a></td>
										<td class="file"><a href="#none" class="btn_m pdf"><span>PDF 보기</span></a><a href="#none" class="btn_m down"><span>다운로드 받기</span></a></td>
										<td>2019. 12. 31</td>
									</tr>
									<tr>
										<td>18</td>
										<td class="tit2"><a href="#none">임시주주총회 의결권 행사내역 등 공시(2019.12.30)</a></td>
										<td class="file"><a href="#none" class="btn_m pdf"><span>PDF 보기</span></a><a href="#none" class="btn_m down"><span>다운로드 받기</span></a></td>
										<td>2019. 12. 31</td>
									</tr>
									<tr>
										<td>17</td>
										<td class="tit2"><a href="#none">임시주주총회 의결권 행사내역 등 공시(2019.12.30)</a></td>
										<td class="file"><a href="#none" class="btn_m pdf"><span>PDF 보기</span></a><a href="#none" class="btn_m down"><span>다운로드 받기</span></a></td>
										<td>2019. 12. 31</td>
									</tr>
									<tr>
										<td>16</td>
										<td class="tit2"><a href="#none">임시주주총회 의결권 행사내역 등 공시(2019.12.30)</a></td>
										<td class="file"><a href="#none" class="btn_m pdf"><span>PDF 보기</span></a><a href="#none" class="btn_m down"><span>다운로드 받기</span></a></td>
										<td>2019. 12. 31</td>
									</tr>
									<tr>
										<td>15</td>
										<td class="tit2"><a href="#none">임시주주총회 의결권 행사내역 등 공시(2019.12.30)</a></td>
										<td class="file"><a href="#none" class="btn_m pdf"><span>PDF 보기</span></a><a href="#none" class="btn_m down"><span>다운로드 받기</span></a></td>
										<td>2019. 12. 31</td>
									</tr>
									<tr>
										<td>14</td>
										<td class="tit2"><a href="#none">임시주주총회 의결권 행사내역 등 공시(2019.12.30)</a></td>
										<td class="file"><a href="#none" class="btn_m pdf"><span>PDF 보기</span></a><a href="#none" class="btn_m down"><span>다운로드 받기</span></a></td>
										<td>2019. 12. 31</td>
									</tr>
									<tr>
										<td>13</td>
										<td class="tit2"><a href="#none">임시주주총회 의결권 행사내역 등 공시(2019.12.30)</a></td>
										<td class="file"><a href="#none" class="btn_m pdf"><span>PDF 보기</span></a><a href="#none" class="btn_m down"><span>다운로드 받기</span></a></td>
										<td>2019. 12. 31</td>
									</tr>
									<tr>
										<td>12</td>
										<td class="tit2"><a href="#none">임시주주총회 의결권 행사내역 등 공시(2019.12.30)</a></td>
										<td class="file"><a href="#none" class="btn_m pdf"><span>PDF 보기</span></a><a href="#none" class="btn_m down"><span>다운로드 받기</span></a></td>
										<td>2019. 12. 31</td>
									</tr>
									<tr>
										<td>11</td>
										<td class="tit2"><a href="#none">임시주주총회 의결권 행사내역 등 공시(2019.12.30)</a></td>
										<td class="file"><a href="#none" class="btn_m pdf"><span>PDF 보기</span></a><a href="#none" class="btn_m down"><span>다운로드 받기</span></a></td>
										<td>2019. 12. 31</td>
									</tr>
								</tbody>
							</table>	 
						</div>
						<!-- //목록 -->
						<!-- 페이징 -->
						<div class="paging">
							<a href="#none" class="first"><span class="blind">처음 페이지로 이동</span></a><a href="#none" class="prev"><span class="blind">이전 페이지로 이동</span></a>
							<span class="num">
								<span><a href="#none" class="active">1</a></span><span><a href="#none">2</a></span><span><a href="#none">3</a></span><span><a href="#none">4</a></span><span><a href="#none">5</a></span>
							</span>
							<a href="#none" class="next"><span class="blind">다음 페이지로 이동</span></a><a href="#none" class="last"><span class="blind">마지막 페이지로 이동</span></a>
						</div>
						<!-- //페이징 -->
					</div>
					<!-- //tab cont -->
				</div>
				<!-- //tab wrap -->
				
			</div>
		</div>
		<!-- //content -->
	</div>
</body>
</html>
