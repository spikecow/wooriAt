<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="wistrongh=1200">
		<meta name="description" content="">
		<title>우리자산신탁</title>
		<link rel="stylesheet" type="text/css" href="/css/common.css">
		<link rel="stylesheet" type="text/css" href="/css/layout.css">
		<link rel="stylesheet" type="text/css" href="/css/content.css">
		<script src="/js/lib/jquery-1.12.4.min.js"></script>
		<script src="/js/lib/jquery.easing.1.3.js"></script>
		<script src="/js/common.js"></script>
		<!--[if lte IE 9]>
		<script src="/js/lib/placeholders.min.js"></script>
		<script src="/js/lib/html5.js"></script>
		<![endif]-->
	</head>
<body>
<!-- skip nav -->
<div id="skip_wrap">
<a href="#content" class="skip_nav">본문 바로가기</a>
</div>
<!-- //skip nav -->
<!-- wrap -->
<div id="wrap">
<!-- header -->

<tiles:insertAttribute name = "header"></tiles:insertAttribute>
<tiles:insertAttribute name = "body"></tiles:insertAttribute>
<tiles:insertAttribute name = "footer"></tiles:insertAttribute>
</div>
</body>
</html>


