<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="wistrongh=1200">
    <meta name="description" content="">
    <title>우리자산신탁</title>
    <link rel="stylesheet" type="text/css" href="/css/lib/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="/css/common.css">
    <link rel="stylesheet" type="text/css" href="/css/layout.css">
    <link rel="stylesheet" type="text/css" href="/css/content.css">
    <link rel="stylesheet" type="text/css" href="/css/main.css">

    <script src="/js/lib/jquery-1.12.4.min.js"></script>
    <script src="/js/lib/jquery.easing.1.3.js"></script>
    <script src="/js/lib/swiper.min.js"></script>
    <script src="/js/lib/gsap.min.js"></script>
    <script src="/js/lib/jquery.waypoints.min.js"></script>

    <!--[if lte IE 9]>
    <script src="/js/lib/placeholders.min.js"></script>
    <script src="/js/lib/html5.js"></script>
    <![endif]-->
</head>

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
                                    새로운 출발!<br />
                                    부동산금융의 리더 우리자산신탁1
                                </strong>
                                <p>항상 당사를 믿고 소중한 자산을 위탁해주신 모든 고객님께 진심으로 감사드립니다.</p>
                            </div>
                            <img src="/images/main/main_slide01.jpg" alt="">
                        </div>
                        <div class="swiper-slide">
                            <div class="main-slide__title">
                                <strong>
                                    새로운 출발!<br />
                                    부동산금융의 리더 우리자산신탁2
                                </strong>
                                <p>항상 당사를 믿고 소중한 자산을 위탁해주신 모든 고객님께 진심으로 감사드립니다.</p>
                            </div>
                            <img src="/images/main/main_slide01.jpg" alt="">
                        </div>
                        <div class="swiper-slide">
                            <div class="main-slide__title">
                                <strong>
                                    새로운 출발!<br />
                                    부동산금융의 리더 우리자산신탁3
                                </strong>
                                <p>항상 당사를 믿고 소중한 자산을 위탁해주신 모든 고객님께 진심으로 감사드립니다.</p>
                            </div>
                            <img src="/images/main/main_slide01.jpg" alt="">
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
            <!-- //메인 슬라이드 -->

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

            <!-- 신탁상품 -->
            <div class="main-trust">
                <h3 class="main-trust__title">
                    <strong>신탁상품</strong>
                    우리자산신탁의 신탁상품을 소개
                </h3>
                <div class="main-trust__list">
                    <a href="" class="main-trust__list-item main-trust__list-item--ico01">관리형 토지신탁</a>
                    <a href="" class="main-trust__list-item main-trust__list-item--ico02">분양관리신탁</a>
                    <a href="" class="main-trust__list-item main-trust__list-item--ico03">담보신탁</a>
                    <a href="" class="main-trust__list-item main-trust__list-item--ico04">처분신탁</a>
                    <a href="" class="main-trust__list-item main-trust__list-item--ico05">관리신탁</a>
                    <a href="" class="main-trust__list-item main-trust__list-item--ico06">대리사무</a>
                    <a href="" class="main-trust__list-item main-trust__list-item--ico07">도시개발사업</a>
                    <a href="" class="main-trust__list-item main-trust__list-item--ico08">PFV사업</a>
                    <a href="" class="main-trust__list-item main-trust__list-item--ico09">자산관리</a>
                    <a href="" class="main-trust__list-item main-trust__list-item--ico10">부동산금융</a>
                    <a href="" class="main-trust__list-item main-trust__list-item--ico11">토지신탁</a>
                </div>
            </div>
            <!-- //신탁상품 -->

            <!-- 분양물건정보 -->
            <div class="main-parcelout">
                <h3 class="main-parcelout__title">
                    <strong>분양물건정보</strong>
                    다양한 분양정보를 확인하세요.
                </h3>
                <div class="main-parcelout__slide">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <c:forEach items="${saleList.content}" var="list">
                                <div class="swiper-slide">
                                    <span class="main-parcelout__slide-status">사업명</span>
                                    <a href="/item/sale/detail/${list.saleId}">
                                            ${list.bunName}
                                    </a>
                                </div>
                            </c:forEach>
                        </div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </div>
                <div class="main-parcelout__img">
                    <c:forEach items="${saleList.content}" var="list" varStatus="status">
                        <div class="main-parcelout__img-item main-parcelout__img-item--num0${status.index +1}"><img src="http://images.wooriat.com/SaleItem/${list.NPhoto1}" alt=""></div>
                    </c:forEach>
                </div>
            </div>
            <!-- //분양물건정보 -->

            <!-- 회사소식 -->
            <div class="main-notice">
                <dl>
                    <dt>회사소식</dt>
                    <dd>
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <a href=""><strong>공동 대표이사 취임</strong> / 당사는 2019년 12월 30일 주주총회 및 이사회를 열고 이창재 대표이사를 선임했습니다…</a>
                                </div>
                                <div class="swiper-slide">
                                    <a href=""><strong>공동 대표이사 취임</strong> / 당사는 2019년 12월 30일 주주총회 및 이사회를 열고 이창재 대표이사를 선임했습니다…</a>
                                </div>
                                <div class="swiper-slide">
                                    <a href=""><strong>공동 대표이사 취임</strong> / 당사는 2019년 12월 30일 주주총회 및 이사회를 열고 이창재 대표이사를 선임했습니다 당사는 2019년 12월 30일 주주총회 및 이사회를 열고 이창재 대표이사를 선임했습니</a>
                                </div>
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
<!-- //container --><%--
    <!-- footer -->
    <footer id="footer">
        <div class="footer_wrap">
            <div class="foot_menu">
                <ul>
                    <li class="privacy"><a href="#">개인정보처리방침</a></li>
                    <li><a href="#">오시는길</a></li>
                    <li><a href="#">고객문의</a></li>
                    <li><a href="#">윤리강령</a></li>
                </ul>
            </div>
            <div class="family_site">
                <a href="#none">FAMILY SITE</a>
                <div class="list">
                    <ul>
                        <li><a href="http://wooribank.com" target="_blank">우리은행</a></li>
                        <li><a href="http://wooricard.com" target="_blank">우리카드</a></li>
                        <li><a href="http://www.wooriib.com" target="_blank">우리종합금융</a></li>
                        <li><a href="http://www.woorifis.com" target="_blank">우리FIS</a></li>
                        <li><a href="http://www.wfri.re.kr" target="_blank">우리금융경영연구소</a></li>
                        <li><a href="http://www.wooricredit.com" target="_blank">우리신용정보</a></li>
                        <li><a href="http://www.woorifs.co.kr" target="_blank">우리펀드서비스</a></li>
                        <li><a href="http://www.kukjetrust.com" target="_blank">우리자산신탁</a></li>
                        <li><a href="https://www.wooriam.kr" target="_blank">우리자산운용</a></li>
                        <li><a href="http://www.wooriglobalam.com" target="_blank">우리글로벌자산운용</a></li>
                    </ul>
                </div>
            </div>
            <div class="foot_logo">
                <ul>
                    <li><span class="woori"><span class="blind">우리자산신탁</span></span></li>
                    <li><span class="lucestar"><span class="blind">루체스타</span></span></li>
                </ul>
            </div>
            <div class="foot_con">
                <p class="addr">(06160) 서울특별시 강남구 테헤란로 419. 강남파이낸스빌딩 20층<em>전화. 02-6202-3000</em><em>팩스. 02-6202-3010</em></p>
                <p class="copy">COPYRIGHT © WOORI ASSET TRUST. LTD. ALL RIGHTS RESERVED</p>
            </div>
        </div>
    </footer>
    <!--// footer -->--%>

