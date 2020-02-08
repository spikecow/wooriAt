package com.wooriat.officialweb.common.utility;


import org.springframework.stereotype.Component;
import lombok.extern.slf4j.Slf4j;

@Component
@Slf4j
public class PagingUtil  {
	
	public static String makePagingHtml(int totalPage, int currentPage) {

		
		String html ="";
		 html +="<a href='#' class='first'><span class='skip'>처음 페이지</span></a>";
		 html +="<a href='#' class='prev'><span class='skip'>이전 페이지</span></a>";
		
		 for(int idx=1; idx <= totalPage; idx ++) {
			 if(idx == currentPage) {
				 html +="<span class='num'><a href='#' class='choice'>" +idx + "</a></span>";
			 }else {
				 html +="<span class='num'><a href='#'>"+idx+"</a></span>";
			 }
		 }
		 html +="<a href='#' class='next'><span class='skip'>다음 페이지</span></a>";
		 html +="<a href='#' class='last'><span class='skip'>마지막 페이지</span></a>";
		 
		 return html;
	}
	
}
