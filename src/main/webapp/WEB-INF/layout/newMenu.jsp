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
                    <li><a href="#none">회사개요</a></li>
                    <li><a href="#none">CI소개</a></li>
                    <li><a href="#none">경영현황</a></li>
                    <li><a href="#none">회사소식</a></li>
                    <li><a href="#none">채용정보</a></li>
                    <li><a href="#none">오시는 길</a></li>
                </ul>
            </div>
            <div class="dep3">
                <ul>
                    <li><a href="/com/news" class="curr">회사소식</a></li>
                    <li><a href="/com/photo">PHOTO 소식</a></li>
                    <li><a href="/com/csv">사회공헌</a></li>
                </ul>
            </div>
        </div>
    </div>