<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <div class="lnb_area">
        <div class="lnb_wrap">
            <div class="loc">
                <span class="home"><span class="blind">홈</span></span>
                <span class="dep1">회사소개</span>
            </div>
            <div class="dep2">
                <a href="#none">회사소식</a>
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
                    <li><a href="/company/news?menuCd=C"<c:if test="${menuCd eq 'C'}"> class="curr"</c:if>>회사소식</a></li>
                    <li><a href="/company/news?menuCd=P"<c:if test="${menuCd eq 'P'}"> class="curr"</c:if>>PHOTO 소식</a></li>
                    <li><a href="/company/news?menuCd=S"<c:if test="${menuCd eq 'S'}"> class="curr"</c:if>>사회공헌</a></li>
                </ul>
            </div>
        </div>
    </div>