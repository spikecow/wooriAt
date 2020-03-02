<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">

<body>

<!-- container -->
<div id="container" class="main">
    <!-- 각 메뉴명 고유 클래스 삽입 -->
    <!-- content -->
    <div id="content">
        <div class="content_wrap">
            <!-- 메인 슬라이드 -->
            <div class="main-slide">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="main-slide__title">
                                <strong>
                                    고객신뢰 든든한 파트너<br />
                                    1등 종합부동산금융사
                                </strong>
                            </div>
                            <img src="/images/main/main_slide03.jpg" alt="">
                        </div>
                        <div class="swiper-slide">
                            <div class="main-slide__title">
                                <strong>
                                    새로운 출발! 대한민국<br />
                                    종합부동산금융의 리더
                                </strong>
                                <p>항상 당사를 믿고 소중한 자산을 위탁해주신 모든 고객님께 진심으로 감사드립니다.</p>
                            </div>
                            <img src="/images/main/main_slide01.jpg" alt="">
                        </div>
                        <div class="swiper-slide">
                            <div class="main-slide__title">
                                <p>INVESTOR RELATIONS</p>
                                <strong>
                                    우리금융그룹과의 시너지로<br />
                                    종합부동산금융을 선도!
                                </strong>
                            </div>
                            <img src="/images/main/main_slide02.jpg" alt="">
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
            <!-- //메인 슬라이드 -->

            <!-- 분양물건정보 -->
            <div class="main-parcelout">
                <h3 class="main-parcelout__title">
                    <strong>분양물건정보</strong>
                </h3>
                <div class="main-parcelout__slide">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <c:forEach items="${saleList.content}" var="list" varStatus="status">
                                <c:if test="${status.index % 3 eq 0}"><div class="swiper-slide"></c:if>
                                    <a href="/item/sale/detail/${list.saleId}" class="main-parcelout__slide-item">
                                        <div class="main-parcelout__slide-item-thumb">
                                            <img src="http://images.wooriat.com/SaleItem/${list.NPhoto1}" alt="">
                                        </div>
                                        <p>${list.bunName}</p>
                                    </a>
                                <c:if test="${status.index % 3 eq 2}"></div></c:if>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
            <!-- //분양물건정보 -->

            <!-- 신탁상품 -->
            <div class="main-trust">
                <h3 class="main-trust__title">
                    <strong>신탁상품</strong>
                    우리자산신탁의 신탁상품을 소개
                </h3>
                <div class="main-trust__list">
                    <a href="/trust/land" class="main-trust__list-item main-trust__list-item--ico11">토지신탁</a>
                    <a href="/trust/manage_land" class="main-trust__list-item main-trust__list-item--ico01">관리형 토지신탁</a>
                    <a href="/trust/sale" class="main-trust__list-item main-trust__list-item--ico02">분양관리신탁</a>
                    <a href="/trust/security" class="main-trust__list-item main-trust__list-item--ico03">담보신탁</a>
                    <a href="/trust/disposal" class="main-trust__list-item main-trust__list-item--ico04">처분신탁</a>
                    <a href="/trust/manage" class="main-trust__list-item main-trust__list-item--ico05">관리신탁</a>
                    <a href="/trust/agency" class="main-trust__list-item main-trust__list-item--ico06">대리사무</a>
                    <a href="/trust/city" class="main-trust__list-item main-trust__list-item--ico07">도시개발사업</a>
                    <a href="/trust/pfv" class="main-trust__list-item main-trust__list-item--ico08">PFV사업</a>
                    <a href="/trust/assets" class="main-trust__list-item main-trust__list-item--ico09">자산관리</a>
                    <a href="/trust/finance" class="main-trust__list-item main-trust__list-item--ico10">부동산금융</a>
                </div>
            </div>
            <!-- //신탁상품 -->

            <!-- 공매물건정보 -->
            <div class="main-auction">
                <h3 class="main-auction__title">
                    <strong>공매물건정보</strong>
                    우리자산신탁의 안정성있고<br />
                    편리한 공매물건
                </h3>
                <div class="main-auction__list">
                    <c:forEach items="${shotSellList.content}" var="list">
                        <a href="/item/vendue/detail/${list.sellId}" class="main-auction__list-item<c:if test="${list.sortStatus eq '낙찰'}"> main-auction__list-item--end</c:if>">
                            <dl>
                                <dt>
                                    <span class="main-auction__list-status">${list.sortStatus}</span>
                                </dt>
                                <dd class="main-auction__list-item-text">
                                        ${list.newsTitle}
                                </dd>
                                <dd class="main-auction__list-item-date">
                                    <fmt:parseDate value="${ list.regDate }" pattern="yyyy-MM-dd'T'HH:mm" var="regDate" type="both" />
                                    <fmt:formatDate pattern="yyyy. MM. dd" value="${ regDate }" />
                                </dd>
                            </dl>
                        </a>
                    </c:forEach>
                </div>
            </div>
            <!-- //공매물건정보 -->

            <!-- 회사소식 -->
            <div class="main-notice">
                <dl>
                    <dt>회사소식</dt>
                    <dd>
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <c:forEach items="${noticeList.content}" var="list">
                                <div class="swiper-slide">
                                    <fmt:parseDate value="${ list.regDate }" pattern="yyyy-MM-dd'T'HH:mm" var="regDate" type="both" />
                                    <a href="/company/news/${list.seqNo}/${list.menuCd}"><fmt:formatDate pattern="yyyy. MM. dd" value="${ regDate }" /><strong>${list.title}</strong></a>
                                </div>
                                </c:forEach>
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                    </dd>
                </dl>
            </div>
            <!-- //회사소식 -->
        </div>
    </div>
    <!-- //content -->
