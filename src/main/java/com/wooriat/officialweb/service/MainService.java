package com.gsitm.officialweb.service;

import java.util.Map;


public interface MainService {

	public Map<String,Object> getMainViewInfo(Map<String, Object> params);

	public Map<String,Object> getHeaderNaviMenu(Map<String,Object> params);
	
	public Map<String,Object> getFooterMenu(Map<String,Object> params);
}
