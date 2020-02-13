<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">
<div id="container" class="company">
  <!-- 각 메뉴명 고유 클래스 삽입 -->
  <!-- title area -->
  <div class="title_area">
    <h3>회사개요</h3>
  </div>
  <!-- //title area -->
  <!-- lnb area -->
  <div class="lnb_area">
    <div class="lnb_wrap">
      <div class="loc">
        <span class="home"><span class="blind">홈</span></span>
        <span class="dep1">회사소개</span>
      </div>
      <div class="dep2">
        <a href="#none">회사개요</a>
        <ul class="dep_list">
          <li><a href="/company/overview">회사개요</a></li>
          <li><a href="/company/ci_manual">CI소개</a></li>
          <li><a href="/company/news?menuCd=M&typeCd=01">경영현황</a></li>
          <li><a href="/company/news?menuCd=C">회사소식</a></li>
          <li><a href="/company/recruit">채용정보</a></li>
          <li><a href="/company/location">오시는 길</a></li>
        </ul>
      </div>
      <div class="dep3">
        <ul>
          <li><a href="/company/overview">비전</a></li>
          <li><a href="/company/history">연혁</a></li>
          <li><a href="/company/ceo">CEO 인사말</a></li>
          <li><a href="/company/organization">조직도</a></li>
          <li><a href="/company/ehtics" class="curr">윤리강령</a></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- //lnb area -->
  <!-- content -->
  <div id="content">
    <div class="content_wrap">
      <!-- 컨텐츠 영역 -->
      <h4>윤리강령</h4>
      <div class="ehtics">
        <ul class="txt-list">
          <li>
            우리금융그룹은 우리나라 대표 금융그룹으로서 고객, 주주, 임직원, 나아가 국가와 사회의 더 나은 미래를 위해 힘이 되는 금융그룹을 지향하며, 윤리경영을
            바탕으로 국가경제 및 사회발전에 기여하고자 한다.
          </li>
          <li>이를 위해 임직원이 지켜야 할 윤리강령을 제정하고 적극 실천함으로써 글로벌 금융을 선도하는 우리나라 1등 금융그룹의 역할과 책임을 다하고자 한다.</li>
        </ul>

        <div class="ehtics__text">
          <h5>제1장 고객에 대한 윤리</h5>
          <ul class="txt-list">
            <li>우리금융그룹은 고객의 행복과 신뢰를 최우선으로 생각하고 행동하며, 언제나 고객과 동행한다.</li>
          </ul>
          <ol class="num-list">
            <li><span>1.</span> 고객은 우리금융그룹의 존립과 성장의 원천이다. 따라서 고객의 행복과 신뢰를 소중히 여기고, 고객 중심으로 생각하고 행동한다.</li>
            <li><span>2.</span> 고객의 정당한 이익과 재산을 보호하기 위해 선량한 관리자의 주의의무를 다한다.</li>
            <li><span>3.</span> 고객정보의 비밀을 유지하고, 고객의 승인 없이 외부에 유출하거나 타 용도로 사용하지 않는 등 고객의 이익을 해칠 수 있는 행위를 하지 않는다. </li>
          </ol>

          <h5>제2장 주주에 대한 윤리</h5>
          <ul class="txt-list">
            <li>우리금융그룹은 주주의 권리를 존중하고 주주에게 최상의 가치를 제공하기 위해 노력한다.</li>
          </ul>
          <ol class="num-list">
            <li><span>1.</span> 합리적 경영, 책임경영, 공정한 업무 수행을 통한 정당한 이윤 추구로 주주의 신뢰를 확보한다.</li>
            <li><span>2.</span> 안정적이고 건전한 수익을 실현하여 주주의 투자가치를 극대화하며, 주주의 정당한 권리행사를 최대한 보장한다.</li>
            <li><span>3.</span> 모든 주주를 공정하고 평등하게 대우하며, 전체 주주의 이익을 고려하여 경영의사를 결정함으로써 주주의 이익이나 권리가 부당하게 침해되지 않도록 한다.</li>
            <li><span>4.</span> 주주에게 필요한 정보를 관련법규에 따라 적시에 공평하게 제공하며, 공시되지 않은 정보를 특정 주주에 한정하여 제공하지 아니한다.</li>
            <li><span>5.</span> 일반적으로 인정된 회계원칙에 따라 회계자료를 기록 · 관리하여 회계자료의 정확성과 신뢰성을 유지하며, 효과적인 리스크 관리체제와 내부통제시스템을
              운영하여 금융사고 위험을 미연에 방지하고, 경영환경 변화에 능동적으로 대처한다.</li>
            <li><span>6.</span> 합리적인 의사결정과 투명한 경영활동을 통해 우리금융그룹의 가치가 공정하게 인정받을 수 있도록 노력한다. </li>
          </ol>

          <h5>제3장 임직원에 대한 윤리</h5>
          <ul class="txt-list">
            <li>우리금융그룹은 모든 임직원을 가장 소중한 자산으로 여기고, 우리금융그룹이 개인의 꿈과 미래가 보장되는 자랑스러운 일터가 되도록 노력한다.</li>
          </ul>
          <ol class="num-list">
            <li><span>1.</span> 임직원 개개인을 존엄한 인격체로 대하고 정당한 방법으로 직무를 수행할 수 있도록 제도를 확립한다.</li>
            <li><span>2.</span> 모든 임직원이 자신의 능력을 최대한 발휘할 수 있도록 필요한 자원과 환경을 제공하고, 능력과 성과에 따라 공정하고 합리적으로 평가하고 보상한다.</li>
            <li><span>3.</span> 일과 삶이 조화를 이룰 수 있는 여건을 마련하고, 임직원의 건강과 안전을 위해 쾌적한 근무환경을 조성한다.</li>
            <li><span>4.</span> 임직원이 법규나 윤리강령에 위반되는 부당한 행위를 인지하여 이를 보고하는 경우, 제보자의 비밀을 철저히 보장하고 제보로 인해 어떠한 불이익도
              발생하지 않도록 한다. </li>
          </ol>

          <h5>제4장 국가와 사회에 대한 윤리</h5>
          <ul class="txt-list">
            <li>우리금융그룹은 사회적 책임을 다하고, 국가경제와 사회발전에 기여한다.</li>
          </ul>
          <ol class="num-list">
            <li><span>1.</span> 사회적 책임을 다하는 금융그룹으로서 고용 창출 및 성실한 조세납부 등을 통해 국가경제발전에 이바지한다.</li>
            <li><span>2.</span> 법규 준수는 업무 수행을 위해 필요한 최소 조건임을 인지하고, 제반 법규와 시장질서를 준수하여 공정한 금융질서 확립을 위해 솔선수범한다.</li>
            <li><span>3.</span> 다양한 사회적 가치와 관습을 존중하고, 건전한 기업활동을 저해하는 일체의 부조리를 배격하며, 교육, 문화 및 사회복지사업 등을 통해 기업의 사회적
              책임과 역할을 다한다.</li>
            <li><span>4.</span> 자연환경보호는 지속 가능한 미래사회를 위한 필수요건임을 인식하고, 환경 관련 법규를 준수하며, 환경 보호를 위한 활동에 적극 동참한다.</li>
            <li><span>5.</span> 특정정당이나 후보를 지지하는 의견을 표명하거나 지원함으로써 정치적 중립을 침해하는 행위를 하지 않으며, 정치 또는 자선단체 기부금 등은 관련 법령을
              준수하여 집행한다.</li>
            <li><span>6.</span> 협력업체 및 거래업체와 상생 관계를 구축하고, 공동 발전을 추구함으로써 공정한 사회 실현에 기여한다.</li>
            <li><span>7.</span> 국제 사회의 일원으로서 국제사회의 규범을 준수하며, 진출한 현지 국가의 법령 · 관습 · 문화를 존중한다. </li>
          </ol>

          <h5>제5장 임직원의 근무 윤리</h5>
          <ul class="txt-list">
            <li>모든 임직원은 윤리경영 이념에 입각하여 주어진 역할과 직무에 최선을 다하고, 윤리강령 위반사항에 대해서는 그에 따른 책임을 진다.</li>
          </ul>
          <ol class="num-list">
            <li><span>1.</span> 윤리경영 이념을 공감하고 이를 실현하기 위해 최선을 다한다. 임직원 개개인의 행동에 따라 우리금융그룹의 윤리적 평판이 형성되고 우리의 미래가
              결정된다는 점을 명심한다. 따라서 정직, 신뢰의 원칙을 기본으로 건전하게 판단하고 바르게 행동한다.</li>
            <li><span>2.</span> 회사 또는 고객과 이해가 상충되는 상황이 발생되지 않도록 노력하고, 이해가 상충되는 경우에는 회사와 고객의 이익을 우선하여 행동한다.</li>
            <li><span>3.</span> 업무상 취득한 미공개 내부정보를 이용하거나 적법한 절차에 의하지 아니하고 미공개 정보를 제3자에게 제공하는 등 개인적인 이익을 위해 불공정한 거래를
              하지 아니한다.</li>
            <li><span>4.</span> 회사의 재산, 지적재산권, 영업비밀 등 회사의 유 · 무형 자산은 업무목적 외에는 사용하지 아니한다.</li>
            <li><span>5.</span> 우월적 지위를 이용하여 거래업체 등 이해관계자로부터 금품, 향응 등 이익을 제공받거나 부당한 요구를 하지 아니하며, 이해관계자에게 이익을 제공하지
              않는다.</li>
            <li><span>6.</span> 육체적 · 언어적 · 시각적 행위를 통한 성희롱, 폭언, 폭행 등 부적절한 행위를 하지 않는다.</li>
          </ol>

          <h5>보칙</h5>
          <ul class="txt-list">
            <li>이 윤리강령은 우리금융그룹에 소속된 모든 그룹사 및 임직원에게 적용되며, 각 그룹사는 본 강령에 저촉되지 아니하는 범위 내에서 행동강령을 운영할 수 있다.</li>
            <li>원은 윤리강령 위반사실을 인지한 경우에는 준법지원 또는 내부감사 관련 부서에 지체없이 보고해야 한다.</li>
            <li>임직원은 이 강령에 반하는 의사결정이나 행동을 한 경우 관련 내규에 따라 조사 받을 수 있으며, 인사상 불이익 조치가 취해질 수 있다.</li>
            <li>지주회사의 준법지원 부서는 이 강령의 준수 여부를 점검할 수 있다. </li>
          </ul>

          <p class="ehtics__date">2019 . 01 . 11 제정</p>
        </div>
      </div>

      <!-- //컨텐츠 영역 -->
    </div>
  </div>
  <!-- //content -->
</div>
</html>