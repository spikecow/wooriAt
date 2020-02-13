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
		<h3>오시는 길</h3>
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
				<a href="#none">오시는 길</a>
				<ul class="dep_list">
					<li><a href="#none">회사개요</a></li>
					<li><a href="#none">CI소개</a></li>
					<li><a href="#none">경영현황</a></li>
					<li><a href="#none">회사소식</a></li>
					<li><a href="#none">채용정보</a></li>
					<li><a href="#none">오시는 길</a></li>
				</ul>
			</div>
			<!--<div class="dep3">
                      <ul>
                          <li><a href="#none" class="curr">회사소식</a></li>
                          <li><a href="#none">PHOTO 소식</a></li>
                          <li><a href="#none">사회공헌</a></li>
                      </ul>
                  </div>-->
		</div>
	</div>
	<!-- //lnb area -->
	<!-- content -->
	<div id="content">
		<div class="content_wrap">
			<!-- 컨텐츠 영역 -->
			<h4>오시는길</h4>
			<h5>서울<span>본사</span></h5>
			<div id="map01" class="location-map">
			</div>
			<div class="location-info">
				<ul>
					<li>
						<p class="location-info__transportation">
							<span><strong>지하철</strong> : 2호선 선릉역 10번 출구에서 약 150M </span>
							<span><strong>간선버스</strong> : 146, 341, 360, 740</span>
						</p>
					</li>
					<li>
						<p class="location-info__pin">(06160) 서울특별시 강남구 테헤란로 419, 강남파이낸스플라자 20층</p>
					</li>
					<li>
						<p class="location-info__tel">02 . 6202 . 3000 (대표)</p>
						<p class="location-info__fax">02 . 6202 . 3010</p>
					</li>
				</ul>
			</div>

			<h5>부산<span>지역본부</span></h5>
			<div id="map02" class="location-map">
			</div>
			<div class="location-info">
				<ul>
					<li>
						<p class="location-info__transportation location-info__transportation--busan">
							<span><strong>지하철</strong> : 1호선 범내골역 하차 8번 출구 (도보 5분이내)</span>
							<span><strong>간선버스</strong> : 17, 26, 41, 61, 87, 103</span>
						</p>
					</li>
					<li>
						<p class="location-info__pin">(47353) 부산광역시 부산진구 중앙대로 640 알리안츠빌딩 16층(범천동)</p>
					</li>
					<li>
						<p class="location-info__tel">051 . 714 . 3000</p>
						<p class="location-info__fax">051 . 714 . 3005</p>
					</li>
				</ul>
			</div>

			<h5>호남<span>지역본부</span></h5>
			<div id="map03" class="location-map">
			</div>
			<div class="location-info">
				<ul>
					<li>
						<p class="location-info__transportation">
							<span><strong>지하철</strong> : 1호선 상무역 하차 5번 출구 (도보 18분이내)</span>
							<span><strong>간선버스</strong> : 01, 16, 25, 38, 45, 150, 46, 22, 62, 63, 64, 518, 1000</span>
						</p>
					</li>
					<li>
						<p class="location-info__pin">(61947) 광주광역시 서구 상무중앙로 110, 4층(치평동, 우체국보험회관)</p>
					</li>
					<li>
						<p class="location-info__tel">062 . 470 . 3000</p>
						<p class="location-info__fax">062 . 470 . 3007</p>
					</li>
				</ul>
			</div>

			<h5>대구경북<span>지역본부</span></h5>
			<div id="map04" class="location-map">
			</div>
			<div class="location-info">
				<ul>
					<li>
						<p class="location-info__transportation">
							<span><strong>지하철</strong> : 2호선 수성구청역 하차 4번 출구 (도보 5분이내)</span>
							<span><strong>간선버스</strong> : 100-1, 309, 413, 425, 509, 609, 649, 724, 840, 939, 990, 991 </span>
						</p>
					</li>
					<li>
						<p class="location-info__pin">(42030) 대구 수성구 달구벌대로 2503 3층</p>
					</li>
					<li>
						<p class="location-info__tel">053 . 721 . 7970</p>
						<p class="location-info__fax">053 . 721 . 7971</p>
					</li>
				</ul>
			</div>

			<div class="location-foot">
				<p>
					<strong>홈페이지</strong> : <a href="http://www.wooriat.com" target="_blank">http://www.wooriat.com</a><span>/</span><strong>대표 이메일</strong> : <a href="mailto:webplanner@wooriat.com">webplanner@wooriat.com</a>
				</p>
			</div>
			<!-- //컨텐츠 영역 -->
		</div>
	</div>
	<!-- //content -->
</div>
<script type="text/javascript" src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=7f09e027fdaf8ee32e5cea96dd5bff95"></script>
<script>
	//map01
	var mapContainer01 = document.getElementById('map01'),
			mapOption01 = {
				center: new kakao.maps.LatLng(37.506003, 127.052220),
				level: 3
			};
	var map01 = new kakao.maps.Map(mapContainer01, mapOption01);
	var markerPosition01 = new kakao.maps.LatLng(37.506003, 127.052220);
	var marker01 = new kakao.maps.Marker({
		position: markerPosition01
	});
	marker01.setMap(map01);

	//map02
	var mapContainer02 = document.getElementById('map02'),
			mapOption02 = {
				center: new kakao.maps.LatLng(35.149866, 129.059812),
				level: 3
			};
	var map02 = new kakao.maps.Map(mapContainer02, mapOption02);
	var markerPosition02 = new kakao.maps.LatLng(35.149866, 129.059812);
	var marker02 = new kakao.maps.Marker({
		position: markerPosition02
	});
	marker02.setMap(map02);

	//map03
	var mapContainer03 = document.getElementById('map03'),
			mapOption03 = {
				center: new kakao.maps.LatLng(35.156801, 126.848980),
				level: 3
			};
	var map03 = new kakao.maps.Map(mapContainer03, mapOption03);
	var markerPosition03 = new kakao.maps.LatLng(35.156801, 126.848980);
	var marker03 = new kakao.maps.Marker({
		position: markerPosition03
	});
	marker03.setMap(map03);

	//map04
	var mapContainer04 = document.getElementById('map04'),
			mapOption04 = {
				center: new kakao.maps.LatLng(35.859475, 128.636654),
				level: 3
			};
	var map04 = new kakao.maps.Map(mapContainer04, mapOption04);
	var markerPosition04 = new kakao.maps.LatLng(35.859475, 128.636654);
	var marker04 = new kakao.maps.Marker({
		position: markerPosition04
	});
	marker04.setMap(map04);

</script>
</html>