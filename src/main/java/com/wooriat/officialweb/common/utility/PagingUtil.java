package com.wooriat.officialweb.common.utility;


import org.springframework.stereotype.Component;
import lombok.extern.slf4j.Slf4j;

@Component
@Slf4j
public class PagingUtil  {
	
	public static String makePagingHtml(int currentPage, int pageSize, int totalPage) {

		String html ="";

		int blockNum = (int)Math.floor((currentPage-1)/ pageSize);
		int startNum = (pageSize * blockNum) + 1;
		int lastNum = startNum + (pageSize-1);

		if(lastNum > totalPage){
			lastNum = totalPage;
		}

		html +="<a href='#' class='first'><span class='blind'>처음 페이지로 이동</span></a>";
		html +="<a href='#' class='prev'><span class='blind'>이전 페이지</span></a>";

		html +="<span class='num'>";
		for(int idx=startNum; idx <= lastNum; idx ++) {
			if(idx == currentPage) {
				html +="<span><a href='#' class='active'>" +idx + "</a></span>";
			}else {
				html +="<span><a href='#'>"+idx+"</a></span>";
			}
		}
		html +="</span>";
		html +="<a href='#' class='next'><span class='blind'>다음 페이지로 이동</span></a>";
		html +="<a href='#' class='last'><span class='blind'>마지막 페이지로 이동</span></a>";

		return html;
	}
	
}
