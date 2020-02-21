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
    <h3>담보신탁</h3>
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
        <a href="#none">담보신탁</a>
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
      <h4>담보신탁</h4>
      <div class="security">
        <h5><span>담보신탁</span>이란?</h5>
        <p>
          현행 저당제도를 대신할 수 있는 선진담보기법으로 부동산소유자가 자신의 채무이행을 보장하기 위하여 소유권을 신탁회사에 이전하고<br />
          신탁회사로부터 수익권증서를 교부 받아 그 수익권증서를 담보로 금융기관에서 대출을 받을 수 있는 제도이며, 현행 저당제도보다<br />
          신속하고 비용도 저렴합니다.
        </p>
        <h5>담보신탁의 <span>구조도</span></h5>
        <img src="/images/content/security03.jpg" alt="">
        <h5>담보신탁의 <span>장점</span></h5>
        <ul class="txt-list">
          <li>부동산담보신탁은 담보제공자에게는 비용절감의 혜택을, 금융기관에게는 채권확보 및 담보관리의 편리성을 드립니다.</li>
        </ul>
        <div class="board_list_type4">
          <table summary="역할, 일반형 토지신탁 항목으로 구성된 테이블입니다.">
            <caption>담보신탁의 장점</caption>
            <colgroup>
              <col width="13%">
              <col width="87%">
            </colgroup>
            <thead>
            <tr>
              <th scope="col">역할</th>
              <th scope="col">일반형 토지신탁</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>
                부동산소유자<br />
                (채무자)
              </td>
              <td>
                <ul class="txt-list">
                  <li>대출관련 부대비용 절감</li>
                  <li>채권실행시 공매로 처리하기 때문에 법원경매의 폐해(저가경락 및 경락지연에 따른 재산손실) 예방</li>
                  <li>소유권이 신탁사에 이전되므로 압류, 경매 등 각종 권리 설정이 배제되어 재산권을 보호받을 수 있음</li>
                  <li>추가 대출시 비용절감 및 절차 간편</li>
                </ul>
              </td>
            </tr>
            <tr>
              <td>
                채권기관<br />
                (대출기관)
              </td>
              <td>
                <ul class="txt-list">
                  <li>신탁회사가 담보물을 관리하여 관리비용 및 인력 절감</li>
                  <li>공매로 처리하기 때문에 채권실행시간 단축 및 비용 절감 가능</li>
                  <li>신탁재산은 담보부동산 소유자가 법정관리, 화의, 파산 등의 법적 절차 중에 있는 경우에도 재산보전처분을 받지 않아 채권보전에 유리함</li>
                </ul>
              </td>
            </tr>
            </tbody>
          </table>
        </div>
        <h5>담보신탁의 제도와 <span>저당제도</span>의 비교</h5>
        <div class="board_list_type4">
          <table summary="구분, 담보신탁, 제당제도 항목으로 구성된 테이블입니다.">
            <caption>담보신탁의 제도와 저당제도의 비교</caption>
            <colgroup>
              <col width="33.333%">
              <col width="33.333%">
              <col width="33.333%">
            </colgroup>
            <thead>
            <tr>
              <th scope="col">구분</th>
              <th scope="col">담보신탁</th>
              <th scope="col">제당제도</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>담보설정방식</td>
              <td>신탁회사로 소유권이전</td>
              <td>근저당권 설정</td>
            </tr>
            <tr>
              <td>담보부동산 관리</td>
              <td>신탁회사 관리</td>
              <td>대출기관 관리</td>
            </tr>
            <tr>
              <td>신규임대차, 후순위권리설정</td>
              <td>배제 가능</td>
              <td>배제 불가능</td>
            </tr>
            <tr>
              <td>담보취득후 우선채권 발생 여부</td>
              <td>신탁등기후 발생 불가</td>
              <td>임금채권 발생가능</td>
            </tr>
            <tr>
              <td>강제집행 방법</td>
              <td>신탁회사 직접 공매</td>
              <td>경매</td>
            </tr>
            <tr>
              <td>강제처분 소요기간</td>
              <td>단기</td>
              <td>장기</td>
            </tr>
            <tr>
              <td>강제집행절차</td>
              <td>간편</td>
              <td>복잡</td>
            </tr>
            <tr>
              <td>강제집행 소요비용</td>
              <td>적음</td>
              <td>많음</td>
            </tr>
            <tr>
              <td>부동산 처분가액</td>
              <td>상대적 고가</td>
              <td>저가</td>
            </tr>
            <tr>
              <td>물상대위권 행사</td>
              <td>사전압류 불필요</td>
              <td>사전압류 필요</td>
            </tr>
            <tr>
              <td>재산보전 처분</td>
              <td>대상 아님</td>
              <td>대상</td>
            </tr>
            <tr>
              <td>채무자의 소용비용</td>
              <td>적음</td>
              <td>많음</td>
            </tr>
            </tbody>
          </table>
        </div>
        <h5>담보신탁의 <span>활용사례</span></h5>
        <ul class="txt-list">
          <li>
            <strong>복잡한 부동산을 신탁한 후 대출받는 경우</strong><br />
            - 부동산소유자가 보유중인 부동산을 담보로 금융기관으로부터 대출을 받을 계획이었으나 담보부동산이 여러 곳에 산재해 있고 일부 부동산에는<br />
            &nbsp;&nbsp;복잡한 권리관계가 있어 담보로 인정받을 수 있을지 고민이었음.<br />
            - 신탁회사에 담보신탁 계약을 체결하여 복잡한 권리관계가 진행중인 부동산에 대한 적절한 조치를 취하고 각 부동산을 수탁하여 이를 근거를 신속히<br />
            &nbsp;&nbsp;수익권증서를 발급함으로써 부동산 소유자가 금융기관에서 쉽게 대출을 받을 수 있었음.
          </li>
          <li>
            <strong>적은 비용으로 적기에 대출받은 경우</strong><br />
            - 부동산소유자가 긴급히 자금이 필요하여 금융기관으로부터 담보여신을 지원받을 계획이었으나 각 금융기관별 근저당설정등기절차에 따르는 비용이 많이<br />
            &nbsp;&nbsp;소요될 뿐만 아니라 무엇보다 시간이 촉박하여 적기에 자금을 지원받을 수 없는 위기에 처하였음.<br />
            - 신탁회사의 담보신탁 계약을 체결하여 신속히 등기절차를 완료하고 금융기관에 수익권증서를 발급하여 저렴한 비용으로 부동산 소유자가 필요한 시기에<br />
            &nbsp;&nbsp;대출을 받을 수 있게 되었음.
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