</div>


<script>
    //슬라이드
    var mainSlide = new Swiper('.main-slide .swiper-container', {
        loop: true,
        effect: "fade",
        autoplay: {
            delay: 6000,
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: '.main-slide .swiper-button-next',
            prevEl: '.main-slide .swiper-button-prev',
        },
        pagination: {
            el: '.main-slide .swiper-pagination',
            clickable: true,
        }
    });
    var mainParceloutSlide = new Swiper('.main-parcelout__slide .swiper-container', {
        loop: true,
        slidesPerView: 3,
        spaceBetween: 0,
        centeredSlides: true,
        //slidesPerGroup: 3,
        // autoplay: {
        //   delay: 6000,
        //   disableOnInteraction: false,
        // },
        navigation: {
            nextEl: '.main-parcelout__slide .swiper-button-next',
            prevEl: '.main-parcelout__slide .swiper-button-prev',
        },
        pagination: {
            el: '.main-parcelout__slide .swiper-pagination'
        }
    });
    var mainNotice = new Swiper('.main-notice .swiper-container', {
        loop: true,
        direction: 'vertical',
        height: 80,
        navigation: {
            nextEl: '.main-notice .swiper-button-next',
            prevEl: '.main-notice .swiper-button-prev',
        },
    });

    //애니메이션
    motion();
    function motion() {
        TweenMax.set(".main-auction__title", { autoAlpha: 0, y: 50 });
        TweenMax.set(".main-auction__list-item", { autoAlpha: 0 });

        $(".main-auction").waypoint(function () {
            var $title = $(".main-auction__title");
            var tl = new TimelineLite();
            TweenMax.set($title, { autoAlpha: 0, y: 50 });
            tl.to($title, 1, { autoAlpha: 1, y: 0, ease: Back.easeOut }, "+=0.8")

            $(".main-auction__list-item").each(function (index) {
                var $this = $(this);
                var tl = new TimelineLite({ delay: index * .15 });
                TweenMax.set($this, { autoAlpha: 0, y: 50 });
                tl.to($this, 1, { autoAlpha: 1, y: 0, ease: Back.easeOut }, "+=1.2")
            });

            this.destroy();
        }, {
            offset: "80%"
        });

        TweenMax.set(".main-trust__title", { autoAlpha: 0, y: 50 });
        TweenMax.set(".main-trust__list-item", { autoAlpha: 0 });

        $(".main-trust").waypoint(function () {
            var $title = $(".main-trust__title");
            var tl = new TimelineLite();
            TweenMax.set($title, { autoAlpha: 0, y: 20 });
            tl.to($title, 1, { autoAlpha: 1, y: 0, ease: Back.easeOut }, "+=0.5")

            $(".main-trust__list-item").each(function (index) {
                var $this = $(this);
                var tl = new TimelineLite({ delay: index * .08 });
                TweenMax.set($this, { autoAlpha: 0, y: 20 });
                tl.to($this, 1, { autoAlpha: 1, y: 0, ease: Back.easeOut }, "+=0.5")
            });

            this.destroy();
        }, {
            offset: "80%"
        });
    }
</script>
</body>

</html>