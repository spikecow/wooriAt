<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Nav 구성 -->
<script type ="text/x-mustache" id="top-navi">
				<ul>
					<li class="asdf"><span>SERVICE</span>
						<div class="subm">
							<ul class="f1">
								{{#serviceMenuResult}}
								<li><a href="/service/serviceInfo?svcSeqId={{seqId}}">{{titleNm}}</a></li>
								{{/serviceMenuResult}}
							</ul>
						</div> 
					</li>
					<li class="asdf"><span>INDUSTRIES</span>
						<div class="subm">
							<ul class="f2">
								{{#insdustryMenuResult}}
									<li><a href="/industry/indMgntInfo?indSeqId={{seqId}}">{{titleNm}}</a></li>
								{{/insdustryMenuResult}}
							</ul>
						</div>
					</li>
					<li class="asdf"><span>IT Distribution</span>
						<div class="subm">
							<ul class="f3">
								<li><a href="/dist/partner/list">Partner</a></li>
								<li><a href="/dist/solution/list">Solution</a></li>
							</ul>
						</div>
					</li>
					<li class="asdf"><a href="/reference/referenceInfo"><span>REFERENCES</span></a></li>
					<li class="asdf"><span>PR</span>
						<div class="subm">
							<ul class="f4">
								<li><a href="/pr/list">보도자료</a></li>
								<li><a href="/pr/pdf">홍보자료실 </a></li>
								<li><a href="/pr/cliplist">ITM Clip</a></li>
							</ul>
						</div>
					</li>
					<li class="asdf"><span>CAREERS</span>
						<div class="subm">
							<ul class="f5">
								<li><a href="/career/personnel">인재상</a></li>
								<li><a href="/career/role">인사제도·직무 </a></li>
								<li><a href="/career/walfarepsd">복리후생</a></li>
								<li><a href="https://gsitm.recruiter.co.kr/" target="_blank">채용공고</a></li>
							</ul>
						</div>
					</li>
					<li class="asdf"><span>ABOUT</span>
						<div class="subm">
							<ul class="f6">
								<li><a href="/about/gsitm">GS ITM</a></li>
								<li><a href="/about/history">연혁 </a></li>
								<li><a href="/about/ethics">윤리경영</a></li>
								<li><a href="/about/ci">CI가이드</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</nav>				
</script>

<script>
var langCd = "${langCd}";
if(langCd ==''){
	langCd="KR";
}
</script>

