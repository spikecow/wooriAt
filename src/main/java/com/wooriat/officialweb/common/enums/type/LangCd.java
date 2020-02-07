package com.gsitm.officialweb.common.enums.type;

import com.gsitm.officialweb.common.enums.GsItemAdmEnum;

/** ========================================================================================
 * @Package Name   : com.gsitm.admin.common.enums.type
 * @FileName  : LangCd.java
 * @Date      : 2019. 10. 15. 
 * @Author    : ose 
 * @Desc      : Lang Code Definition
 * ========================================================================================
 * 수정일         				작성자            					 내용     
 * ----------------------------------------------------------------------------------------
 * 
 * ========================================================================================
 */
public enum LangCd implements GsItemAdmEnum{
	
	//언어코드
	KR("KR","국문"),
	EN("EN","영문");
	
	private String value;
	
	private String description;
	
	private LangCd(String value, String description) {
		this.value = value;
		this.description = description;
	}
	
	@Override
	public String getValue() {
		return value;
	}
	
	@Override
	public String getDescription() {
		return description;
	}
}
