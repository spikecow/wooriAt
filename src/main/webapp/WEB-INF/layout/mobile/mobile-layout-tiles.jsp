<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%--<script>--%>
<%--	<c:set var="buildVer">--%>
<%--	<spring:eval expression="@environment.getProperty('build.date')" />--%>
<%--	</c:set>--%>
<%--	var buildVer = '<c:out value="${buildVer}" />';--%>
<%--</script>--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko" >
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, user-scalable=no">
	
	<title>GS ITM</title>

	<!-- 해당부분 확인-->
<%--	<style>--%>
<%--	html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}--%>
<%--	</style>--%>
	<!-- 해당부분 확인-->

	<link rel="shortcut icon" href="/common/favicon.ico" type="image/vnd.microsoft.icon" />
	<link rel="stylesheet" type="text/css"  href="/common/mobile/css/customCommon.css?date=<spring:eval expression="@environment.getProperty('build.date')" />" media="all">
	<link rel="stylesheet" type="text/css"  href="/common/mobile/css/common.css?date=<spring:eval expression="@environment.getProperty('build.date')" />" media="all">

	<script type="text/javascript" src="/common/js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="/common/js/jquery.mousewheel.min.js"></script>

	<script type="text/javascript" src=/common/mobile/js/customJS/header.js?date=<spring:eval expression="@environment.getProperty('build.date')" />></script>
	<script type="text/javascript" src=/common/mobile/js/customJS/footer.js?date=<spring:eval expression="@environment.getProperty('build.date')" />></script>
	<!-- mustache.js import -->
	<script type="text/javascript" src="/common/mustache/3.1.0/mustache.js"></script>
	<script type="text/javascript" src="/common/mustache/3.1.0/mustache.min.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-152613330-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-152613330-1');
	</script>
</head>


<div id="skip">
	<dl id="skiptoContent">
		<dt>바로가기 메뉴</dt>
		<dd><a href="#gnb">메인메뉴 바로가기</a></dd>
		<dd><a href="#container">본문 바로가기</a></dd>
	</dl>
</div>
<!-- [e]skip -->

<div id="wrap">
	<div class="logo"><a href="/"></a></div>

	<!-- [s]header -->
	<header>
		<div class="gnb_wrap">
			<div class="logo_w"><a href="/"></a></div>
			<div class="over_lan">
				<a href="/?langCd=EN" class="language_b"><!--<span id="currLang">EN</span>--></a>
				<div class="lan" style="display: block;">
<!-- 					<a href="#" id="krPage">KR</a> -->
					<a href="#" id="enPage">EN</a>
				</div>
			</div>
			<ul>
				<li><a href="#none" class="gnb_menu"></a></li>
			</ul>
		</div>

	</header>
	<!-- nav -->
	<nav>

	</nav>
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


<script type="text/javascript" src="/common/js/swiper.js"></script>
<script type="text/javascript" src="/common/js/placeholders.js"></script>
<script type="text/javascript" src="/common/js/jquery-fakeform-0.5.js"></script>
<script type="text/javascript" src="/common/mobile/js/common.js?date=<spring:eval expression="@environment.getProperty('build.date')" />"></script>

<!-- mustache.js import -->

<script type="text/javascript" src="/common/mustache/3.1.0/mustache.js"></script>
<script type="text/javascript" src="/common/mustache/3.1.0/mustache.min.js"></script>
<script type="text/javascript" src="/common/mustache/3.1.0/mustache-wax.js"></script>
</html>


