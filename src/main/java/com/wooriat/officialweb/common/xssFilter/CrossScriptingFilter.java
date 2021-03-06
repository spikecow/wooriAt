package com.wooriat.officialweb.common.xssFilter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;


/** ========================================================================================
* @Package Name   : com.wooriat.officialweb.common.xssFilter
* @FileName  : CrossScriptingFilter.java
* @Date      : 2019. 10. 17.
* @Author    : OSE
* @Desc      : Cross Scripting Filter
* ========================================================================================
* 수정일                                         작성자                                                     내용    
* ----------------------------------------------------------------------------------------
* 2019. 10. 17.               OSE                                                최초 생성
* ========================================================================================
*/
@Component
public class CrossScriptingFilter implements Filter {

	public FilterConfig filterConfig;

	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig = filterConfig;
	}

	public void destroy() {
		this.filterConfig = null;
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		
		String path = ((HttpServletRequest) request).getServletPath();
		/*if (path.equals(GsItemConst.LOGIN_URL)){
			// 필터기능 제외
			 chain.doFilter(request, response);
			 return;
		}else{*/
			// 필터
			chain.doFilter(new RequestWrapper((HttpServletRequest) request),response);
		//}
		
	}

}