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
    <h3>채용정보</h3>
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
        <a href="#none">채용정보</a>
        <ul class="dep_list">
          <li><a href="/company/overview">회사개요</a></li>
          <li><a href="/company/directors">이사회</a></li>
          <li><a href="/company/ci_manual">CI소개</a></li>
          <li><a href="/company/news?menuCd=M&typeCd=01">경영현황</a></li>
          <li><a href="/company/news?menuCd=C">회사소식</a></li>
          <li><a href="/company/recruit">채용정보</a></li>
          <li><a href="/company/location">오시는 길</a></li>
        </ul>
      </div>
      <div class="dep3">
        <ul>
          <li><a href="/company/recruit">채용안내</a></li>
          <li><a href="/company/always_recruit" class="curr">상시채용</a></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- //lnb area -->
  <!-- content -->
  <div id="content">
    <div class="content_wrap">
      <!-- 컨텐츠 영역 -->
      <h4>상시채용</h4>
      <div class="recruit">
        <div class="recruit-always">
          <div class="recruit-always__txt">
            우리자산신탁에서는 상시채용제도를 통해 우수인력의 상시 채용을 진행하고 있습니다.<br />
            상시채용을 통해 지원해 주시면 우리자산신탁의 인력자료로 보관되며, 지원 분야의 해당 직무에 대한 소요가 있을 시 서류전형을 실시합니다.
          </div>
          <div class="recruit-always__txt">
            <h5>접수<span>방법</span></h5>
            지원서 내 “이력서”, “자기소개서”, “개인정보수집이용제공조회동의서”(면접시 제출) 양식을 작성하시어 담당자 메일로<br />
            발송해 주시기 바랍니다.
            <ul class="txt-list" style="margin-top: 13px;">
              <li><strong>담당자 메일</strong> : <a href="mailto:recruit@wooriat.com">recruit@wooriat.com</a></li>
            </ul>
            <a href="/download/wooriat_application_form.hwp" class="recruit__btn02">입사지원양식 다운로드</a>
          </div>
          <div class="recruit-always__txt">
            <h5>채용<span>절차</span></h5>
            <div class="recruit-always__img">
              <img src="/images/content/recruit02.jpg">
            </div>
          </div>
          <div class="recruit-always__txt">
            <h5>면접 및 합격 <span>통보</span></h5>
            <ul class="txt-list">
              <li>추후 e-mail 및 개별통지 합니다.</li>
            </ul>
          </div>
          <div class="recruit-always__txt">
            <h5>유의사항</h5>
            <ul class="txt-list">
              <li>제출된 서류는 반환되지 않으며 입사를 위해 제출하신 입사지원서 및 증빙은 채용 이외의 목적으로 활용되지 않습니다.</li>
              <li>국가보훈대상자는 관련법령에 의거 우대합니다.</li>
              <li>입사지원서에 지원분야 및 각 항목에 대해 빠짐없이 기입합니다.</li>
              <li>제출서류 및 입사지원서 기재 사실에 대해 허위로 판명될 경우 입사가 취소됩니다.</li>
              <li>제출된 이력서는 1년의 유효기간을 갖습니다.</li>
            </ul>
          </div>
        </div>
      </div>

      <!-- //컨텐츠 영역 -->
    </div>
  </div>
  <!-- //content -->
</div>
</html>