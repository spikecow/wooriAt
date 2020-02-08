package com.wooriat.officialweb.config;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mobile.device.DeviceHandlerMethodArgumentResolver;
import org.springframework.mobile.device.DeviceResolverHandlerInterceptor;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.wooriat.officialweb.common.interceptor.RequestInterceptor;

/** ========================================================================================
 * @Package Name   : com.wooriat.admin.config
 * @FileName  : WebMvcConfig.java
 * @Date      : 2019. 10. 15. 
 * @Author    : ose
 * @Desc      : Web Mvc Config Definition
 * ========================================================================================
 * 수정일         				작성자            					 내용     
 * ----------------------------------------------------------------------------------------
 * 
 * ========================================================================================
 */
@Configuration
public class WebMvcConfig implements WebMvcConfigurer  {
	
	private final RequestInterceptor requestInterceptor;
	
	/** ======================================================================================== 
	 * @Author            : OSE
	 * @Date              : 2019. 10. 17.
	 * @Description  : Constructor of WebMvcConfig.java class
	 * 
	 * @param requestInterceptor
	* ========================================================================================
	 * 수정일                                         작성자                                                     내용     
	 * ----------------------------------------------------------------------------------------
	 * 2019. 10. 17.            OSE                                        최초 생성
	 * ========================================================================================
	 */
	@Autowired
	public WebMvcConfig(RequestInterceptor requestInterceptor) {
		this.requestInterceptor = requestInterceptor;

	}

	/**
	 * @Method Name  : addInterceptors
	 * @Date     : 2019. 10. 17. 
	 * @Author   : OSE
	 * @Desc     : Add Interceptors
	 * @param registry
	 */
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(deviceResolverHandlerInterceptor());
		registry.addInterceptor(new RequestInterceptor()).addPathPatterns("/**/*").excludePathPatterns("/test/**/");
	}
	
	/** ========================================================================================
	 * @Method Name  : deviceResolverHandlerInterceptor
	 * @Author   : OSE
	 * @Date     : 2019. 10. 17.
	 * @Desc     : Device DeviceResolver Handler Interceptor
	 * @return
	 * ========================================================================================
	 * 수정일                                         작성자                                                     내용     
	 * ----------------------------------------------------------------------------------------
	 * 2019. 10. 17.            OSE                                        최초 생성
	 * ========================================================================================
	 */
	 
	@Bean
	public DeviceResolverHandlerInterceptor deviceResolverHandlerInterceptor() {
		return new DeviceResolverHandlerInterceptor();
	}

	/** ========================================================================================
	 * @Method Name  : deviceHandlerMethodArgumentResolver
	 * @Author   : OSE
	 * @Date     : 2019. 10. 17.
	 * @Desc     : Device HandlerMethod Argument Resolver
	 * @return
	 * ========================================================================================
	 * 수정일                                         작성자                                                     내용     
	 * ----------------------------------------------------------------------------------------
	 * 2019. 10. 17.            OSE                                        최초 생성
	 * ========================================================================================
	 */
	 
	@Bean
	public DeviceHandlerMethodArgumentResolver deviceHandlerMethodArgumentResolver() {
		return new DeviceHandlerMethodArgumentResolver();
	}

	/**
	 * @Method Name  : addArgumentResolvers
	 * @Date     : 2019. 10. 17. 
	 * @Author   : OSE
	 * @Desc     : Add Argument Resolvers
	 * @param argumentResolvers
	 */
	@Override
	public void addArgumentResolvers(List<HandlerMethodArgumentResolver> argumentResolvers) {
		argumentResolvers.add(deviceHandlerMethodArgumentResolver());
	}

}
