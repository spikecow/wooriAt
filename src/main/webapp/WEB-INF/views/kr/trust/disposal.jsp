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
    <h3>처분신탁</h3>
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
        <a href="#none">처분신탁</a>
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
      <h4>처분신탁</h4>
      <div class="disposal">
        <h5><span>처분신탁</span>이란?</h5>
        <p>
          소유부동산의 처분방법이나 절차에 어려움이 있는 부동산 또는 대형, 고가의 부동산을 효율적으로 처분할 필요가 있을 경우<br />
          신탁회사에 부동산 처분을 의뢰하시면 신탁회사가 적정한 수요자를 발굴하여 부동산을 처분하여 그 처분대금을 수익자에게<br />
          교부해 드리는 제도입니다.
        </p>
        <h5>처분신탁의 <span>종류</span></h5>
        <div class="board_list_type4">
          <table summary="갑종 부동산처분신탁, 을종 부동산처분신탁 항목으로 구성된 테이블입니다.">
            <caption>처분신탁의 종류</caption>
            <colgroup>
              <col width="50%">
              <col width="50%">
            </colgroup>
            <thead>
            <tr>
              <th scope="col">갑종 부동산처분신탁</th>
              <th scope="col">을종 부동산처분신탁</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>종합관리 처분</td>
              <td>소유권 처분</td>
            </tr>
            </tbody>
          </table>
        </div>
        <h5>처분신탁의 <span>구조도</span></h5>
        <img src="/images/content/disposal02.jpg" alt="">
        <h5>처분신탁의 <span>장점</span></h5>
        <ul class="txt-list etc">
          <li>신탁회사의 공신력으로 거래의 안전성을 높여 드립니다.</li>
          <li>신탁회사의 전문 노하우를 활용하여 신속하게 처분해드립니다.</li>
          <li>신탁회사의 정보망을 통하여 적정한 수요자를 발굴하여 단시일내 최고의 가격으로 처분해 드립니다.</li>
          <li>소유자의 보안이 필요한 경우 부동산 소유자를 대신하여 신탁회사가 처분하여 소유권 이전을 해드립니다.</li>
        </ul>
        <h5>처분신탁의 <span>활용 사례</span></h5>
        <ul class="txt-list">
          <li>
            <strong>해외이민 또는 해외장기체류 등으로 부동산을 처분하기 어려운 경우</strong><br />
            - 부동산 소유자를 대신하여 신탁회사가 안전하게 처분하여 수익을 돌려드립니다.
          </li>
          <li>
            <strong>잔금정산까지 장기간이 소요되어 소유권 관리에 안전을 요하는 부동산</strong><br />
            - 신탁회사가 안전하게 관리하여 처분하고 소유권 이전을 해드립니다.
          </li>
          <li>
            <strong>시공사가 도급계약 또는 용역계약의 대가로 지급 받는 대물 부동산을 직접 소유권을 이전 받지 않고 처분신탁 하는 경우 </strong><br />
            - 각종 제세공과금 절감 효과가 발생하며 권리를 안전하게 보호 받을 수 있습니다.
          </li>
          <li>
            <strong>시공사가 토지매입비 등을 시행사에 대여(지주공동사업 등)하여 시행사 명의로 매입한 부동산을 처분신탁 하는 경우 </strong><br />
            - 지주명의로 사업수행 불능 사유 발생시 사업부지 확보가 가능하여 원활한 사업 추진이 가능합니다.
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