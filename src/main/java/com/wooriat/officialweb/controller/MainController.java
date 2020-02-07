package com.gsitm.officialweb.controller;

import com.gsitm.officialweb.service.MainService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/** ========================================================================================
* @Package Name   : com.gsitm.officialweb.controller
* @FileName  : MainController.java
* @Date      : 2019. 10. 17.
* @Author    : OSE
* @Desc      : Main Page Controller  (메인화면)
* ========================================================================================
* 수정일                                         작성자                                                     내용    
* ----------------------------------------------------------------------------------------
* 2019. 10. 17.               OSE                                                최초 생성
* ========================================================================================
*/
@Slf4j
@Controller
@RequiredArgsConstructor
public class MainController {

	private final MainService mainService;

	@Value("${build.date}")
	private String versionStr;
	@Value("${build.timestamp}}")
	private String versionTimeStampStr;


	@GetMapping("/")
	public ModelAndView main(@RequestParam Map<String, Object> params,Device device) {
		ModelAndView modelAndView = new ModelAndView();


		String langCd = (String) params.get("langCd") == null  ? "KR" : (String) params.get("langCd");
		modelAndView.addObject("langCd", langCd);

		if (device.isMobile() ) {
			if(langCd.equals("KR")){
				log.info("Mobile KR");
				modelAndView.setViewName("kr/main/mobileMain");
			}else{
				log.info("Mobile EN");
				modelAndView.setViewName("en/main/mobileMain");
			}
		} else {
			if(langCd.equals("KR")){
				log.info("PC KR");
				modelAndView.setViewName("kr/main/main");
			}else{
				log.info("PC EN");
				modelAndView.setViewName("en/main/main");
			}
		}

		return modelAndView;
	}
	
	
	@PostMapping("/getHeaderNaviMenu")
	@ResponseBody
	public Map<String,Object> getHeaderNaviMenu(@RequestParam Map<String,Object> params) { 
		Map<String,Object> result = new HashMap<String,Object>();
	
		result = mainService.getHeaderNaviMenu(params);

		if(log.isDebugEnabled()) {
			log.debug("#result({})", result.toString());
		}
		return result;
	}
	
	@PostMapping("/getFooterMenu")
	@ResponseBody
	public Map<String,Object> getFooterMenu(@RequestParam Map<String,Object> params) { 
		Map<String,Object> result = new HashMap<String,Object>();
	
		result = mainService.getFooterMenu(params);

		if(log.isDebugEnabled()) {
			log.debug("#result({})", result.toString());
		}
		return result;
	}


	@PostMapping("/main/getMainViewInfo")
	@ResponseBody
	public Map<String,Object> getMainViewInfo(@RequestParam Map<String,Object> params, Device device) {

		Map<String,Object> result = new HashMap<String,Object>();
		if (device.isMobile() ) {
			params.put("deviceCd", "MOBILE");
		} else {
			params.put("deviceCd", "PC");
		}
		result = mainService.getMainViewInfo(params);

		if(log.isDebugEnabled()) {
			log.debug("#result({})", result.toString());
		}

		return result;
	}

	
}
