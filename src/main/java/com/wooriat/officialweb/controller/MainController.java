package com.wooriat.officialweb.controller;

import com.wooriat.officialweb.domain.KoaSale;
import com.wooriat.officialweb.domain.ShotSell;
import com.wooriat.officialweb.domain.TbNotice;
import com.wooriat.officialweb.service.NoticeService;
import com.wooriat.officialweb.service.PopupService;
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

	private final NoticeService noticeService;

	private final PopupService popupService;

	@GetMapping("/")
	public ModelAndView main(@RequestParam Map<String, Object> params,Device device) {
		ModelAndView modelAndView = new ModelAndView();

		Pageable salePageable = PageRequest.of(0, 9, new Sort(Sort.Direction.DESC, "bunDate"));
		Pageable sellPageable = PageRequest.of(0, 7, new Sort(Sort.Direction.DESC, "regDate").and(new Sort(Sort.Direction.DESC, "sellId")) );
		Pageable newsPageable = PageRequest.of(0, 3, new Sort(Sort.Direction.DESC, "regDate"));

		Page<KoaSale> saleList = saleService.getList(params, salePageable); //분양
		Page<ShotSell> shotSellList = shortSellService.getList(params, sellPageable); //공매물
		params.put("menuCd","C");
		Page<TbNotice> noticeList = noticeService.getList(params, newsPageable); // 회사소식

		modelAndView.addObject("saleList", saleList);
		modelAndView.addObject("shotSellList", shotSellList);
		modelAndView.addObject("noticeList", noticeList);
		modelAndView.addObject("popupList", popupService.getList());

		modelAndView.setViewName("kr/main/main");

		return modelAndView;
	}
}
