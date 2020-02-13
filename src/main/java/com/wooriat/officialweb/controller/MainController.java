package com.wooriat.officialweb.controller;

import com.wooriat.officialweb.domain.KoaSale;
import com.wooriat.officialweb.domain.ShotSell;
import com.wooriat.officialweb.service.SaleService;
import com.wooriat.officialweb.service.ShortSellService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import java.util.Map;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

	private final SaleService saleService;

	private final ShortSellService shortSellService;

	@GetMapping("/")
	public ModelAndView main(@RequestParam Map<String, Object> params,Device device) {
		ModelAndView modelAndView = new ModelAndView();

		Pageable pageable = PageRequest.of(0, 3, new Sort(Sort.Direction.DESC, "bunDate"));
		Pageable pageable2 = PageRequest.of(0, 7, new Sort(Sort.Direction.DESC, "regDate").and(new Sort(Sort.Direction.DESC, "sellId")) );

		Page<KoaSale> saleList = saleService.getList(params, pageable); //분양
		Page<ShotSell> shotSellList = shortSellService.getList(params, pageable2); //공매물

		modelAndView.addObject("saleList", saleList);
		modelAndView.addObject("shotSellList", shotSellList);

		modelAndView.setViewName("kr/main/main");

		return modelAndView;
	}
}
