<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<div id="container" class="cs terms">
	<!-- 각 메뉴명 고유 클래스 삽입 -->
	<!-- title area -->
	<div class="title_area">
		<h3>약관공시</h3>
	</div>
	<!-- //title area -->
	<!-- lnb area -->
	<div class="lnb_area">
		<div class="lnb_wrap">
			<div class="loc">
				<span class="home"><span class="blind">홈</span></span>
				<span class="dep1">고객센터</span>
			</div>
			<div class="dep2">
				<a href="#none">약관공시</a>
				<ul class="dep_list">
					<li><a href="/cs/terms">약관공시</a></li>
					<li><a href="/cs/customer">고객문의</a></li>
					<li><a href="/cs/faq">신탁 FAQ</a></li>
					<li><a href="/cs/privacy#tabs-2">개인정보처리방침</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //lnb area -->
	<!-- content -->
	<div id="content">
		<div class="content_wrap">
			<!-- 컨텐츠 영역 -->
			<h4>약관공시</h4>

			<h5>약관 <span>보기</span></h5>

			<div class="terms__text">
				<ul class="txt-list">
					<li>아래와 같이 신탁약관을 공시하오니 다운로드 하여 열람하시기 바랍니다.</li>
				</ul>
			</div>

			<div class="terms__link">
				<ul>
					<li>
						<a href="guid_01.pdf" target="_blank">분양형토지신탁 계약서</a>
					</li>
					<li>
						<a href="guid_02.pdf" target="_blank">분양관리신탁 계약서</a>
					</li>
					<li>
						<a href="guid_03.pdf" target="_blank">관리형토지신탁 계약서</a>
					</li>
					<li>
						<a href="guid_04.pdf" target="_blank">(갑종)관리신탁 계약서</a>
					</li>
					<li>
						<a href="guid_05.pdf" target="_blank">(을종)관리신탁 계약서</a>
					</li>
					<li>
						<a href="guid_06.pdf" target="_blank">처분신탁 계약서</a>
					</li>
					<li>
						<a href="guid_07.pdf" target="_blank">담보신탁 계약서</a>
					</li>
				</ul>
			</div>
			<!-- //컨텐츠 영역 -->
		</div>
	</div>
	<!-- //content -->
</div>

<script>
	$(function () {
		$(".faq-accordion").accordion({
			heightStyle: "content"
		});
		$(".faq-tab").tabs();
	});
</script>
</html>
