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
    <!-- 상시 채용 삭제        
            <div class="dep3">
                <ul>
                    <li><a href="/company/recruit" class="curr">채용안내</a></li>
                    <li><a href="/company/always_recruit">상시채용</a></li>
                </ul>
            </div>
    -->        
        </div>
    </div>
    <!-- //lnb area -->
    <!-- content -->
    <div id="content">
        <div class="content_wrap">
            <!-- 컨텐츠 영역 -->
            <h4>채용정보</h4>
            <div class="recruit">
                <div class="recruit-talent">
                    <h5>인재상</h5>
                    <dl>
                        <dt>
                            미래지향적인<br />
                            <strong>목표의식</strong>을 가진 리더
                        </dt>
                        <dd>
                            항상 변화하는 고객의 욕구를 충족시키고, 나아가<br />
                            고객의 욕구를 선도(lead)하기 위해서는 현재에<br />
                            만족하지 않고 항상 미래를 바라보는 사람이<br />
                            필요합니다. 미래의 고객은 시장의 여건에 따라<br />
                            변하기 마련입니다. 미래의 자신에게 필요한<br />
                            자질을 꾸준히 개발하여 새로운 기회가 자신의<br />
                            앞에 놓이게 되었을 때, 그 기회를 쟁취할 수 있는<br />
                            사람을 필요로 합니다.
                        </dd>
                    </dl>
                    <dl>
                        <dt><br /><strong>실천하는</strong> 리더</dt>
                        <dd>
                            아무리 좋은 계획을 가지고 있더라도 이를<br />
                            머리 속에만 두고 있다면 그 계획은 아무런 <br />
                            가치가 없습니다. 또한 리더가 지시만 하고 <br />
                            실행을 하는 모습을 보여주지 않는다면 그 <br />
                            구성원들이 리더를 신뢰할 수 없을 것입니다.<br />
                            따라서 생각을 현실로 바꾸는 실천하는 사람을<br />
                            필요로 합니다.
                        </dd>
                    </dl>
                </div>
                <div class="recruit-benefits">
                    <h5>복리후생</h5>
                    <ul class="txt-list">
                        <li>주택구입, 전세자금, 생활안정자금대출 지원</li>
                        <li>임직원 자녀 고등학교, 대학교 학자금 전액 지원</li>
                        <li>우수사원 포상 및 해외연수, 연차, 개인연금지원, 통신비, 생일축하금, 경조금, 인센티브 지급</li>
                        <li>사택 및 당사 휴양지 시설 운영, 사내 동호회 운영</li>
                        <li>주5일 근무제, 국민연금, 고용보험, 산재보험, 건강보험, 건강검진</li>
                        <li>사내근로복지기금</li>
                        <li>직무 관련 교육비 지원, 사내도서관운영, 외부강사초청교육</li>
                    </ul>
                </div>
                <a href="javascript:alert('지금은 채용기간이 아닙니다.');void(0);" class="recruit__btn">우리자산신탁 인재채용 페이지 바로가기</a>
            </div>
            <!-- //컨텐츠 영역 -->
        </div>
    </div>
    <!-- //content -->
</div>
</html>