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
    <h3>도시개발사업</h3>
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
        <a href="#none">도시개발사업</a>
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
      <h4>도시개발사업</h4>
      <div class="city">
        <h5><span>도시개발사업</span>이란?</h5>
        <p>
          당사는 평택 신흥지구, 창원 무동지구, 대전 학하지구 등 도시개발사업 대리사무를 수주하여 많은 노하우를 축척하였으며<br />
          효율적인 금융관리 및 건설관리의 합리적 조정과 신탁제도를 활용한 사업의 안정성 및 투명한 사업관리를 통해서<br />
          성공적인 프로젝트를 수행합니다.
        </p>
        <h5>도시개발사업 <span>구조도</span></h5>
        <img src="/images/content/city02.jpg" alt="">
        <h5>도시개발사업 <span>개요</span></h5>
        <ul class="txt-list">
          <li>
            <strong>도시개발사업의 정의</strong><br />
            - 도시개발구역 안에서 주거·상업·산업·유통·정보통신·생태·문화·보건 및 복지 등의 기능을 가진 단지 또는 시가지를 조성하기 위하여 시행하는 사업<br />
            &nbsp;&nbsp;(도시개발법 제2조 제1항 제2호)
          </li>
          <li>
            <strong>도시개발사업의 목적</strong><br />
            - 계획적이고 체계적인 도시개발을 도모하고 쾌적한 도시환경의 조성과 공공복리의 증진에 기여함(도시개발법 제1조)
          </li>
          <li>
            <strong>도시개발법 제정 경과</strong><br />
            - 그 동안의 도시개발은 주택단지개발, 산업단지개발 등과 같은 단일 목적의 개발방식으로 추진되어 신도시의 개발 등 복합적 기능을 갖는 도시를 종합적<br />
            &nbsp;&nbsp;체계적으로 개발 하는 데는 한계가 있었는 바, 종전의 도시계획법의 도시계획사업에 관한 부분과 토지구획정리사업법을 통합 보완하여 도시개발에 관한<br />
            &nbsp;&nbsp;기본법으로서 도시개발법을 제정함으로써 종합적 체계적인 도시개발을 위한 법적 기반을 마련하는 한편, 도시개발에 대한 민간부문의 참여를 활성화하여<br />
            &nbsp;&nbsp;다양한 형태의 도시 개발이 가능하도록 하였음.
          </li>
          <li>
            <strong>도시개발구역의 규모</strong><br />
            - 도시개발구역의 지정대상면적은 도시계획구역안과 구역 밖으로 구분 함(영 제2조제1항)
            <ol>
              <li>
                ① 도시계획구역 안의 경우<br />
                &nbsp;&nbsp;&nbsp;&nbsp;· 주거지역 및 상업지역은 1만㎡ 이상<br />
                &nbsp;&nbsp;&nbsp;&nbsp;· 공업지역은 3만㎡ 이상<br />
                &nbsp;&nbsp;&nbsp;&nbsp;· 자연녹지지역 : 1만㎡ 이상<br />
                &nbsp;&nbsp;&nbsp;&nbsp;· 생산녹지지역(생산녹지지역이 도시개발구역 지정면적의 30% 이하인 경우에 한함) : 1만㎡ 이상<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 자연녹지지역인 경우에는 광역도시계획 또는 도시기본계획상 개발이 가능한 지역에만 지정하여야 함.<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 생산녹지지역 또는 보전녹지지역을 불가피하게 도시개발구역에 포함시키고자 할 때에는 도시계획으로 먼저 용도지역을 자연녹지지역으로 변경한 후에<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;도시개발구역을 지정하여야 함.
              </li>
              <li>② 도시계획구역 밖은 30만㎡ 이상</li>
            </ol>
          </li>
        </ul>
        <h5><span>사업</span>방식</h5>
        <ul class="txt-list">
          <li>
            도시개발사업은 시행자가 도시개발구역 안의 토지 등을 수용 또는 사용하는 방식이나 환지방식 또는 이를 혼용하는 방식으로 시행할 수 있음.<br />
            (도시개발법 제20조 제1항)</li>
        </ul>
        <p class="txt-list__txt">① 사업방식의 기준</p>
        <div class="board_list_type4">
          <table summary="구분, 기준 항목으로 구성된 테이블입니다.">
            <caption>사업방식의 기준</caption>
            <colgroup>
              <col width="20%">
              <col width="80%">
            </colgroup>
            <thead>
            <tr>
              <th scope="col">구분</th>
              <th scope="col">기준</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>수용 또는 사용방식</td>
              <td class="tl">당해 도시의 주택건설에 필요한 택지 등의 집단적인 조성 또는 공급이 필요한 경우</td>
            </tr>
            <tr>
              <td>환지방식</td>
              <td class="tl">
                <p>
                  대지로서의 효용증진과 공공시설의 방비를 위하여 토지의 교환.분합 기타의 구획변경, 지목 또는 형질의 변경이나<br />
                  공공시설의 설치변경이 필요한 경우 또는 도시개발사업을 시행하는 지역의 지가가 인근의 다른 지역에 비해 현저히<br />
                  높아 수용 또는 사용하는 방식으로 시행하는 것이 어려운 경우
                </p>
              </td>
            </tr>
            <tr>
              <td>혼용방식</td>
              <td class="tl">도시개발구역으로 지정하고자 하는 지역이 부분적으로 위의 경우에 해당하는 경우</td>
            </tr>
            </tbody>
          </table>
        </div>
        <p class="txt-list__txt">② 사업방식별 시행자</p>
        <div class="board_list_type4">
          <table summary="수용 또는 사용방식(매수방식), 환지방식 항목으로 구성된 테이블입니다.">
            <caption>사업방식별 시행자</caption>
            <colgroup>
              <col width="50%">
              <col width="50%">
            </colgroup>
            <thead>
            <tr>
              <th scope="col">수용 또는 사용방식(매수방식)</th>
              <th scope="col">환지방식</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td class="tl">
                <p>
                  ① 국가 또는 지방자치단체<br />
                  ② 정부투자기관(한국토지공사 / 대한주택공사 / 한국수자원공사/<br />
                  &nbsp;&nbsp;&nbsp;&nbsp;농업기반공사 / 한국관광공사 / 한국철도공사)<br />
                  ③ 지방공사<br />
                  ④ 토지소유자(토지면적의 2/3이상 소유자), 조합<br />
                  ⑤ 수도권정비계획법에 의한 지방이전법인<br />
                  ⑥ 건설사업기본법에 의한 일반건설업자 (토목공사업 및 토목건축 공사업)<br />
                  ⑦ ①~⑥호 해당자 2 이상이 도시개발사업을 목적으로 출자하여 설립한<br />
                  &nbsp;&nbsp;&nbsp;&nbsp;법인
                </p>
              </td>
              <td class="tl">
                <p>
                  ① 토지소유자 또는 조합<br />
                  &nbsp;* ① 항의 규정에 불구하고 다음의 경우 지정권자가 사업시행자를 지정함<br />
                  &nbsp;&nbsp;&nbsp;&nbsp;- 토지소유자 또는 조합이 시행자 지정을 신청하지않거나 신청내용이<br />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;위법부당 할 경우<br />
                  &nbsp;&nbsp;&nbsp;&nbsp;- 지방자치단체장이 집행하는 공공시설공사와 병행<br />
                  &nbsp;&nbsp;&nbsp;&nbsp;- 지방자치단체 등의 시행에 동의한 때(면적 : 1/2, 토지소유자 : 1/2)<br />
                  <br />
                  《시행자 범위》<br />
                  한국토지공사, 대한주택공사, 지방공사, 신탁회사<br />
                </p>
              </td>
            </tr>
            </tbody>
          </table>
        </div>
        <h5>도시개발사업 <span>개요</span></h5>
        <ul class="txt-list">
          <li>토지수용방식(민간시행자인 경우)</li>
        </ul>
        <img src="/images/content/city03.jpg" alt="">
        <h5><span>환지</span>방식</h5>
        <ul class="txt-list">
          <li>토지면적의 3분의2 이상, 토지소유자 총수의 3분의1 이상 동의(도시개발법 제4조)</li>
        </ul>
        <img src="/images/content/city04.jpg" alt="">
        <h5>당사의 <span>장점</span> </h5>
        <ul class="txt-list">
          <li>
            <strong>컨설팅</strong><br />
            - 프로젝트의 잠재적 가치를 정확히 예측 분석하여 프로젝트 개발의 타당성을 검토해 드립니다.
          </li>
          <li>
            <strong>프로젝트파이낸싱</strong><br />
            - 최적의 금융구도를 개발하고 이에 맞는 도시개발에 관한 많은 노하우를 갖고 있는 시공사 및 금융기관을 연계해 드립니다.<br />
            &nbsp;&nbsp;(당사는 시행사로 참여할 수 있습니다.)
          </li>
          <li>
            <strong>자금관리</strong><br />
            - 투명한 자금관리 및 정확한 기성관리를 통해 프로젝트의 수익률을 지켜드립니다.
          </li>
          <li>
            <strong>사업정산</strong><br />
            - 사업정산에 소요되는 비용을 최소화 시켜 사업주 이익을 극대화 시켜드립니다.
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