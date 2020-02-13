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
          <li><a href="#none" class="curr">CI Manual</a></li>
          <li><a href="#none">CI 루체스타</a></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- //lnb area -->
  <!-- content -->
  <div id="content">
    <div class="content_wrap">
      <!-- 컨텐츠 영역 -->
      <h4>CI Manual</h4>
      <div class="ci-manual">
        우리자산신탁의 심볼마크는 도전과 희망을 상징하는 여명을 표현하고 있으며 한국 금융의 지평을 여는 선도자가 되겠다는 의지를 담고 있습니다.<br />
        심볼마크의 바탕을 이루고 있는 원형은 하나된 ‘우리’를 의미하고 그라데이션의 적용은 우리나라 금융의 떠오르는 빛을 형상화하였습니다.<br />
        로고의 컬러는 희망찬 밝은 미래를 상징합니다.
        <div class="ci-manual__img01">
          <img src="/images/content/ci-manual01.jpg" alt="">
        </div>
        <h5>CI 사용 시 <span>유의사항</span></h5>
        CI는 각종시각매체에 적용하여 우리금융그룹 이미지를 전달하는 기능을 하므로 엠블럼, 로고 사용시 아래에 표기된 기준을 준수하며 임의로 변경하여 사용할 수<br />
        없습니다.
        <br />
        <br />
        <h5>CI <span>규정</span></h5>
        CI 조합은 심볼마크와 로고타입을 일정한 기준에 따라 조합한 것을 말하며 이 같은 경우 기본적인 표식은 심볼마크이고 로고타입은 회사명을 명확하게 해주는<br />
        요소입니다.
        <p class="ci-manual__subtxt">※ 우리금융그룹 CI의 불법적인 도용 및 사용을 금지하며 불법사용시 관련 법에 의해 처벌을 받을 수 있습니다.</p>
        <br />
        <h5>우리자산신탁</h5>
        <div class="ci-manual__img02">
          <img src="/images/content/ci-manual02.jpg" alt="">
        </div>
        <a href="/download/우리자산신탁_CI.zip" class="ci-manual__btn">CI 다운받기</a>
      </div>
      <!-- //컨텐츠 영역 -->
    </div>
  </div>
  <!-- //content -->
</div>
</html>