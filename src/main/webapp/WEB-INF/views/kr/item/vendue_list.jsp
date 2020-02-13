<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">

<div id="container" class="company">
	<!-- title area -->
	<div class="title_area">
		<h3>공매물건정보</h3>
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
				<a href="#none">공매물건정보</a>
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
			<h4>공매물건정보</h4>
			<!-- sorting -->
			<div class="board_sorting">
				<a href="#none">진행상황 전체</a>
				<ul class="sort_list">
					<li><a href="/item/vendue/list">진행상황 전체</a></li>
					<li><a href="/item/vendue/list?sortStatus=진행">진행</a></li>
					<li><a href="/item/vendue/list?sortStatus=중지">중지</a></li>
					<li><a href="/item/vendue/list?sortStatus=취소">취소</a></li>
					<li><a href="/item/vendue/list?sortStatus=낙찰">낙찰</a></li>
					<li><a href="/item/vendue/list?sortStatus=일부낙찰">일부낙찰</a></li>
					<li><a href="/item/vendue/list?sortStatus=공지">공지</a></li>
					<li><a href="/item/vendue/list?sortStatus=유찰">유찰</a></li>
					<li><a href="/item/vendue/list?sortStatus=종료">종료</a></li>
					<li><a href="/item/vendue/list?sortStatus=수의계약진행">수의계약진행</a></li>
					<li><a href="/item/vendue/list?sortStatus=수의계약완료">수의계약완료</a></li>
				</ul>
			</div>
			<!-- //sorting -->
			<!-- 검색 -->
			<div class="board_search">
				<input type="text" id="searchWord" name="searchWord" class="input" title="검색어 입력" placeholder=""><button type="button" class="btn_search"><span class="blind">검색</span></button>
			</div>
			<!-- //검색 -->
			<!-- 목록 -->
			<div class="board_list_type1">
				<table>
					<caption>공매물건정보 목록</caption>
					<colgroup>
						<col width="100px">
						<col width="120px">
						<col width="690px">
						<col width="60px">
						<col width="*">
					</colgroup>
					<thead>
					<tr>
						<th>번호</th>
						<th>진행상황</th>
						<th>제목</th>
						<th>파일</th>
						<th>등록일</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${list.content}" var="list" varStatus="status">
					<tr>
						<td>${(totalCount - status.index) - ( (page - 1)  *  10 ) }</td>
						<td class="state">
							<c:choose>
								<c:when test = "${list.sortStatus eq '낙찰'}"><span class="fin"></c:when>
								<c:when test = "${list.sortStatus eq '진행'}"><span class="ing"></c:when>
								<c:otherwise><span></c:otherwise></c:choose>
								${list.sortStatus}</span>
						</td>
						<td class="tit3"><a href="/item/vendue/detail/${list.sellId}">${list.newsTitle}</a></td>
						<td>
							<c:if test="${!empty list.insertFile1}">
							<span class="icon_file"><span class="blind">첨부파일</span></span>
							</c:if>
						</td>
						<td>
							<fmt:parseDate value="${ list.regDate }" pattern="yyyy-MM-dd'T'HH:mm" var="regDate" type="both" />
							<fmt:formatDate pattern="yyyy. MM. dd" value="${ regDate }" />
						</td>
					</tr>
					</c:forEach>
					</tbody>
				</table>
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
				location.href = "/item/vendue/list?searchWord="+ $('#searchWord').val();
			}
		});
	});

	var page = "${page}";

	var searchWord  = "${searchWord}"
	var totalPage = Number('${totalPage}');
	var sortStatus = "${sortStatus}";

	$('input[name=searchWord]').val(searchWord);

	$('.paging span.num a').click(function(){
		var text = Number(this.text);
		page = Number(text);
		location.href ="/item/vendue/list?page="+ page + "&sortStatus="+sortStatus +  "&searchWord="+ searchWord ;
	});

	$('.paging a.first').click(function(){
		page = 1;
		location.href ="/item/vendue/list?page="+ page + "&sortStatus="+sortStatus +  "&searchWord="+ searchWord ;

	});

	$('.paging a.last').click(function(){
		if(page == totalPage){
			alert("마지막페이지 입니다.");
			return false;
		}
		page = totalPage;
		location.href ="/item/vendue/list?page="+ page + "&sortStatus="+sortStatus +  "&searchWord="+ searchWord ;
	});

	$('.paging a.prev').click(function(){
		page = Number(page-1);
		if(page < 0){
			page =1;
		}
		location.href ="/item/vendue/list?page="+ page + "&sortStatus="+sortStatus + "&searchWord="+ searchWord ;
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
		location.href ="/item/vendue/list?page="+ page + "&sortStatus="+sortStatus + "&searchWord="+ searchWord ;
	});

	$('button[name=btnViewDetail]').on('click', function () {
		location.href = "/item/vendue/list?searchWord="+ $('#searchWord').val();
	});


</script>