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
    <h3>토지신탁</h3>
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
        <a href="#none">토지신탁</a>
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
      <h4>토지신탁</h4>

      <div class="land">
        <h5><span>토지신탁</span>이란?</h5>
        <p>
          건축자금이나 개발 Know-How가 부족한 토지소유자를 위하여 신탁회사가 토지소유자로부터 토지를 신탁 받아 개발계획의 수립,<br />
          건설자금의 조달, 공사관리, 건축물의 분양 및 임대 등 개발사업의 전 과정을 신탁회사가 수행하고 발생한 수익을 토지소유자<br />
          (위탁자 또는 수익자)에게 돌려주는 제도입니다.
        </p>
        <h5>토지신탁의 <span>구조도</span></h5>
        <img src="/images/content/land02.jpg" alt="">
        <h5>토지신탁과 <span>관리형토지신탁</span>의 비교</h5>
        <div class="board_list_type4">
          <table summary="구분, 토지신탁, 관리형 토지신탁 항목으로 구성된 테이블입니다.">
            <caption>토지신탁과 관리형토지신탁의 비교</caption>
            <colgroup>
              <col width="15%">
              <col width="30%">
              <col width="65%">
            </colgroup>
            <thead>
            <tr>
              <th scope="col">구분</th>
              <th scope="col">토지신탁</th>
              <th scope="col">관리형 토지신탁</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>특징</td>
              <td>
                <ul class="txt-list">
                  <li>신탁회사가 사업비 자금조달</li>
                  <li>건축주로서 사업수행 의무 부담</li>
                  <li>신탁회사의 Risk가 큼</li>
                </ul>
              </td>
              <td>
                <ul class="txt-list">
                  <li>
                    사업비 조달책임을 사업주가 직접 부담 시공사는 책임준공과 지급보증<br />
                    등을 통해 사업비 조달 협조
                  </li>
                  <li>분양수입금을 사용하여 지급하되 부족 시 시공사 또는 금융기관이 사업비 부담</li>
                  <li>신탁회사는 인허가 및 분양계약 등의 주체로서 자금 입출금 등의 관리업무만을 수행</li>
                  <li>신탁회사의 Risk가 상대적으로 적음</li>
                </ul>
              </td>
            </tr>
            </tbody>
          </table>
        </div>
        <h5>토지신탁의 <span>종류</span></h5>

        <ul class="txt-list">
          <li>
            <strong>분양형 토지신탁 </strong><br />
            - 신탁토지에 건축, 택지조성 등의 사업을 시행한 후 이를 분양하여 발생하는 분양수익을 수익자에게 교부하는 신탁
          </li>
          <li>
            <strong>임대형 토지신탁 </strong><br />
            - 신탁토지에 건축, 택지조성 등의 사업을 시행한 후 일정기간 동안 임대하여 발생하는 임대수익을 수익자에게 교부하는 신탁
          </li>
        </ul>

        <h5>업무<span>흐름도</span></h5>
        <ul class="land-list">
          <li>
            <span>01 . 삼담 및 신탁의뢰</span>토지신탁신청서 / 토지, 건물등기부등본 / 토지 빛 건축물대장 / 토지이용계획 확인서 / 기타 참고서류
          </li>
          <li>
            <span>02 . 기본조사</span>권리 및 법령관계조사 / 현지조사 및 시장조사 / 기타 기초자료 조사
          </li>
          <li>
            <span>03 . 양해각서체결</span>신의성실 및 협력의무 / 신탁일반에 관한 사항 / 부동산권리 서류
          </li>
          <li>
            <span>04 . 사업계획수립</span>사업타당성 검토 및 최유효 활용방안 수립 / 건축 및 자금계획 / 분양 및 임대계획
          </li>
          <li>
            <span>05 . 사업약정체결</span>신탁목적 및 신탁재산 확정 / 설계 감리, 시공사 선정 / 분야계획 / 자금조달 및 차입계획 / 신탁재산의 관리운용 등에 관한 사항
          </li>
          <li>
            <span>06 . 실시계획 작성 및 협의</span>사업계획 협의 및 확정 / 기본설계
          </li>
          <li>
            <span>07 . 신탁계약체결<strong>(신탁등기)</strong></span>소유권이전 및 신탁등기 / 수익권증서 교부
          </li>
          <li>
            <span>08 . 설계 및 시공, 분양</span>설계 및 인허가 / 시공사 선정및 공사도급계약 / 공사착공 / 소요자금 차입 / 분양 및 임대
          </li>
          <li>
            <span>09 . 건물준공</span>준공검사 및 공사비 지급 / 소유권 보존 및 신탁등기 / 화재보험 부보
          </li>
          <li>
            <span>10 . 관리운용</span>미분양처분 / 차입금상환 / 계산기간별 수지계산 및 수익금교부
          </li>
          <li>
            <span>11 . 건물준공</span>사업종료 최종계산서 작성 / 신탁등기 말소 및 소유권이전
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