package com.gsitm.officialweb.config;


import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.gsitm.officialweb.common.xssFilter.CrossScriptingFilter;

/** ========================================================================================
 * @Package Name   : com.gsitm.admin.config
 * @FileName  : WebMvcConfig.java
 * @Date      : 2019. 10. 15. 
 * @Author    : ose
 * @Desc      : Filter Config Definition
 * ========================================================================================
 * 수정일         				작성자            					 내용     
 * ----------------------------------------------------------------------------------------
 * 
 * ========================================================================================
 */
@Configuration
public class FilterConfig {
	
	@Bean
	public FilterRegistrationBean getFilterRegistrationBean()
	{
		FilterRegistrationBean registrationBean = new FilterRegistrationBean(new CrossScriptingFilter());
		registrationBean.addUrlPatterns("/*"); // 서블릿 등록 빈 처럼 패턴을 지정해 줄 수 있다.
		return registrationBean;
	}

}