<!-- //wrap -->
<script src="/js/common.js"></script>

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
        effect: "fade",
        autoplay: {
            delay: 6000,
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: '.main-parcelout__slide .swiper-button-next',
            prevEl: '.main-parcelout__slide .swiper-button-prev',
        },
        pagination: {
            el: '.main-parcelout__slide .swiper-pagination',
            type: 'fraction',
        },
        on: {
            transitionEnd: function () {
                var idx = $(".main-parcelout__slide .swiper-slide-active").attr('data-swiper-slide-index');
                $(".main-parcelout__img-item").removeClass("main-parcelout__img-item--num01");
                $(".main-parcelout__img-item").removeClass("main-parcelout__img-item--num02");
                $(".main-parcelout__img-item").removeClass("main-parcelout__img-item--num03");
                if (idx === "0") {
                    $(".main-parcelout__img-item:eq(0)").addClass("main-parcelout__img-item--num01");
                    $(".main-parcelout__img-item:eq(1)").addClass("main-parcelout__img-item--num02");
                    $(".main-parcelout__img-item:eq(2)").addClass("main-parcelout__img-item--num03");
                } else if (idx === "1") {
                    $(".main-parcelout__img-item:eq(0)").addClass("main-parcelout__img-item--num03");
                    $(".main-parcelout__img-item:eq(1)").addClass("main-parcelout__img-item--num01");
                    $(".main-parcelout__img-item:eq(2)").addClass("main-parcelout__img-item--num02");
                } else if (idx === "2") {
                    $(".main-parcelout__img-item:eq(0)").addClass("main-parcelout__img-item--num02");
                    $(".main-parcelout__img-item:eq(1)").addClass("main-parcelout__img-item--num03");
                    $(".main-parcelout__img-item:eq(2)").addClass("main-parcelout__img-item--num01");
                }
            }
        },
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

        TweenMax.set(".main-parcelout__title", { autoAlpha: 0, y: 20 });
        TweenMax.set(".main-parcelout__slide", { autoAlpha: 0, y: 30 });
        TweenMax.set(".main-parcelout__img", { autoAlpha: 0, y: 20 });

        $(".main-parcelout").waypoint(function () {
            var $title = $(".main-parcelout__title");
            var $slide = $(".main-parcelout__slide");
            var $img = $(".main-parcelout__img");
            var tl = new TimelineLite();
            TweenMax.set($title, { autoAlpha: 0, y: 50 });
            tl.to($title, 1, { autoAlpha: 1, y: 0, ease: Back.easeOut }, "+=0.3")
                .to($slide, 1, { autoAlpha: 1, y: 0, ease: Back.easeOut }, "-=0.5")
                .to($img, 1, { autoAlpha: 1, y: 0, ease: Back.easeOut }, "-=0.8");

            this.destroy();
        }, {
            offset: "70%"
        });
    }
</script>
</body>

</html>