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
    <h3>관리형토지신탁</h3>
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
        <a href="#none">관리형토지신탁</a>
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
      <h4>관리형토지신탁</h4>
      <div class="manage-land">
        <h5><span>관리형 토지신탁</span>이란?</h5>
        <p>
          건축자금이나 개발 Know-how가 없는 토지소유자를 위하여 신탁회사가 토지소유자로부터 토지를 신탁 받아 신탁회사의 전문지식을<br />
          바탕으로 건축 또는 택지조성하고 이를 분양 또는 임대하여 발생한 수익을 토지소유자에게 돌려드리는 제도인 일반형 토지(개발)신탁과<br />
          유사한 개념으로 신탁회사가 당해 사업의시행자(사업주체)가 되지만, 사업비 조달을 위탁자 또는 시공사가 하여 사업을 진행하는<br />
          신탁 제도입니다.
        </p>
        <h5>관리형토지신탁의 <span>구조도</span></h5>
        <img src="/images/content/manage_land02.jpg" alt="">
        <h5>관리형 토지신탁의 <span>종류</span></h5>
        <ul class="txt-list">
          <li>
            <strong>분양형 토지신탁</strong><br />
            - 신탁토지에 건축, 택지조성 등의 사업을 시행한 후 이를 분양하여 발생하는 분양수익을 수익자에게 교부하는 신탁
          </li>
          <li>
            <strong>임대형 토지신탁 </strong><br />
            - 신탁토지에 건축, 택지조성 등의 사업을 시행한 후 일정기간 동안 임대하여 발생하는 임대수익을 수익자에게 교부 하는 신탁
          </li>
        </ul>
        <h5>관리형 토지신탁의 <span>장점</span></h5>
        <ul class="txt-list">
          <li>
            <strong>사업 안정성 제고</strong><br />
            - 개발사업에 대한 시행자의 권한을 신탁회사가 이양 받아 사업관리를 하므로 준공 정산 시까지 안정적인 개발사업을 수행할 수 있습니다.<br />
            - 신탁법에 의해 신탁재산(부동산, 자금)이 온전히 보전되어 개발사업 추진 시 신탁재산에 대한 제한물권 설정을 방지하고 신탁재산의 강제 집행이 금지되어<br />
            &nbsp;&nbsp;안정적인 사업추진이 가능합니다.
          </li>
          <li>
            <strong>분양성 제고 및 투명한 자금관리 </strong><br />
            - 신탁회사가 분양계약 당사자가 되므로 대외적으로 수분양자들에게 안정적인 사업구도를 표명할 수 있어 분양률을 효과적으로 제고할 수 있으며 신탁법에<br />
            &nbsp;&nbsp;의한 개별 계정관리를 통한 투명한 자금관리로 수분양자의 신뢰를 확보할 수 있습니다.
          </li>
          <li>
            <strong>사업지연 예방</strong><br />
            - 계약지연, 약정위반, 부당행위를 원천적으로 방지하고 시공사와 시행사간 예기치 않은 분쟁으로 준공, 입주지연 등을 사전에 예방 (신탁회사 명의 보존등기)<br />
            &nbsp;&nbsp;하고, 이해관계인의 실질적인 권한을 향유할 수 있습니다.<br />
            - 공사비 채권의 안전한 확보가 보장되어 분양 및 미분양분에 대한 신속한 처리가 가능합니다.
          </li>
          <li>
            <strong>상업시설의 선분양 및 안정적인 현금흐름 유지 </strong><br />
            - "건축물분양에 관한 법률"의 시행에 따라 상업시설의 선분양은<br />
            <ol>
              <li>① 신탁사와 신탁계약 및 대리사무 계약체결</li>
              <li>② 보증보험 상품 이용</li>
              <li>③ 골조공사 2/3완료 후 2개 시공사 연대보증 시에만 가능합니다.</li>
            </ol>
            따라서 관리형 토지신탁사업으로 상업시설 선분양 및 안정적 현금흐름 유지가 가능합니다.<br />
            통상, 시공사간 타사 연대보증을 회피하는 경향이 많고 보증보험 상품 대비 신탁회사는 저렴한 신탁수수료로 경쟁력이 높은 것은 물론, 지속적인 사후관리<br />
            서비스가 가능합니다.
          </li>
        </ul>
        <h5>관리형 토지신탁과 <span>일반형 토지신탁</span>의 비교</h5>
        <div class="board_list_type4">
          <table summary="역할, 관리형 토지신탁, 일반형 토지신탁 항목으로 구성된 테이블입니다.">
            <caption>관리형 토지신탁과 일반형 토지신탁의 비교</caption>
            <colgroup>
              <col width="18%">
              <col width="41%">
              <col width="41%">
            </colgroup>
            <thead>
            <tr>
              <th scope="col">역할</th>
              <th scope="col">관리형 토지신탁</th>
              <th scope="col">일반형 토지신탁</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>사업주체</td>
              <td>신탁회사</td>
              <td>신탁회사</td>
            </tr>
            <tr>
              <td>사업비 조달</td>
              <td>위탁자 또는 시공사</td>
              <td>신탁회사</td>
            </tr>
            </tbody>
          </table>
        </div>

      </div>
      <!-- //컨텐츠 영역 -->
    </div>
  </div>
  <!-- //content -->
</div>
<!-- //container -->
</html>