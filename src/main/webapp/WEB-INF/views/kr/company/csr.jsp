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
				<h4>사회공헌</h4>
				<!-- sorting -->
				<div class="board_sorting w150">
					<a href="#none">연도 전체</a>
					<ul class="sort_list">
						<li><a href="/company/news?menuCd=${menuCd}">연도 전체</a></li>
						<li><a href="/company/news?menuCd=${menuCd}&year=2020">2020</a></li>
						<li><a href="/company/news?menuCd=${menuCd}&year=2019">2019</a></li>
						<li><a href="/company/news?menuCd=${menuCd}&year=2018">2018</a></li>
						<li><a href="/company/news?menuCd=${menuCd}&year=2017">2017</a></li>
						<li><a href="/company/news?menuCd=${menuCd}&year=2016">2016</a></li>
						<li><a href="/company/news?menuCd=${menuCd}&year=2015">2015</a></li>
						<li><a href="/company/news?menuCd=${menuCd}&year=2014">2014</a></li>
						<li><a href="/company/news?menuCd=${menuCd}&year=2013">2013</a></li>
						<li><a href="/company/news?menuCd=${menuCd}&year=2012">2012</a></li>
						<li><a href="/company/news?menuCd=${menuCd}&year=2011">2011</a></li>
						<li><a href="/company/news?menuCd=${menuCd}&year=2010">2010</a></li>
						<li><a href="/company/news?menuCd=${menuCd}&year=2009">2009</a></li>
						<li><a href="/company/news?menuCd=${menuCd}&year=2008">2008</a></li>
						<li><a href="/company/news?menuCd=${menuCd}&year=2007">2007</a></li>
					</ul>
				</div>
				<!-- //sorting -->
				<!-- 검색 -->
				<div class="board_search">
					<input type="text" class="input" title="검색어 입력" id="searchWord" placeholder=""><button type="button" class="btn_search" name="btnViewDetail"><span class="blind">검색</span></button>
				</div>
				<!-- //검색 -->
				<!-- 목록 -->
				<div class="board_list_type3">
 					<ul>
						<c:forEach items="${list.content}" var="list" varStatus="status">
						<li>
							<a href="/company/news/${list.seqNo}/${menuCd}" class="thum"><img src="http://images.wooriat.com/Social/${list.img}" alt=""></a>
							<span class="cont">
								<a href="/company/news/${list.seqNo}/${menuCd}" class="tit">${list.title}</a>
								<span class="date">
									<fmt:parseDate value="${ list.regDate }" pattern="yyyy-MM-dd'T'HH:mm" var="cretDtm" type="both" />
									<fmt:formatDate pattern="yyyy.MM.dd" value="${ cretDtm }" />
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
	<!-- //container -->


</body>
</html>
<script type="text/javascript">


	$(document).ready(function() {

		$("#searchWord").keydown(function(key) {
			if (key.keyCode == 13) {
				location.href = "/company/news?menuCd="+menuCd+"&searchWord="+ $('#searchWord').val();
			}
		});
	});

	var page = "${page}";

	var searchWord  = encodeURI("${searchWord}");
	var totalPage = Number('${totalPage}');
	var menuCd = "${menuCd}";
	var year  = "${year}";

	$('input[name=searchWord]').val(searchWord);

	$('.paging span.num a').click(function(){
		var text = Number(this.text);
		page = Number(text);
		location.href ="/company/news?page="+ page + "&menuCd="+menuCd +  "&searchWord="+ searchWord+  "&year="+ year ;
	});

	$('.paging a.first').click(function(){
		page = 1;
		location.href ="/company/news?page="+ page + "&menuCd="+menuCd +  "&searchWord="+ searchWord +  "&year="+ year ;

	});

	$('.paging a.last').click(function(){
		if(page == totalPage){
			alert("마지막페이지 입니다.");
			return false;
		}
		page = totalPage;
		location.href ="/company/news?page="+ page + "&menuCd="+menuCd +  "&searchWord="+ searchWord +  "&year="+ year ;
	});

	$('.paging a.prev').click(function(){
		page = Number(page)-5;
		if(page < 0){
			page =1;
		}
		location.href ="/company/news?page="+ page + "&menuCd="+menuCd + "&searchWord="+ searchWord +  "&year="+ year ;
	});

	$('.paging a.next').click(function(){
		if(page == totalPage){
			alert("마지막페이지 입니다.");
			return false;
		}
		page = Number(page)+5;
		if(page > totalPage){
			page = totalPage;
		}

		// var text = Number(this.text);
		// page = Number(text) -1;
		location.href ="/company/news?page="+ page + "&menuCd="+menuCd + "&searchWord="+ searchWord+  "&year="+ year ;
	});

	$('button[name=btnViewDetail]').on('click', function () {
		if($('#searchWord').val() == ""){
			alert("검색어를 입력하시기 바랍니다.");
			return;
		}
		location.href = "/company/news?menuCd=" + menuCd + "&searchWord="+ $('#searchWord').val();
	});




</script>
