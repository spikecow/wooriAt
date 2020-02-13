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
				<h4>Photo 소식</h4> 
				<!-- 상세 -->
				<div class="board_view">
					<div class="board_view_head">
						<span class="tit">${data.title}</span>
						<span class="date">
							<fmt:parseDate value="${ list.regDate }" pattern="yyyy-MM-dd'T'HH:mm" var="cretDtm" type="both" />
							<fmt:formatDate pattern="yyyy.MM.dd" value="${ cretDtm }" />
						</span>
					</div>
					<div class="board_view_body">
						<p style="text-align:center;">
							<img src="http://images.wooriat.com/Photo/${data.img}">
							${data.content}
						<p>
					</div>
					<div class="board_view_pg">
						<ul>
							<li class="prev">
								<strong>이전글</strong><span><a href="/company/news/${prevDetail.seqNo}/${menuCd}">${prevDetail.title}</a></span>
							</li>
							<li class="next">
								<strong>다음글</strong><span><a href="/company/news/${nextDetail.seqNo}/${menuCd}">${nextDetail.title}</a></span>
							</li>
						</ul>
					</div>
				</div>
				<!-- //상세 -->
				<!-- 버튼 -->
				<div class="board_btn_area">
					<a href="/company/news?menuCd=${menuCd}" class="btn_list"><span>목록</span></a>
				</div>
				<!-- //버튼 -->
			</div>
		</div>
		<!-- //content -->
	</div> 
	<!-- //container -->

</body>
</html>
