<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<script src="/js/lib/jquery.fileDownload.js"></script>
	<script type="text/javascript">

		var tabIdx = parseInt('${typeCd}');

		$(document).ready(function(){
			$(".lnb_area .dep3").hide();
			$(".lnb_area .dep2 a:eq(0)").html("경영현황");

			tabContents($(".tab_wrap"), tabIdx - 1);
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
						<li class="tab_btn"><a href="/company/news?menuCd=M&typeCd=01">수시공시</a></li>
						<li class="tab_btn"><a href="/company/news?menuCd=M&typeCd=02">영업보고</a></li>
						<li class="tab_btn"><a href="/company/news?menuCd=M&typeCd=03">영업순자본비율</a></li>
						<li class="tab_btn"><a href="/company/news?menuCd=M&typeCd=04">감시보고서</a></li>
						<li class="tab_btn"><a href="/company/news?menuCd=M&typeCd=05">경영공시</a></li>
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
									<c:forEach items="${list.content}" var="list" varStatus="status">
									<tr>
										<td>${(totalCount - status.index) - ( (page - 1)  *  10 ) }</td>
										<td class="tit2"><a href="#none">${list.title}</a></td>
										<td class="file"><a href="http://images.wooriat.com/Government/${list.img}" class="btn_m pdf" target="_blank"><span>PDF 보기</span></a><a href="javascript:download('http://images.wooriat.com/Government/${fn:replace(list.img, ' ', '%20')}');" class="btn_m down"><span>다운로드 받기</span></a></td>
										<td>
											<fmt:parseDate value="${ list.regDate }" pattern="yyyy-MM-dd'T'HH:mm" var="cretDtm" type="both" />
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
							${pagingHtml}
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
	<iframe id="fileDown" style='visibility:hidden' src="" width="1" height="1"></iframe>

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

	var searchWord  = "${searchWord}"
	var totalPage = Number('${totalPage}');
	var menuCd = "${menuCd}";
	var typeCd = "${typeCd}";
	

	$('.paging span.num a').click(function(){
		var text = Number(this.text);
		page = Number(text);
		location.href ="/company/news?page="+ page + "&menuCd="+menuCd +  "&typeCd=" + typeCd;
	});

	$('.paging a.first').click(function(){
		page = 1;
		location.href ="/company/news?page="+ page + "&menuCd="+menuCd +  "&typeCd=" + typeCd;

	});

	$('.paging a.last').click(function(){
		if(page == totalPage){
			alert("마지막페이지 입니다.");
			return false;
		}
		page = totalPage;
		location.href ="/company/news?page="+ page + "&menuCd="+menuCd +  "&typeCd=" + typeCd;
	});

	$('.paging a.prev').click(function(){
		page = Number(page-1);
		if(page < 0){
			page =1;
		}
		location.href ="/company/news?page="+ page + "&menuCd="+menuCd + "&typeCd=" + typeCd;
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
		location.href ="/company/news?page="+ page + "&menuCd="+menuCd + "&typeCd=" + typeCd;
	});

	function download(url){

		//$('iframe').attr("src", url);
		document.getElementById("fileDown").src = url;


//document.getElementById('fileDown').location.reload();

		/*console.log(url);

		$.fileDownload(url, {
			preparingMessageHtml: "We are preparing your report, please wait...",
			failMessageHtml: "There was a problem generating your report, please try again."
		});*/
	}

</script>