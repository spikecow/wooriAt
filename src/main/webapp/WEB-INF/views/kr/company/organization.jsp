<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">
<div id="container" class="company">
    <!-- 각 메뉴명 고유 클래스 삽입 -->
    <!-- title area -->
    <div class="title_area">
        <h3>회사개요</h3>
    </div>
    <!-- //title area -->
    <!-- lnb area -->
    <div class="lnb_area">
        <div class="lnb_wrap">
            <div class="loc">
                <span class="home"><span class="blind">홈</span></span>
                <span class="dep1">회사소개</span>
            </div>
            <div class="dep2">
                <a href="#none">회사개요</a>
                <ul class="dep_list">
                    <li><a href="/company/overview">회사개요</a></li>
                    <li><a href="/company/directors">이사회</a></li>
                    <li><a href="/company/ci_manual">CI소개</a></li>
                    <li><a href="/company/news?menuCd=M&typeCd=01">경영현황</a></li>
                    <li><a href="/company/news?menuCd=C">회사소식</a></li>
                    <li><a href="/company/recruit">채용정보</a></li>
                    <li><a href="/company/location">오시는 길</a></li>
                </ul>
            </div>
            <div class="dep3">
                <ul>
                    <li><a href="/company/overview">비전</a></li>
                    <li><a href="/company/history">연혁</a></li>
                    <li><a href="/company/ceo">CEO 인사말</a></li>
                    <li><a href="/company/organization" class="curr">조직도</a></li>
                    <li><a href="/company/ehtics">윤리강령</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //lnb area -->
    <!-- content -->
    <div id="content">
        <div class="content_wrap">
            <!-- 컨텐츠 영역 -->
            <h4>조직도</h4>
            <div class="organization">
                <img src="/images/content/organization.png" alt="">
            </div>
            <!-- //컨텐츠 영역 -->
        </div>
    </div>
    <!-- //content -->
</div>
</html>