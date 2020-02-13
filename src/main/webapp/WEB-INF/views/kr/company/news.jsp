<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
					<input type="text" class="input" title="검색어 입력" id="searchWord" placeholder=""><button type="button" class="btn_search" name="btnViewDetail"><span class="blind">검색</span></button>
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
							<c:forEach items="${list.content}" var="list" varStatus="status">
							<tr>
								<td>${(totalCount - status.index) - ( (page - 1)  *  10 ) }</td>
								<td class="tit"><a href="/company/news/${ list.seqNo }/${list.menuCd}">${list.title}</a></td>
								<td><fmt:parseDate value="${ list.regDate }" pattern="yyyy-MM-dd'T'HH:mm" var="cretDtm" type="both" />
									<fmt:formatDate pattern="yyyy.MM.dd" value="${ cretDtm }" />
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>	 
				</div>
				<!-- //목록 -->
				<!-- 페이징 -->
				<div class="paging">
					<div class="paging">
						${pagingHtml}
					</div>
				</div>
				<!-- //페이징 -->
			</div>
		</div>
		<!-- //content -->
	</div> 
	<!-- //container -->
</body>
</html>

<script type="text/javascript">


	$(document).ready(function() {

		$("#searchWord").keydown(function(key) {
			if (key.keyCode == 13) {
				location.href = "/company/news?searchWord="+ $('#searchWord').val();
			}
		});
	});

	var page = "${page}";

	var searchWord  = encodeURI("${searchWord}");
	var totalPage = Number('${totalPage}');
	var menuCd = "${menuCd}";

	$('input[name=searchWord]').val(searchWord);

	$('.paging span.num a').click(function(){
		var text = Number(this.text);
		page = Number(text);
		location.href ="/company/news?page="+ page + "&menuCd="+menuCd +  "&searchWord="+ searchWord ;
	});

	$('.paging a.first').click(function(){
		page = 1;
		location.href ="/company/news?page="+ page + "&menuCd="+menuCd +  "&searchWord="+ searchWord ;

	});

	$('.paging a.last').click(function(){
		if(page == totalPage){
			alert("마지막페이지 입니다.");
			return false;
		}
		page = totalPage;
		location.href ="/company/news?page="+ page + "&menuCd="+menuCd +  "&searchWord="+ searchWord ;
	});

	$('.paging a.prev').click(function(){
		page = Number(page-1);
		if(page < 0){
			page =1;
		}
		location.href ="/company/news?page="+ page + "&menuCd="+menuCd + "&searchWord="+ searchWord ;
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
		location.href ="/company/news?page="+ page + "&menuCd="+menuCd + "&searchWord="+ searchWord ;
	});

	$('button[name=btnViewDetail]').on('click', function () {
		if($('#searchWord').val() == ""){
			alert("검색어를 입력하시기 바랍니다.");
			return;
		}
		location.href = "/company/news?menuCd=" + menuCd + "&searchWord="+ $('#searchWord').val();
	});




</script>
