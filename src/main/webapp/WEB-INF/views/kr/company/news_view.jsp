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
				<!-- 컨텐츠 영역 -->
				<br><br><br><br><br><br><br><br><br><br>
				컨텐츠 영역입니다.
				<br><br><br><br><br><br><br><br><br><br>
				<!-- //컨텐츠 영역 -->
			</div>
		</div>
		<!-- //content -->
	</div> 
	<!-- //container -->
</body>
</html>
