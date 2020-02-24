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
  <h3>자산관리</h3>
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
      <a href="#none">자산관리</a>
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
    <h4>자산관리</h4>
    <div class="assets">
      <h5><span>자산관리</span>란?</h5>
      <p>
        건물 또는 나대지를 중심으로 하는 부동산의 자산가치 극대화 및 수익 극대화를 목적으로<br />
        부동산 운용/관리처분에 필요한 제반업무를 수행하여 부동산 소유주들에게 최고의 만족을 제공하는 부동산 서비스 입니다.
      </p>
      <h5>자산관리의 <span>종류</span></h5>
      <ul class="txt-list">
        <li>
          <strong>자산관리</strong><br />
          - PM서비스란 대상부동산의 최대가치창출을 위해 재정관리, 세무, 임대차ㆍ매매, 건물관리, 공사프로젝트관리 등의 업무를 수행하여 부동산 소유주와<br />
          &nbsp;&nbsp;입주자들에게 최대의 만족을 제공함으로써 부동산자산이 최대한 효율적으로 운용될 수 있도록 도와드립니다.
        </li>
        <li>
          <strong>임대/임차서비스</strong><br />
          - 당사 네트웍을 활용한 정확한 시장분석과 과학적이고 효율적인 마케팅 전략으로 우량 테넌트 유치(임대)와 치밀한 권리분석과 임차보증금에 대한 채권확보방안<br />
          &nbsp;&nbsp;수립(임차) 으로 전문화된 임대/임차 서비스를 제공합니다.
        </li>
        <li>
          <strong>컨설팅/투자자문</strong><br />
          - 부동산 개발사업 및 운용과 관련하여 입지분석, 시장조사, 사업타당성 분석 등을 통해 고객이 보유하고 있거나 보유예정인 부동산 자산가치를 극대화시킬 수<br />
          &nbsp;&nbsp;있는 최유효 활용방안을 제시해 드립니다.
        </li>
        <li>
          <strong>부동산 개발 대리사무 (인허가 포함)</strong><br />
          - 고객과의 일대일 상담을 통해 물건조사, 권리분석, 투자분석, 마케팅, 계약관련 법률서비스 등을 제공함으로써 고객의 Needs에 부합하는 효율적인<br />
          &nbsp;&nbsp;투자(취득/처분) 의사결정을 도와 드립니다.
        </li>
      </ul>
    </div>
    <!-- //컨텐츠 영역 -->
  </div>
</div>
<!-- //content -->
</div>
<!-- //container -->
</html>