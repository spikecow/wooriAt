<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="ko">

<head>
	<script type="text/javascript">

		$(document).ready(function(){
			$(".lnb_area .dep2 a:eq(0)").html("회사소식");
		});

	</script>
</head>
<body>

	<!-- container -->
	<div id="container" class="company"><!-- 각 메뉴명 고유 클래스 삽입 -->
		<!-- title area -->
		<div class="title_area">
			<h3>회사소식</h3>
		</div>
		<!-- //title area -->
		<!-- lnb area -->
		<%@ include file="/WEB-INF/layout/newMenu.jsp"%>
		<!-- //lnb area -->
		<!-- content -->
		<div id="content">
			<div class="content_wrap">
				<h4>회사소식</h4> 
				<!-- 검색 -->
				<div class="board_search">
					<input type="text" class="input" title="검색어 입력" placeholder=""><button type="button" class="btn_search"><span class="blind">검색</span></button>	
				</div>
				<!-- //검색 -->
				<!-- 목록 -->
				<div class="board_list_type1">
					<table>
						<caption>회사소식 목록</caption>
						<colgroup>
							<col width="100px">
							<col width="870px">
							<col width="*">
						</colgroup>
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>등록일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>20</td>
								<td class="tit"><a href="#none">건설공제조합과 부동산 담보신탁 업무협약 체결</a></td>
								<td>2019. 12. 31</td>
							</tr>
							<tr>
								<td>19</td>
								<td class="tit"><a href="#none">건설공제조합과 부동산 담보신탁 업무협약 체결 건설공제조합과 부동산 담보신탁 업무협약 체결 건설공제조합과 부동산 담보신탁 업무협약 체결 건설공제조합과 부동산 담보신탁 업무협약 체결</a></td>
								<td>2019. 12. 31</td>
							</tr>
							<tr>
								<td>18</td>
								<td class="tit"><a href="#none">건설공제조합과 부동산 담보신탁 업무협약 체결</a></td>
								<td>2019. 12. 31</td>
							</tr>
							<tr>
								<td>17</td>
								<td class="tit"><a href="#none">건설공제조합과 부동산 담보신탁 업무협약 체결</a></td>
								<td>2019. 12. 31</td>
							</tr>
							<tr>
								<td>16</td>
								<td class="tit"><a href="#none">건설공제조합과 부동산 담보신탁 업무협약 체결</a></td>
								<td>2019. 12. 31</td>
							</tr>
							<tr>
								<td>15</td>
								<td class="tit"><a href="#none">건설공제조합과 부동산 담보신탁 업무협약 체결</a></td>
								<td>2019. 12. 31</td>
							</tr>
							<tr>
								<td>14</td>
								<td class="tit"><a href="#none">건설공제조합과 부동산 담보신탁 업무협약 체결</a></td>
								<td>2019. 12. 31</td>
							</tr>
							<tr>
								<td>13</td>
								<td class="tit"><a href="#none">건설공제조합과 부동산 담보신탁 업무협약 체결</a></td>
								<td>2019. 12. 31</td>
							</tr>
							<tr>
								<td>12</td>
								<td class="tit"><a href="#none">건설공제조합과 부동산 담보신탁 업무협약 체결</a></td>
								<td>2019. 12. 31</td>
							</tr>
							<tr>
								<td>11</td>
								<td class="tit"><a href="#none">건설공제조합과 부동산 담보신탁 업무협약 체결</a></td>
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
		</div>
		<!-- //content -->
	</div> 
	<!-- //container -->

</html>
