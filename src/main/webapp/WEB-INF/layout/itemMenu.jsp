<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <div class="lnb_area">
        <div class="lnb_wrap">
            <div class="loc">
                <span class="home"><span class="blind">홈</span></span>
                <span class="dep1">물건정보</span>
            </div>
            <div class="dep2">
                <a href="#none">분양물건정보</a>
                <ul class="dep_list">
                    <li><a href="/item/sale/list">분양물건정보</a></li>
                    <li><a href="/item/vendue/list">공매물건정보</a></li>
                </ul>
            </div>
        </div>
    </div>