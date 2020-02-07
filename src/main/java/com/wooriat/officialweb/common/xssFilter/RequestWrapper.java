package com.gsitm.officialweb.common.xssFilter;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;


/** ========================================================================================
* @Package Name   : com.gsitm.officialweb.common.xssFilter
* @FileName  : RequestWrapper.java
* @Date      : 2019. 10. 17.
* @Author    : OSE
* @Desc      : RequestWrapper
* ========================================================================================
* 수정일                                         작성자                                                     내용    
* ----------------------------------------------------------------------------------------
* 2019. 10. 17.               OSE                                                최초 생성
* ========================================================================================
*/
public class RequestWrapper extends HttpServletRequestWrapper {

	public RequestWrapper(HttpServletRequest servletRequest) {
		super(servletRequest);
	}

	/**
	 * @Method Name  : getParameterValues
	 * @Date     : 2019. 10. 17. 
	 * @Author   : OSE
	 * @Desc     : Get Request Pamameter Values []
	 * @param parameter
	 * @return
	 */
	public String[] getParameterValues(String parameter) {
		String[] values = super.getParameterValues(parameter);

		if (values == null) {
			return null;

		}

		int count = values.length;

		String[] encodedValues = new String[count];

		for (int i = 0; i < count; i++) {
			encodedValues[i] = cleanXSS(values[i]);
		}

		return encodedValues;
	}

	/**
	 * @Method Name  : getParameter
	 * @Date     : 2019. 10. 17. 
	 * @Author   : OSE
	 * @Desc     : Get Request Parameter
	 * @param parameter
	 * @return
	 */
	public String getParameter(String parameter) {

		String value = super.getParameter(parameter);

		if (value == null) {

			return null;

		}

		return cleanXSS(value);

	}

	/**
	 * @Method Name  : getHeader
	 * @Date     : 2019. 10. 17. 
	 * @Author   : OSE
	 * @Desc     : Get Request Header
	 * @param name
	 * @return
	 */
	public String getHeader(String name) {

		String value = super.getHeader(name);

		if (value == null) {
			return null;
		}

		return cleanXSS(value);
	}

	/** ========================================================================================
	 * @Method Name  : cleanXSS
	 * @Author   : OSE
	 * @Date     : 2019. 10. 17.
	 * @Desc     : XSS Replace
	 * @param value
	 * @return
	 * ========================================================================================
	 * 수정일                                         작성자                                                     내용     
	 * ----------------------------------------------------------------------------------------
	 * 2019. 10. 17.            OSE                                        최초 생성
	 * ========================================================================================
	 */
	 
	private String cleanXSS(String value) {
		
		/*if(value.indexOf("alert(") > -1 ){
			throw new devonframe.exception.DevonException("invalid Parameter");
		}*/
		// You'll need to remove the spaces from the html entities below

		value = value.replaceAll("<", "&lt;").replaceAll(">", "&gt;"); 
		value = value.replaceAll("\\(", "&#40;").replaceAll("\\)", "&#41;");  
		value = value.replaceAll("'", "&#39;"); 
		value = value.replaceAll("eval\\((.*)\\)", "");
		value = value.replaceAll("[\\\"\\\'][\\s]*javascript:(.*)[\\\"\\\']","\"\"");
		value = value.replaceAll("script", "a");
		value = value.replaceAll("alert", "a");
		value = value.replaceAll("--", "");
		
		return value;

	}
}
