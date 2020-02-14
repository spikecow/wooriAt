<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">

<!-- container -->
<div id="container" class="cs"><!-- 각 메뉴명 고유 클래스 삽입 -->
	<!-- title area -->
	<div class="title_area">
		<h3>고객문의</h3>
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
				<a href="#none">고객문의</a>
				<ul class="dep_list">
					<li><a href="/cs/terms">약관공시</a></li>
					<li><a href="/cs/customer">고객문의</a></li>
					<li><a href="/cs/faq">신탁 FAQ</a></li>
					<li><a href="/cs/privacy">개인정보처리방침</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //lnb area -->
	<!-- content -->
	<div id="content">
		<div class="content_wrap">
			<h4>고객문의</h4>

			<h5>개인정보 수집항목</h5>
			<div class="gbox">
				<ul class="txt_list">
					<li><strong>수집하는 개인정보 항목</strong> 이름, 이메일, 전화번호</li>
					<li><strong>개인정보의 수집 및 이용목적</strong> 개인 식별 및 상담 답변 제공</li>
					<li><strong>개인정보의 보유 및 이용기간</strong> 본 서비스의 이용 시 입력한 성명 및 접속 로그는 절대 기록 보관하지 않으며 제3자에게 제공하거나 취급 · 위탁하지 않습니다.</li>
				</ul>
			</div>
			<div class="customer_agree">
					<span class="checkbox">
						<input type="checkbox" id="checkbox" name="checkbox">
						<label for="checkbox">개인정보 수집, 이용에 동의합니다.</label>
					</span>
			</div>

			<h5>문의하기</h5>
			<!-- 표 -->
			<div class="board_write_table">
				<form id="form">
				<table>
					<caption>문의하기 등록</caption>
					<colgroup>
						<col width="160px">
						<col width="*">
					</colgroup>
					<tbody>
					<tr>
						<th>이름</th>
						<td><input type="text" id="name" name="name" class="input w340" placeholder=""></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" id="email" name="email" class="input w340" placeholder=""></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td>
							<input type="text" id="tel" name="tel" class="input w340" placeholder="">
							<span class="txt">* 전화번호( “-”없이 입력해주세요. ex ) 01012345678 )</span>
						</td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" id="title" name="title" class="input" placeholder=""></td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<textarea id="contents" name="content" class="textarea h300"></textarea>
						</td>
					</tr>
					</tbody>
				</table>
				</form>
			</div>
			<!-- //표 -->
			<span class="board_bottom_rtxt">
					<span class="txt">질문 입력 시 <em>주민등록번호, 외국인등록번호, 운전면허번호</em>는 입력하지 않습니다.</span>
				</span>
			<!-- 버튼 -->
			<div class="board_btn_area">
				<a href="#none" class="btn_write" onclick="javascript:$('#form').submit();"><span>등록</span></a><!-- 문의하기 완료 팝업 보여짐 -->
			</div>
			<!-- //버튼 -->
		</div>
	</div>
	<!-- //content -->
</div>


<div id="popComplete" class="layer_pop cs_complete">
	<div class="layer_pop_wrap">
		<div class="pop_area">
			<div class="pop_cont">
				<div class="pop_wrap">
					<!-- 팝업내용 -->
					<div class="head_area">
						<h4>문의하기 완료</h4>
					</div>
					<div class="con_area">
						<p>
							고객님께서 신청해주신 문의하기 내용이<br>
							<strong>정상적으로 등록</strong>되었습니다.
						</p>
						<p>
							담당자가 빠른시간 안에 답변드리겠습니다.
						</p>
						<button type="button" id="btnPopClose1" class="btn_m" onclick="layerClose('popComplete');">닫기</button>
					</div>
					<button type="button" id="btnPopClose2" class="btn_close" onclick="layerClose('popComplete');"><span class="blind">닫기</span></button> <!-- 레이어 팝업 닫기 : layerClose('Id') -->
					<!-- //팝업내용 -->
				</div>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">

	$('#form').on('submit', function () {


		var num = /^[0-9]*$/ ;
		var email=/^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[@]{1}[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{1,5}$/ ;



		if(!$("input:checkbox[id='checkbox']").is(":checked")){
			alert("개인정보 수집, 이용에 동의하여 주십시요.");
			return false;
		}

		if(!valCheck('#name', '이름을 입력해주세요')){
			return false;
		}

		if(!valCheck('#email', '이메일을 입력해주세요')){
			return false;
		}

		if( !email.test($('#email').val()) ) {
			alert("이메일 형식이 아닙니다");
			return false;
		}

		if(!valCheck('#tel', '전화번호를 입력해주세요')){
			return false;
		}

		if( !num.test($('#tel').val()) ) {
			alert("전화번호 숫자만 입력하세요");
			return false;
		}

		if(!valCheck('#title', '제목을 입력해주세요')){
			return false;
		}

		if(!valCheck('#contents', '내용을 입력해주세요')){
			return false;
		}


		var reqData = new FormData(this);

		$.ajax({
			url : '/cs/customer/insert',
			async: true,
			cache: false,
			contentType: 'application/json',
			type : 'POST',
			data: reqData,
			processData: false,
			contentType: false,
			success : function(data){
			}, error : function(error){

			}
		}).done(function (result) {

			if (result.status == 'fail') {
				alert('등록하지 못했습니다.[' + result.errorMsg + ']\n반복 시 관리자에게 문의 바랍니다.');
				return false;
			}
			layerOpen('popComplete');

		});

		return false;
	});

	/* Validation Check */
	function valCheck(id, msg){
		if ($(id).val().trim() == '') {
			alert(msg);
			$(id).focus();
			return false;
		}
		return true;
	}

	$('button[id=btnPopClose1]').on('click', function () {
		location.href = "/cs/customer";
	});

	$('button[id=btnPopClose2]').on('click', function () {
		location.href = "/cs/customer";
	});

</script>
</html>
