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
          <li><a href="#none">비전</a></li>
          <li><a href="#none">연혁</a></li>
          <li><a href="#none" class="curr">CEO 인사말</a></li>
          <li><a href="#none">조직도</a></li>
          <li><a href="#none">윤리강령</a></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- //lnb area -->
  <!-- content -->
  <div id="content">
    <div class="content_wrap">
      <!-- 컨텐츠 영역 -->
      <h4>CEO 인사말</h4>
      <div class="ceo">
        <div class="ceo__head">
          <div class="ceo__title">
            고객님의 성공을 위해
            <p>
              최고의 전문가로 구성된<br />
              종합부동산금융 서비스를 지원하며<br />
              <strong><span>언제나 든든한 파트너</span></strong>가<br />
              되겠습니다.
            </p>
          </div>
          <div class="ceo__name01">
            이창재<br />
            대표이사
          </div>
          <div class="ceo__name02">
            이창하<br />
            대표이사
          </div>
        </div>
        <div class="ceo__text">
          고객님 반갑습니다.<br />
          <br />
          우리자산신탁은 고객님께 최고의 금융서비스를 제공하기 위해 우리금융그룹이 새로이 인수한 종합부동산금융 회사 입니다.<br />
          저희 회사는 20년 가까이 쌓아온 경험과 고객 신뢰를 바탕으로 보유 신탁자산 30조를 넘는 규모로 지속적인 성장을 추진하고 있습니다.<br />
          <br />
          무엇보다 고객님의 만족을 위해 우리금융그룹의 모든 금융서비스를 복합적으로 제공할 것이며 고객님의 자산을 안전하며 수익성 높게 든든히<br />
          관리하도록 하겠습니다. 우리자산신탁과 언제나 함께 하여주시길 부탁드립니다.<br />
          <br />
          감사합니다.
          <div class="ceo__sign">
            공동 대표이사
            <img src="/images/content/ceo_sign.png" alt="">
          </div>
        </div>
      </div>
      <!-- //컨텐츠 영역 -->
    </div>
  </div>
  <!-- //content -->
</div>
</html>