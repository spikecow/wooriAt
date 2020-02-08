package com.wooriat.officialweb.controller;

import com.wooriat.officialweb.service.MainService;
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
* @Package Name   : com.wooriat.officialweb.controller
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

	@GetMapping("/")
	public ModelAndView main(@RequestParam Map<String, Object> params,Device device) {
		ModelAndView modelAndView = new ModelAndView();

		/*String langCd = (String) params.get("langCd") == null  ? "KR" : (String) params.get("langCd");
		modelAndView.addObject("langCd", langCd);*/


		modelAndView.setViewName("kr/main/main");

		return modelAndView;
	}
}
