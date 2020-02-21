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
    <h3>PFV사업</h3>
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
        <a href="#none">PFV사업</a>
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
      <h4>PFV사업</h4>
      <div class="pfv">
        <h5><span>PFV(Project Financing Vehicle)사업</span>이란?</h5>
        <p>
          PFV는 Project Financing을 위한 특수목적회사입니다.<br />
          PFV 사업에 참여하시면 프로젝트의 투명성 확보와 세제상 지원을 받을 수 있습니다.
        </p>
        <h5>PFV사업의 <span>구조도</span></h5>
        <img src="/images/content/pfv02.jpg" alt="">
        <h5><span>기본</span>요건</h5>
        <ul class="txt-list">
          <li>설립 자본금 50억 이상 (주식회사)</li>
          <li>회사 존립기간 2년 이상</li>
          <li>금융기관이 1인 이상, 5%이상 지분출자</li>
        </ul>
        <h5><span>업무</span>범위</h5>
        <ul class="txt-list">
          <li>사업발주 계약, 사업내용 감시, 용역 계약체결</li>
          <li>자산의 매입, 관리, 운용 및 처분</li>
          <li>자금의 차입 및 사채발행</li>
        </ul>
        <h5><span>세제</span>혜택</h5>
        <ul class="txt-list">
          <li>수도권내 법인 설립시 등록세 3배 중과 배제</li>
          <li>소득공제 (배당가능이익의 90% 이상 배당시)</li>
        </ul>
        <h5>부동산투자회사(REITs)를 통한 <span>부동산 유동화</span></h5>
        <ul class="txt-list">
          <li>
            &lt;부동산투자회사법&gt;에 의한 부동산투자회사는 자산을 부동산에 투자하여 운용하는 것을 목적으로 설립된 주식회사 형태의 법인으로서 주식의 공모 또는<br />
              사모를 통해 조달된 자금으로 부동산에 대한 투자업무를 수행하게 되며, 일반투자자들은 부동산투자회사의 주식에 투자함으로써 부동산에 대한<br />
              간접 투자효과를 누리게 됩니다.
          </li>
          <li>이와 같은 부동산투자회사를 통해 부동산은 주식의 형태로 증권화되어 자본시장에 유통됩니다</li>
        </ul>
      </div>
      <!-- //컨텐츠 영역 -->
    </div>
  </div>
  <!-- //content -->
</div>
<!-- //container -->
</html>