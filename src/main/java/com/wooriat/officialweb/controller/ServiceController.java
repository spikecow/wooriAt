package com.gsitm.officialweb.controller;

import com.gsitm.officialweb.common.exception.NotExistDataException;
import com.gsitm.officialweb.domain.TbMgt;
import com.gsitm.officialweb.domain.common.MenuCd;
import com.gsitm.officialweb.service.MgtService;
import com.gsitm.officialweb.service.ServiceService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import org.springframework.http.HttpStatus;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.web.servlet.ModelAndView;

/** ========================================================================================
* @Package Name   : com.gsitm.officialweb.controller
* @FileName  : ServiceController.java
* @Date      : 2019. 10. 17.
* @Author    : OSE
* @Desc      : Service Page Controller (서비스군)
* ========================================================================================
* 수정일                                         작성자                                                     내용    
* ----------------------------------------------------------------------------------------
* 2019. 10. 17.               OSE                                                최초 생성
* ========================================================================================
*/
@Slf4j
@Controller
@RequestMapping(value = "/service")
@RequiredArgsConstructor
public class ServiceController {

	private final ServiceService serviceService;

	private final MgtService mgtService;

	@GetMapping("/serviceInfo")
	public ModelAndView serviceInfo(@RequestParam Map<String, Object> params,Device device) {
		ModelAndView modelAndView = new ModelAndView();


		modelAndView.addObject("svcSeqId", (String) params.get("svcSeqId") == null  ? 1 : (String) params.get("svcSeqId") );
		modelAndView.addObject("langCd", (String) params.get("langCd") == null  ? "KR" : (String) params.get("langCd"));
		String langCd = (String) modelAndView.getModel().get("langCd");
		if (device.isMobile() ) {
			if(langCd.equals("KR")){
				modelAndView.setViewName("kr/service/sv_00_ito_01");
			}else{
				modelAndView.setViewName("en/service/sv_00_ito_01");
			}

		} else {
			if(langCd.equals("KR")){
				modelAndView.setViewName("kr/service/sv_001_ito_01");
			}else{
				modelAndView.setViewName("en/service/sv_001_ito_01");
			}

		}
		

		
		return modelAndView;
	}
	@PostMapping("/getServiceMgntInfo")
	@ResponseBody
	public Map<String,Object> getServiceMgntInfo(@RequestParam Map<String,Object> params) { 
		
		Map<String,Object> result = new HashMap<String,Object>();

		try {
			String langCd = (String) params.get("langCd");
			Optional<TbMgt> tbMgt = mgtService.getMgtInfo(Long.parseLong((String)params.get("svcSeqId")),params, MenuCd.SERVICE);
			result.put("tbSvcMgt", tbMgt);
			result.put("tbCaseMgtList", mgtService.getCaseSvcList(Long.parseLong((String)params.get("svcSeqId")), langCd, MenuCd.SERVICE));
			result.put("tbIndMgtList", mgtService.getIndMappingList(Long.parseLong((String)params.get("svcSeqId")), langCd, MenuCd.INDUSTRY));
			result.put("tbPrMgtList", mgtService.getPrMappingList(Long.parseLong((String)params.get("svcSeqId")), langCd));
			result.put("tbSaleUserMgt", mgtService.getSaleUserMgt(tbMgt));

		}catch (NotExistDataException ned){
			log.error("NotExostDataException!",ned);
			throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Service Data Not Found", ned);
		}

		
		if(log.isDebugEnabled()) {
			log.debug("#result({})", result.toString());
		}
	
		return result;
	}
	
	
	@PostMapping("/getServiceMgntList")
	@ResponseBody
	public Map<String,Object> getServiceMgntList(@RequestParam Map<String,Object> params ) { //@PageableDefault(size = 10, page = 0)
		
		Map<String,Object> result = new HashMap<String,Object>();

		result = serviceService.getServiceMgntList(params);
		
		if(log.isDebugEnabled()) {
			log.debug("#result({})", result.toString());
		}
		return result;
	}
	
	
}
