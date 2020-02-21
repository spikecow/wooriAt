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
    <h3>관리신탁</h3>
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
        <a href="#none">관리신탁</a>
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
      <h4>관리신탁</h4>
      <div class="manage">
        <h5><span>관리신탁</span>이란?</h5>
        <p>
          신탁재산으로 인수한 부동산을 소유자를 대신하여<br />
          소유권을 관리하거나, 임대차관리, 시설의 유지관리, 법률 및 세무관리, 수익금의 고수익운용 등 수탁 받은 부동산 관련 업무일체를<br />
          관리해 드리는 제도입니다.
        </p>
        <h5>관리신탁의 <span>종류</span></h5>
        <div class="board_list_type4">
          <table summary="갑종 부동산관리신탁, 을종 부동산관리신탁 항목으로 구성된 테이블입니다.">
            <caption>관리신탁의 종류</caption>
            <colgroup>
              <col width="50%">
              <col width="50%">
            </colgroup>
            <thead>
            <tr>
              <th scope="col">갑종 부동산관리신탁</th>
              <th scope="col">을종 부동산관리신탁</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>임차인관리, 건물관리, 소유권관리 등 일체의 관리업무</td>
              <td>등기부상의 소유권만 관리</td>
            </tr>
            </tbody>
          </table>
        </div>
        <h5>관리신탁의 <span>구조도</span></h5>
        <img src="/images/content/manage02.jpg" alt="">
        <h5>관리신탁의 <span>장점</span></h5>
        <ul class="txt-list etc">
          <li>신탁회사가 맡아서 부동산을 관리함으로써 소유자는 관리부담에서 벗어날 수 있습니다.</li>
          <li>신탁회사가 부동산을 임대차관리, 시설유지관리, 법률 및 세무관리, 수익관리 등 일체의 종합적인 관리를 해드립니다.</li>
          <li>신탁회사가 부동산을 안전하고 효율적으로 관리하여 수익을 소유자에게 돌려드립니다.</li>
          <li>신탁회사의 전문 노하우를 활용하여 관리비용을 절감하실 수 있습니다.</li>
        </ul>
        <h5>관리신탁의 <span>활용 사례</span></h5>
        <ul class="txt-list">
          <li>
            <strong>소유자가 직접 관리하기 어려운 부동산을 효율적인 관리 하고자 하는 경우</strong><br />
            - 각종 사유로 부동산 관리가 어려운 경우 신탁회사에 관리신탁을 맡기시면 신탁회사가 소유자를 대신하여 소유권을 관리하거나 임대차관리, 시설의 유지관리,<br />
            &nbsp;&nbsp;소유권의 법률 및 세무관리, 수익금의 고수익관리 등 일체의 관리를 해주고 그 수익을 소유자에게 돌려드립니다.
          </li>
          <li>
            <strong>예기치 못한 미래 상황에 대비하여 안전한 재산권의 보호가 필요한 경우</strong><br />
            - 신탁회사에 관리신탁을 맡기시면 신탁기간 동안 신탁법에 근거하여 가압류 등 제 3자의 강제집행이 배제되어 부당한 권리 침해로부터 권리를 보호받을 수<br />
            &nbsp;&nbsp;있습니다.
          </li>
          <li>
            <strong>보유부동산에 대한 보다 높은 수익을 기대하는 경우 </strong><br />
            - 신탁회사의 공신력 및 영업망을 이용하여 임대율을 높여 드립니다.
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