<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">

<!-- container -->
<div id="container" class="item">
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
					<li><a href="/item/sale/list">분양물건정보</a></li>
					<li><a href="/item/vendue/list">공매물건정보</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //lnb area -->
	<!-- content -->
	<div id="content">
		<div class="content_wrap">
			<h4>분양물건정보</h4>
			<!-- sorting -->
			<div class="board_sorting w220">
				<a href="#none">사업종류 전체</a>
				<ul class="sort_list">
					<li><a href="/item/sale/list">사업종류 전체</a></li>
					<li><a href="/item/sale/list?bizCase=A">아파트</a></li>
					<li><a href="/item/sale/list?bizCase=F">아파트형공장</a></li>
					<li><a href="/item/sale/list?bizCase=O">오피스텔</a></li>
					<li><a href="/item/sale/list?bizCase=P">오피스텔/상가</a></li>
					<li><a href="/item/sale/list?bizCase=M">오피스/상가</a></li>
					<li><a href="/item/sale/list?bizCase=D">도시형생활주택</a></li>
					<li><a href="/item/sale/list?bizCase=U">도시형생활주택/오피스텔</a></li>
					<li><a href="/item/sale/list?bizCase=J">주상복합</a></li>
					<li><a href="/item/sale/list?bizCase=G">골프장</a></li>
					<li><a href="/item/sale/list?bizCase=S">상가</a></li>
					<li><a href="/item/sale/list?bizCase=T">타운하우스</a></li>
					<li><a href="/item/sale/list?bizCase=R">리조트</a></li>
					<li><a href="/item/sale/list?bizCase=L">토지</a></li>
					<li><a href="/item/sale/list?bizCase=K">지식산업센터</a></li>
					<li><a href="/item/sale/list?bizCase=N">아파트/오피스텔</a></li>
					<li><a href="/item/sale/list?bizCase=Q">생활숙박시설</a></li>
					<li><a href="/item/sale/list?bizCase=S">오피스텔/오피스</a></li>
					<li><a href="/item/sale/list?bizCase=Z">기타</a></li>
				</ul>
			</div>
			<!-- //sorting -->
			<!-- 검색 -->
			<div class="board_search">
				<input type="text" id="searchWord" name="searchWord" class="input" title="검색어 입력" placeholder=""><button type="button" class="btn_search" name="btnViewDetail"><span class="blind">검색</span></button>
			</div>
			<!-- //검색 -->
			<!-- 목록 -->
			<div class="board_list_type2">
				<ul>
					<c:forEach items="${list.content}" var="list" varStatus="status">
						<li>
							<a href="/item/sale/detail/${list.saleId}" class="thum"><img src="http://images.wooriat.com/SaleItem/${list.NPhoto1}" alt=""></a>
							<span class="cont">
								<a href="/item/sale/detail/${list.saleId}" class="tit">${list.bunName}</a>
								<span class="info">
									<strong>사업장위치</strong>
									<em>
										${list.address}
										<c:if test="${!empty list.etcAddress}">
											, ${list.etcAddress}
										</c:if>
									</em>
								</span>
								<span class="info">
									<strong>사업종류</strong>
									<em>
										<c:if test="${list.bizCase eq 'A'.toString()}">아파트</c:if>
										<c:if test="${list.bizCase eq 'F'.toString()}">아파트형공장</c:if>
										<c:if test="${list.bizCase eq 'O'.toString()}">오피스텔</c:if>
										<c:if test="${list.bizCase eq 'P'.toString()}">오피스텔/상가</c:if>
										<c:if test="${list.bizCase eq 'M'.toString()}">오피스/상가</c:if>
										<c:if test="${list.bizCase eq 'D'.toString()}">도시형생활주택</c:if>
										<c:if test="${list.bizCase eq 'U'.toString()}">도시형생활주택/오피스텔</c:if>
										<c:if test="${list.bizCase eq 'J'.toString()}">주상복합</c:if>
										<c:if test="${list.bizCase eq 'G'.toString()}">골프장</c:if>
										<c:if test="${list.bizCase eq 'S'.toString()}">상가</c:if>
										<c:if test="${list.bizCase eq 'T'.toString()}">타운하우스</c:if>
										<c:if test="${list.bizCase eq 'R'.toString()}">리조트</c:if>
										<c:if test="${list.bizCase eq 'L'.toString()}">토지</c:if>
										<c:if test="${list.bizCase eq 'K'.toString()}">지식산업센터</c:if>
										<c:if test="${list.bizCase eq 'N'.toString()}">아파트/오피스텔</c:if>
										<c:if test="${list.bizCase eq 'Q'.toString()}">생활숙박시설</c:if>
										<%--<c:if test="${list.bizCase eq 'S'.toString()}">오피스텔/오피스</c:if>--%>
										<c:if test="${list.bizCase eq 'Z'.toString()}">기타</c:if>
									</em>
								</span>
								<span class="info">
									<strong>분양시기</strong>
									<em>
										<fmt:parseDate value="${ list.bunDate }" pattern="yyyy-MM-dd'T'HH:mm" var="bunDate" type="both" />
										<fmt:formatDate pattern="yyyy. MM. dd" value="${bunDate}" />
									</em>
								</span>
								<span class="info">
									<strong>분양문의</strong>
									<em>${list.reqTel}</em>
								</span>
							</span>
						</li>
					</c:forEach>
				</ul>
			</div>
			<!-- //목록 -->
			<!-- 페이징 -->
			<div class="paging">
				${pagingHtml}
			</div>
			<!-- //페이징 -->

		</div>
	</div>
	<!-- //content -->
</div>

</html>


<script type="text/javascript">

	$(document).ready(function() {

		$("#searchWord").keydown(function(key) {
			if (key.keyCode == 13) {
				location.href = "/item/sale/list?searchWord="+ $('#searchWord').val();
			}
		});
	});

	var page = "${page}";

	var searchWord  = "${searchWord}"
	var totalPage = Number('${totalPage}');
	var bizCase = "${bizCase}";

	$('input[name=searchWord]').val(searchWord);

	$('.paging span.num a').click(function(){
		var text = Number(this.text);
		page = Number(text);
		location.href ="/item/sale/list?page="+ page + "&bizCase="+bizCase +  "&searchWord="+ searchWord ;
	});

	$('.paging a.first').click(function(){
		page = 1;
		location.href ="/item/sale/list?page="+ page + "&bizCase="+bizCase +  "&searchWord="+ searchWord ;

	});

	$('.paging a.last').click(function(){
		if(page == totalPage){
			alert("마지막페이지 입니다.");
			return false;
		}
		page = totalPage;
		location.href ="/item/sale/list?page="+ page + "&bizCase="+bizCase +  "&searchWord="+ searchWord ;
	});

	$('.paging a.prev').click(function(){
		page = Number(page-1);
		if(page < 0){
			page =1;
		}
		location.href ="/item/sale/list?page="+ page + "&bizCase="+bizCase + "&searchWord="+ searchWord ;
	});

	$('.paging a.next').click(function(){
		if(page == totalPage){
			alert("마지막페이지 입니다.");
			return false;
		}
		page = Number(page+1);
		if(page > totalPage){
			page = totalPage;
		}

		// var text = Number(this.text);
		// page = Number(text) -1;
		location.href ="/item/sale/list?page="+ page + "&bizCase="+bizCase + "&searchWord="+ searchWord ;
	});

	$('button[name=btnViewDetail]').on('click', function () {
		location.href = "/item/sale/list?searchWord="+ $('#searchWord').val();
	});


</script>