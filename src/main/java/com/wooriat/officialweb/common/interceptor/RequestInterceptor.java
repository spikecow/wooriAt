package com.gsitm.officialweb.common.interceptor;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.gsitm.officialweb.common.utility.StringUtil;

import lombok.extern.slf4j.Slf4j;

/** ========================================================================================
 * @Package Name   : com.gsitm.admin.common.interceptor
 * @FileName  : RequestInterceptor.java
 * @Date      : 2019. 10. 15. 
 * @Author    : 
 * @Desc      : RequestInterceptor Interceptor
 * ========================================================================================
 * 수정일         				작성자            					 내용     
 * ----------------------------------------------------------------------------------------
 * 
 * ========================================================================================
 */
@Slf4j
@Component
public class RequestInterceptor extends HandlerInterceptorAdapter {
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
			StringBuilder builder = new StringBuilder();
			builder.append("\n=============== Request URI ================\n").append(' ')
					.append(request.getRequestURI()).append('\n').append(" Client IP      : ")
					.append(request.getRemoteAddr()).append(':').append(request.getRemotePort()).append('\n')
					.append(" Method         : ").append(request.getMethod()).append('\n');

			builder.append("=========== Request Parameters =============\n");
			for (Enumeration<String> enumer = request.getParameterNames(); enumer.hasMoreElements();) {
				String name = enumer.nextElement();

				if (!StringUtil.chkNum(name)) {

					if (request.getParameterValues(name).length > 1) {
						builder.append(' ').append(StringUtils.rightPad(name + "[]", 14)).append(" : ");
						for (int i = 0; i < request.getParameterValues(name).length; i++) {
							builder.append((request.getParameterValues(name))[i]);
							if (i == request.getParameterValues(name).length - 1) {
								builder.append('\n');
							} else {
								builder.append(", ");
							}
						}
					} else {
						builder.append(' ').append(StringUtils.rightPad(name, 14)).append(" : ").append(request.getParameter(name)).append('\n');
					}
				}
			}
			builder.append("============================================");
			log.info(builder.toString());
		

		request.setAttribute("transactionTime", System.currentTimeMillis());
		return super.preHandle(request, response, handler);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
			log.info("###############  Interceptor > postHandle");
			response.setHeader("Cache-control", "no-cache, no-store, must-revalidate, post-check=0, pre-check=0");
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Expires", "-1");

	        response.setHeader("X-Content-Type-Options", "nosniff");
	        response.setHeader("X-XSS-Protection", "1;mode=block");

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object object,
			Exception arg3) throws Exception {
		if (log.isDebugEnabled()) {
				log.info("*********turnaround time : "+ (System.currentTimeMillis() - (Long) request.getAttribute("transactionTime")));
		}
	}
}

