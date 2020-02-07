<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html lang="ko"> 

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" name="viewport">
<title>코딩리스트</title>

<link rel="stylesheet" type="text/css" href="../common/css/common.css" media="all">
<style>
h1 {padding:10px; font-size:20px;}
table {width:100%; margin:0 0 40px 0;}
table th {border:solid 1px #ccc; padding:5px; border-bottom:0;}
table tr td.last {border-bottom:solid 1px #000;}
table td {border:solid 1px #ccc; padding:10px 10px 10px 10px;}

.end {background:yellow;}

a {color:blue;}
a:hover,
a:active {color:blue;}
</style>
</head> 
<body>
<h1>코딩 리스트</h1>
<p>end : 노란색</p>
<!-- [s]table -->
<div class="tb_list">
	<table>
		<caption>알립니다 목록 - 알립니다목록으로 번호, 제목, 작성자, 조회를 나타내는 테이블입니다.</caption>
		<colgroup>
			<col style="width:5%;">
			<col style="width:10%">
			<col style="width:15%;">
			<col style="width:15%;">
			<col style="width:10%;">
			<col style="width:*;">
			<col style="width:8%;">
			<col style="width:15%;">
		</colgroup>
		<thead>
		<tr>
			<th scope="col">1depth</th>
			<th scope="col">2depth</th>
			<th scope="col">3depth</th>
			<th scope="col">3depth(tab)</th>
			<th scope="col">popup</th>
			<th scope="col">링크</th>
			<th scope="col">진행사항</th>
			<th scope="col">비고</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td>main</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td><a href="#none" target="_blank"></a></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td>문의하기</td>
			<td><a href="inquiry/inquiry_pop.html" target="_blank">inquiry/inquiry_pop.html</a></td>
			<td class="end">2019.09.27 완료</td>
			<td></td>
		</tr>
<!---- Service ---->
		<tr>
			<td class="last" rowspan="10">Service</td>
			<td rowspan="4">IT Outsourcing</td>
			<td></td>
			<td>Consulting</td>
			<td></td>
			<td><a href="service/sv_001_ito_01.jsp" target="_blank">service/sv_001_ito_01.html</a></td>
			<td class="end">2019.09.24 완료</td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>Integration</td>
			<td></td>
			<td><a href="service/sv_001_ito_01.jsp" target="_blank">service/sv_001_ito_01.html</a></td>
			<td class="end">2019.09.24 완료</td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>Convergence</td>
			<td></td>
			<td><a href="service/sv_001_ito_01.jsp" target="_blank">service/sv_001_ito_01.html</a></td>
			<td class="end">2019.09.24 완료</td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>Managed Service</td>
			<td></td>
			<td><a href="service/sv_001_ito_01.jsp" target="_blank">service/sv_001_ito_01.html</a></td>
			<td class="end">2019.09.24 완료</td>
			<td></td>
		</tr>
		<tr>
			<td rowspan="3">SAP Total Service</td>
			<td></td>
			<td>SAP S/4HANA Migration</td>
			<td></td>
			<td><a href="#none" target="_blank"></a></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>SAP Cloud ERP Service</td>
			<td></td>
			<td><a href="#none" target="_blank"></a></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>SAP Development & Management</td>
			<td></td>
			<td><a href="#none" target="_blank"></a></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td rowspan="3"  class="last">Cloud</td>
			<td></td>
			<td>Cloud Infra Structure</td>
			<td></td>
			<td><a href="#none" target="_blank"></a></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>Cloud Platform</td>
			<td></td>
			<td><a href="#none" target="_blank"></a></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td class="last"></td>
			<td class="last">Cloud Native Development</td>
			<td class="last"></td>
			<td class="last"><a href="#none" target="_blank"></a></td>
			<td class="last end">2019.09.24 완료</td>
			<td class="last"></td>
		</tr>
<!---- // Service ---->
<!---- Industries ---->
		<tr>
			<td  class="last" rowspan="6">Industry</td>
			<td>정유/화학</td>
			<td></td>
			<td></td>
			<td></td>
			<td><a href="industry/in_001_petrochemical.jsp" target="_blank">industry/in_001_petrochemical.html</a></td>
			<td class="end">2019.09.25 완료</td>
			<td></td>
		</tr>
		<tr>
			<td>가스/발전</td>
			<td></td>
			<td></td>
			<td></td>
			<td><a href="#none" target="_blank"></a></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>유통/커머스</td>
			<td></td>
			<td></td>
			<td></td>
			<td><a href="#none" target="_blank"></a></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>교육</td>
			<td></td>
			<td></td>
			<td></td>
			<td><a href="#none" target="_blank"></a></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>보험/서비스</td>
			<td></td>
			<td></td>
			<td></td>
			<td><a href="#none" target="_blank"></a></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td class="last"></td>
			<td class="last">상세보기</td>
			<td class="last"></td>
			<td class="last"></td>
			<td class="last"><a href="industry/in_006_detail.jsp" target="_blank">industry/in_006_detail.html</a></td>
			<td class="last end">2019.09.25 완료</td>
			<td class="last"></td>
		</tr>
<!---- // Industries ---->
<!---- PR ---->
		<tr>
			<td  class="last" rowspan="3">PR</td>
			<td rowspan="2">보도자료</td>
			<td>리스트</td>
			<td></td>
			<td></td>
			<td><a href="PR/pr_001_press_list.html" target="_blank">PR/pr_001_press_list.html</a></td>
			<td class="end">2019.09.25 완료</td>
			<td></td>
		</tr>
		<tr>
			<td>상세보기</td>
			<td></td>
			<td></td>
			<td><a href="PR/pr_001_press_view.html" target="_blank">PR/pr_001_press_view.html</a></td>
			<td class="end">2019.09.25 완료</td>
			<td></td>
		</tr>
		<tr>
			<td class="last">홍보자료실</td>
			<td class="last"></td>
			<td class="last"></td>
			<td class="last"></td>
			<td class="last"><a href="PR/pr_001_press_pdf.html" target="_blank">PR/pr_001_press_pdf.html</a></td>
			<td class="last end">2019.09.25 완료</td>
			<td class="last"></td>
		</tr>
<!---- // PR ---->
<!---- Careers ---->
		<tr>
			<td  class="last" rowspan="3">CAREERS</td>
			<td>인재상</td>
			<td></td>
			<td></td>
			<td></td>
			<td><a href="career/ca_001_personnel.jsp" target="_blank">career/ca_001_personnel.html</a></td>
			<td class="end">2019.09.26 완료</td>
			<td></td>
		</tr>
		<tr>
			<td>인사제도 및 직무</td>
			<td></td>
			<td></td>
			<td></td>
			<td><a href="career/ca_002_role.jsp" target="_blank">career/ca_002_role.html</a></td>
			<td class="end">2019.09.27 완료</td>
			<td></td>
		</tr>
		<tr>
			<td class="last">복리후생</td>
			<td class="last"></td>
			<td class="last"></td>
			<td class="last"></td>
			<td class="last"><a href="career/ca_003_walfarepsd.jsp" target="_blank">career/ca_003_walfarepsd.html</a></td>
			<td class="last end">2019.09.27 완료</td>
			<td class="last"></td>
		</tr>
<!---- // Careers ---->
<!---- About GS ITM ---->
		<tr>
			<td class="last" rowspan="5">About GS ITM</td>
			<td>GS ITM</td>
			<td></td>
			<td></td>
			<td></td>
			<td><a href="#none" target="_blank">about/.html</a></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>연혁</td>
			<td></td>
			<td></td>
			<td></td>
			<td><a href="#none" target="_blank">about/.html</a></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td rowspan="2">윤리경영</td>
			<td></td>
			<td>윤리원칙</td>
			<td></td>
			<td><a href="about/co_003_ethics.jsp" target="_blank">about/co_003_ethics.html</a></td>
			<td class="end">2019.09.26 완료</td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>상담제보</td>
			<td></td>
			<td><a href="about/co_004_apply.jsp" target="_blank">about/co_004_apply.html</a></td>
			<td class="end">2019.09.26 완료</td>
			<td></td>
		</tr>
		<tr>
			<td class="last">CI 가이드</td>
			<td class="last"></td>
			<td class="last"></td>
			<td class="last"></td>
			<td class="last"><a href="#none" target="_blank"></a></td>
			<td class="last"></td>
			<td class="last"></td>
		</tr>
<!---- // About GS ITM ---->
<!----  footer ---->
		<tr>
			<td class="last" rowspan="2">footer</td>
			<td></td>
			<td></td>
			<td></td>
			<td>오시는길</td>
			<td><a href="#none" target="_blank"></a></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td class="last"></td>
			<td class="last"></td>
			<td class="last"></td>
			<td class="last">개인정보처리방침</td>
			<td class="last"><a href="#none" target="_blank"></a></td>
			<td class="last"></td>
			<td class="last"></td>
		</tr>
<!---- // footer ---->
		</tbody>
	</table>
</div>
<!-- [e]table -->
</body>
</html>
