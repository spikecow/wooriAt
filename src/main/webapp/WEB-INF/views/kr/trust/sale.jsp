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
    <h3>분양관리신탁</h3>
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
        <a href="#none">분양관리신탁</a>
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
      <h4>분양관리신탁</h4>
      <div class="sale">
        <h5><span>분양관리신탁</span>이란?</h5>
        <p>
          「건축물의 분양에 관한 법률」이 시행됨에 따라 상가, 오피스텔 등 상업용부동산을 선분양하기 위하여 사업시행자인 분양사업자가<br />
          부동산의 소유권을 부동산신탁회사에 신탁하고 부동산신탁회사에서 분양 및 공정관리 등을 수행함으로써 수분양자의 보호와 함께<br />
          분양사업자의 성공적인 사업수행을 지원하는 제도입니다.
        </p>
        <h5>분양관리신탁의 <span>적용대상</span></h5>
        <ul class="txt-list">
          <li>분양하는 부분의 바닥면적의 합계가 3,000㎡ 이상인 건축물</li>
          <li>오피스텔로서 30실이상인 경우</li>
          <li>주택외의 시설과 주택을 동일 건축물로 건축하는 건축물중 주택외의 용도에 쓰이는 바닥면적이 합계가 3,000㎡ 이상인 경우</li>
          <li>바닥면적의 합계가 3,000㎡이상으로서 임대 후 분양전환을 조건으로 임대하는 경우</li>
        </ul>
        <h5>분양관리신탁의 <span>구조도</span></h5>
        <img src="/images/content/sale02.jpg" alt="">
        <h5>분양관리신탁의 <span>장점</span></h5>
        <ul class="txt-list">
          <li>공사착공후 선분양이 가능하여 분양사업자는 조기대금회수로 안정적인 사업추진이 가능합니다.</li>
          <li>신탁법에 의한 신탁등기로 사업부지의 소유권이 법적으로 보호됩니다.</li>
          <li>수분양자는 분양사업자의 채무불이행시 신탁재산의 환가, 처분 등을 통하여 분양대금을 우선 반환받게 됩니다.</li>
          <li>신탁회사가 분양 및 공정관리를 수행함으로써 안정적인 사업추진과 계약자 보호가 가능합니다.</li>
        </ul>
        <h5>분양관리신탁의 <span>활용 사례</span></h5>
        <ul class="txt-list">
          <li>
            <strong>분양사업 시행자가 공사착공후 분양하고자 할 때 </strong><br />
            - 분양사업 시행자가 신탁회사와 신탁 및 대리사무계약을 체결하면「건축물 분양에 관한 법률」에서 정한 선분양이 가능합니다. 또한 신탁회사는 부동산 소유권<br />
            &nbsp;&nbsp;및 분양대금을 보전, 관리하게 함으로써 성공적인 분양사업이 되도록 지원하고 및 수분양자 보호장치로 인해 분양촉진의 효과를 가져올 수 있습니다.
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