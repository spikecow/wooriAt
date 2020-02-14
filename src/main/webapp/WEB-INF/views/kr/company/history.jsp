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
          <li><a href="/company/history" class="curr">연혁</a></li>
          <li><a href="/company/ceo">CEO 인사말</a></li>
          <li><a href="/company/organization">조직도</a></li>
          <li><a href="/company/ehtics">윤리강령</a></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- //lnb area -->
  <!-- content -->
  <div id="content">
    <div class="content_wrap">
      <!-- 컨텐츠 영역 -->
      <h4>연혁</h4>
      <div class="history-tab">
        <ul>
          <li class="history-tab__item"><a href="#tabs-1">현재 ~ 2016</a></li>
          <li class="history-tab__item"><a href="#tabs-2">2015 ~ 2011</a></li>
          <li class="history-tab__item"><a href="#tabs-3">2010 ~ 2006</a></li>
          <li class="history-tab__item"><a href="#tabs-4">2005 ~ 2000</a></li>
        </ul>
        <div id="tabs-1" class="history-contents">
          <ul>
            <li>
              <p class="history-contents__title"><span>2020</span></p>
              <ol>
                <li><span>02.</span>본사 확장 공사 진행(18층 추가)</li>
                <li><span>01.</span>이창재, 이창하 공동대표 체제로 전환</li>
              </ol>
            </li>
            <li>
              <p class="history-contents__title"><span>2019</span></p>
              <ol>
                <li><span>12.</span>이창재 대표이사 취임</li>
                <li><span>12.</span>우리자산신탁으로 상호변경</li>
                <li><span>07.</span>우리금융그룹 주식매매계약 체결</li>
                <li><span>01.</span>본사 영업부문 조직개편(5본부 18팀)</li>
              </ol>
            </li>
            <li>
              <p class="history-contents__title"><span>2018</span></p>
              <ol>
                <li><span>12.</span>수탁고 23조6천억원</li>
                <li><span>01.</span>대구경북지역본부 개소</li>
              </ol>
            </li>
            <li>
              <p class="history-contents__title"><span>2017</span></p>
              <ol>
                <li><span>12.</span>수탁고 21조6천억원</li>
                <li><span>02.</span>계열회사의 설립(국제자산운용㈜)</li>
                <li><span>01.</span>이창하 대표이사 취임</li>
              </ol>
            </li>
            <li>
              <p class="history-contents__title"><span>2016</span></p>
              <ol>
                <li><span>12.</span>수탁고 18조2천억원</li>
                <li><span>01.</span>조직개편 (2총괄 6본부 21팀)</li>
              </ol>
            </li>
          </ul>
        </div>
        <div id="tabs-2" class="history-contents">
          <ul>
            <li>
              <p class="history-contents__title"><span>2015</span></p>
              <ol>
                <li><span>12.</span>수탁고 14조9천9백억원</li>
                <li><span>02.</span>호남지역본부 개소</li>
              </ol>
            </li>
            <li>
              <p class="history-contents__title"><span>2014</span></p>
              <ol>
                <li><span>12.</span>수탁고 14조9백억원 </li>
                <li><span>04.</span>자산관리회사(AMC) 설립인가(겸영)</li>
                <li><span>03.</span>법인명 변경 (국제신탁주식회사 -&gt; 국제자산신탁주식회사)</li>
                <li><span>02.</span>차입형토지신탁 인가</li>
              </ol>
            </li>
            <li>
              <p class="history-contents__title"><span>2013</span></p>
              <ol>
                <li><span>12.</span>수탁고 8조7백억원 </li>
                <li><span>10.</span>조용운 사장 취임</li>
                <li><span>08.</span>유재은 대표이사 취임</li>
                <li><span>01.</span>조직개편 (3본부 4사업부 1지점 17팀)</li>
              </ol>
            </li>
            <li>
              <p class="history-contents__title"><span>2012</span></p>
              <ol>
                <li><span>12.</span>수탁고 5조5천억원</li>
                <li><span>12.</span>총 자산 288억원</li>
                <li><span>06.</span>부산지점 개소</li>
                <li><span>03.</span>감사위원 이광래, 김희철, 전종만 취임</li>
              </ol>
            </li>
            <li>
              <p class="history-contents__title"><span>2011</span></p>
              <ol>
                <li><span>12.</span>수탁고 6조9천억원</li>
                <li><span>12.</span>총 자산 238억원</li>
                <li><span>06.</span>유재은 이사회 회장 취임</li>
                <li><span>01.</span>조직개편 (3본부 5사업부 14팀)</li>
              </ol>
            </li>
          </ul>
        </div>
        <div id="tabs-3" class="history-contents">
          <ul>
            <li>
              <p class="history-contents__title"><span>2010</span></p>
              <ol>
                <li><span>12.</span>수탁고 4조9천억원</li>
                <li><span>12.</span>총 자산 195억원</li>
                <li><span>09.</span>조직개편 (2본부 5사업부 14팀)</li>
              </ol>
            </li>
            <li>
              <p class="history-contents__title"><span>2009</span></p>
              <ol>
                <li><span>10.</span>자본금 52억원 증자</li>
                <li><span>03.</span>국제신탁주식회사(kukje Trust Co.,Ltd)로 사명 변경</li>
                <li><span>02.</span>「자본시장과 금융투자업에 관한 법률에 의한 금융투자업 영업 개시」</li>
              </ol>
            </li>
            <li>
              <p class="history-contents__title"><span>2008</span></p>
              <ol>
                <li><span>11.</span>금융투자업 인가 (인가일 2009. 2. 4)</li>
                <li><span>03.</span>신탁업 인가 조건 변경 (토지신탁 포함 전 상품 영업인가)</li>
              </ol>
            </li>
            <li>
              <p class="history-contents__title"><span>2007</span></p>
              <ol>
                <li><span>12.</span>부동산개발업 등록</li>
                <li><span>11.</span>부동산신탁업 영위 인가</li>
                <li><span>07.</span>부동산신탁업 예비인가 취득</li>
              </ol>
            </li>
            <li>
              <p class="history-contents__title"><span>2006</span></p>
              <ol>
                <li><span>05.</span>충남 공주시 신관동 아파트 개발사업 및 자금관리</li>
                <li><span>04.</span>천안 청수동 경남아너스빌 아파트 개발사업 및 자금관리</li>
                <li><span>04.</span>전북 김제시 교동 아파트 개발사업 및 자금관리</li>
                <li><span>03.</span>전남 남악신도시 경남아너스빌 아파트 개발사업 및 자금관리</li>
              </ol>
            </li>
          </ul>
        </div>
        <div id="tabs-4" class="history-contents">
          <ul>
            <li>
              <p class="history-contents__title"><span>2005</span></p>
              <ol>
                <li><span>11.</span>충주 용산동 하이빌 아파트 669세대 개발사업</li>
                <li><span>11.</span>서초구 서초동 신동아 오퓨런스 오피스 개발사업</li>
                <li><span>09.</span>전주 덕진구 송천동 아파트 400세대 개발사업</li>
                <li><span>09.</span>부산시 중동 비치텔 삼환아르누보 리모델링 개발사업</li>
                <li><span>08.</span>전북 김제시 교동 아파트 개발사업 및 자금관리</li>
                <li><span>07.</span>전남 남악신도시 경남아너스빌 아파트 개발사업 및 자금관리</li>
                <li><span>06.</span>천안 청수동 아파트 개발사업</li>
                <li><span>03.</span>경남 김천 구성산단 안시현골프장 개발사업 </li>
                <li><span>01.</span>경기도 시흥시 신천동 아파트 개발사업</li>
              </ol>
            </li>
            <li>
              <p class="history-contents__title"><span>2004</span></p>
              <ol>
                <li><span>09.</span>충남 당진군 신성 미소지움 아파트 1,154세대 개발사업</li>
                <li><span>08.</span>대구 달성군 본리동 삼환 아파트 개발사업 및 자금관리</li>
                <li><span>08.</span>대구 수성구 수성동 주상복합 개발사업</li>
                <li><span>07.</span>거제시 수월리 아파트 1,300세대 개발사업 컨설팅</li>
                <li><span>06.</span>용인 구갈리 도시개발사업 컨설팅</li>
                <li><span>06.</span>안산 중앙역 개발 약정 체결(철도청)</li>
                <li><span>05.</span>울산 달동 현대홈타운 스위트 아파트 개발사업</li>
                <li><span>05.</span>상도동 삼환 아파트 개발사업</li>
                <li><span>04.</span>주택건설사업자 등록(대한주택건설협회)</li>
                <li><span>02.</span> KT&amp;G 청두 내덕동 부지 개발사업 컨설팅</li>
              </ol>
            </li>
            <li>
              <p class="history-contents__title"><span>2003</span></p>
              <ol>
                <li><span>09.</span>충남 천안시 신월리 삼환나우빌 개발사업</li>
                <li><span>08.</span>강릉 교동 대림 e-편한세상 아파트 개발사업</li>
                <li><span>06.</span>이천 현대홈타운 개발사업</li>
                <li><span>03.</span>천호동 베네시티 주상복합 개발사업</li>
                <li><span>03.</span>부동산 개발금융 전문기업으로 전환</li>
              </ol>
            </li>
            <li>
              <p class="history-contents__title"><span>2002</span></p>
              <ol>
                <li><span>05.</span>일본 자산관리회사 하우징코산(주) 업무 제휴 협약 </li>
                <li><span>02.</span>부동산 투자자문회사 건설교통부 등록 </li>
                <li><span>02.</span>한국일보 Korea Web Awards우수상 2년 연속 수상 </li>
              </ol>
            </li>
            <li>
              <p class="history-contents__title"><span>2001</span></p>
              <ol>
                <li><span>12.</span>삼성증권, 삼성화재와 업무 제휴</li>
                <li><span>06.</span>한솔 CS클럽 한솔금고 업무제휴</li>
                <li><span>06.</span>자본금 증자(증자 후 자본금 100.93억원) </li>
              </ol>
            </li>
            <li>
              <p class="history-contents__title"><span>2000</span></p>
              <ol>
                <li><span>12.</span>이그나이트 아시아(아시아 최대 투자 컴소시엄)주최 </li>
                <li><span>10.</span>한국자산관리공사(KAMCO,www.kamco.or.kr)과 업무제휴</li>
                <li><span>07.</span>네티즌이 뽑은 최고 부동산 사이트 조사에서 2위 선정</li>
                <li><span>06.</span>코리아에셋인베스트먼트(Korea Asset Investment) 회사설립 </li>
              </ol>
            </li>
          </ul>
        </div>
      </div>
      <!-- //컨텐츠 영역 -->
    </div>
  </div>
  <!-- //content -->
</div>
<script>
  $(function () {
    $(".history-tab").tabs();
  });
</script>
</html>