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
    <h3>CI소개</h3>
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
        <a href="#none">CI 소개</a>
        <ul class="dep_list">
          <li><a href="/company/overview">회사개요</a></li>
          <li><a href="/company/ci_manual">CI소개</a></li>
          <li><a href="/company/news?menuCd=M&typeCd=01">경영현황</a></li>
          <li><a href="/company/news?menuCd=C">회사소식</a></li>
          <li><a href="/company/recruit">채용정보</a></li>
          <li><a href="/company/location">오시는 길</a></li>
        </ul>
      </div>
      <div class="dep3">
        <ul>
          <li><a href="/company/ci_manual">CI Manual</a></li>
          <li><a href="/company/ci_lucestar" class="curr">CI 루체스타</a></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- //lnb area -->
  <!-- content -->
  <div id="content">
    <div class="content_wrap">
      <!-- 컨텐츠 영역 -->
      <h4>B.I in 루체스타</h4>
      <div class="ci-lucestar">
        '루체스타'는 '빛'의 뜻을 가진 이태리어 'luce'와 '별'을 뜻하는 'star'가 합쳐진 말로 '당신의 삶을 빛나게 하는 별'이라는 의미를 가지고 있습니다. 고객에게 딱 어울리는<br />
        맞춤하우스로 설계해 당신을 빛나게 만드는 집을 짓겠다는 우리자산신탁의 실용주의 정신이 깃들여진 브랜드 입니다.<br />
        <p>
          역동감을 주는 사각형이 시선을 한곳으로 유도하여 루체스타의 핵심적 시각요소인 별의 이미지를 전달합니다. 별빛을 투명감 있게 표현하여 다채로운 빛의 의미를<br />
          표현합니다.
        </p>
        <div class="ci-lucestar__img01">
          <img src="/images/content/ci_lucestar01.jpg" alt="">
        </div>
        <h5>Design <span>Plan</span></h5>
        <div class="ci-lucestar__img02">
          <img src="/images/content/ci_lucestar02.jpg" alt="">
        </div>
      </div>
      <!-- //컨텐츠 영역 -->
    </div>
  </div>
  <!-- //content -->
</div>
</html>