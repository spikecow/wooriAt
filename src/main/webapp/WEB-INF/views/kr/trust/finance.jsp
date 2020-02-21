<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<!-- container -->
<div id="container" class="trust">
  <!-- 각 메뉴명 고유 클래스 삽입 -->
  <!-- title area -->
  <div class="title_area">
    <h3>부동산금융</h3>
  </div>
  <!-- //title area -->
  <!-- lnb area -->
  <div class="lnb_area">
    <div class="lnb_wrap">
      <div class="loc">
        <span class="home"><span class="blind">홈</span></span>
        <span class="dep1">신탁상품</span>
      </div>
      <div class="dep2">
        <a href="#none">부동산금융</a>
        <ul class="dep_list">
          <li><a href="/trust/land">토지신탁</a></li>
          <li><a href="/trust/manage_land">관리형토지신탁</a></li>
          <li><a href="/trust/sale">분양관리신탁</a></li>
          <li><a href="/trust/security">담보신탁</a></li>
          <li><a href="/trust/disposal">처분신탁</a></li>
          <li><a href="/trust/manage">관리신탁</a></li>
          <li><a href="/trust/agency">대리사무</a></li>
          <li><a href="/trust/city">도시개발사업</a></li>
          <li><a href="/trust/pfv">PFV사업</a></li>
          <li><a href="/trust/assets">자산관리</a></li>
          <li><a href="/trust/finance">부동산금융</a></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- //lnb area -->
  <!-- content -->
  <div id="content">
    <div class="content_wrap">
      <!-- 컨텐츠 영역 -->
      <h4>부동산금융</h4>
      <div class="finance">
        <h5><span>부동산금융</span>이란?</h5>
        <p>
          현금창출이 가능한 비유동성자산을 이용하여 현금화(유동화)하는 것으로서, 대출채권이나 수익성 있는 부동산 등 현금창출가능 자산을<br />
          집합화하여 증권을 발행하거나 또는 부동산투자회사를 설립하여 투자자들을 모집하는 방식 등이 있습니다. 이러한 부동산금융서비스를<br />
          이용하는 효과는 현금회수 등을 통한 재무구조개선, 다양한 투자수단의 제공, 자금의 안정적인 운용 등이 있습니다.
        </p>
        <h5><span>자산유동화증권</span>(ABS : Asset Backed Securities)</h5>
        <ul class="txt-list">
          <li>
            유동화 전문회사(SPC)가 자산보유자로부터 유동화자산을 양도받아 이를 기초로 자산유동화증권을 발행하고 유동화 자산의 관리·운용·처분에 따른 수익으로<br />
            자산유동화증권의 원리금을 지불하는 방식
          </li>
          <li>
            자산보유자로부터 유동화자산을 신탁받아 이를 기초로 자산유동화증권을 발행하는 방식
          </li>
          <li>
            자산유동화증권을 발행하여 투자자의 투자금액으로 자산보유자로부터 유동화자산을 양도 받는 방식
          </li>
          <li>
            유동화전문회사 또는 신탁회사가 다른 유동화전문회사 또는 신탁회사로부터 유동화자산 또는 이를 기초로 발행된 자산유동화증권을 양도 또는 신탁받아 이를<br />
            기초로 자산유동화증권을 발행하는 방식
          </li>
        </ul>
        <h5><span>주택저당채권유동화증권</span>(MBS : Mortgage Backed Securities)을 통한 부동산 유동화</h5>
        <ul class="txt-list">
          <li>MBS는 금융기관이 보유한 주택저당채권을 직접 매각 또는 증권화하여 현금화하는 것을 의미합니다.</li>
          <li>주택저당채권은 주택의 구입 또는 건축에 소요되는 대출자금에 대한 채권으로서 당해 주택에 설정된 저당권에 의한 담보채권을 말합니다.</li>
        </ul>
      </div>
      <!-- //컨텐츠 영역 -->
    </div>
  </div>
  <!-- //content -->
</div>
<!-- //container -->
</html>