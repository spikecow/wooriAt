<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%--<script>--%>
<%--<c:set var="buildVer">--%>
<%--	<spring:eval expression="@environment.getProperty('build.date')" />--%>
<%--</c:set>--%>
<%--var buildVer = '<c:out value="${buildVer}" />';--%>
<%--</script>--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko" >
<head>
<meta charset="utf-8">

	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="shortcut icon" href="/common/favicon.ico" type="image/vnd.microsoft.icon" />
	<title>GS ITM</title>
	<meta name = "viewport" content = "initial-scale =0.7, user-scalable = no">

	<link rel="stylesheet" type="text/css" href="/common/css/common.css?date=<spring:eval expression="@environment.getProperty('build.date')" />" media="all">
<%--	<link rel="stylesheet" type="text/css" href="/common/css/common.css?date=${build.date}" media="all">--%>
	<link rel="stylesheet" type="text/css" href="/common/css/customCommon.css?date=<spring:eval expression="@environment.getProperty('build.date')" />" media="all">
	<link rel="stylesheet" type="text/css" href="/common/css/jquery.mCustomScrollbar.css" media="all">

	<!-- skip menu -->
	<div id="skip">
		<ul class="skiplist">
			<li class="skip"><a href="#wrap">본문내용으로 바로가기</a></li>
			<li class="skip"><a href="#gnb">주메뉴 바로가기</a></li>
		</ul>
	</div>
	<!-- //skip menu -->
<script type="text/javascript" src="/common/js/jquery-3.4.1.min.js"></script>

<script type="text/javascript" src="/common/js/customJS/header.js?date=<spring:eval expression="@environment.getProperty('build.date')" />"></script>
<script type="text/javascript" src="/common/js/customJS/footer.js?date=<spring:eval expression="@environment.getProperty('build.date')" />"></script>
<!-- mustache.js import -->
<script type="text/javascript" src="/common/mustache/3.1.0/mustache.js"></script>
<script type="text/javascript" src="/common/mustache/3.1.0/mustache.min.js"></script>

<!-- Google Map -->
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDqQu65cs9ht1IRf6Jn3260nVAYPPIbJuk"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-152613330-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag(){dataLayer.push(arguments);}
	gtag('js', new Date());

	gtag('config', 'UA-152613330-1');
</script>
</head> 
<!-- e: header_container -->

<!-- [s]header -->
<header class="" id="headerbg">
	<h1></h1>  <!-- 헤더값 변경 필요 -->
</header>
<!-- [e]header -->

<!-- gnb -->
<div class="gnb_wrap">
	<div class="conts">
		<a href="/" class="logo">GS ITM</a>
		<nav>
		</nav>
		<a href="/?langCd=EN" class="language">
			<div class="lans">
<!-- 				<p id="krPage">KR</p> -->
				<p id="enPage">EN</p>
			</div>
		</a>
		<%--
		<a href="/?langCd=EN" class="language">
			<div style="display:none;" class="lans">
				<p id ="krPage">KR</p>
				<p id ="enPage">EN</p>
			</div>
		--%>
		</a>
	</div>
</div>

<body>
	<!-- s: header_container -->
	<div id="header_container">
		<tiles:insertAttribute name = "header"></tiles:insertAttribute>
	</div>
	<!-- e: header_container -->
	
	<!-- s: body_container -->
	<div id="body_container">
		<div class="main_content">
			<tiles:insertAttribute name = "body"></tiles:insertAttribute>
		</div>
	</div>
	<!-- s: footer_container -->
	<div id="footer_container_container">
		<tiles:insertAttribute name = "footer"></tiles:insertAttribute>
	</div>
</body>



<script type="text/javascript" src="/common/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="/common/js/jquery.mousewheel.min.js"></script>
<script type="text/javascript" src="/common/js/common.js?date=<spring:eval expression="@environment.getProperty('build.date')" />"></script>
<script type="text/javascript" src="/common/js/swiper.min.js"></script>

<script type="text/javascript" src="/common/js/placeholders.js"></script>
<script type="text/javascript" src="/common/js/jquery-fakeform-0.5.js"></script>
<script type="text/javascript" src="/common/js/jquery.mCustomScrollbar.js"></script>

<script type="text/javascript" src="/common/mustache/3.1.0/mustache.js"></script>
<script type="text/javascript" src="/common/mustache/3.1.0/mustache.min.js"></script>
<script type="text/javascript" src="/common/mustache/3.1.0/mustache-wax.js"></script>

</html>


