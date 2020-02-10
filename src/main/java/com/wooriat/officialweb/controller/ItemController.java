package com.wooriat.officialweb.controller;


import com.wooriat.officialweb.common.utility.PagingUtil;
import com.wooriat.officialweb.domain.KoaSale;
import com.wooriat.officialweb.domain.ShotSell;
import com.wooriat.officialweb.service.SaleService;
import com.wooriat.officialweb.service.ShortSellService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;
import java.util.Optional;

@Slf4j
@Controller
@RequestMapping(value = "/item")
@RequiredArgsConstructor
public class ItemController {

	private final SaleService saleService;

	private final ShortSellService shortSellService;

	@GetMapping("/sale/list")
    @ResponseBody
	public ModelAndView listSaleController(@RequestParam Map<String, Object> params, Model model, Pageable pageable) {

		log.info("page : {}", pageable);

		int page = (String) params.get("page") == null  ? 1 : Integer.parseInt((String)params.get("page"));

		String searchWord = (String)params.get("searchWord");
		String bizCase = (String)params.get("bizCase");
		int currntPage = page;
		if(currntPage <=0) {
			currntPage = 0;
		}else {
			currntPage = currntPage -1;
		}
		pageable = PageRequest.of(currntPage, 5, new Sort(Sort.Direction.DESC, "bunDate"));

		Page<KoaSale> saleList = saleService.getList(params, pageable);

        model.addAttribute("list", saleList);
        model.addAttribute("totalPage", saleList.getTotalPages());
		model.addAttribute("totalCount", saleList.getTotalElements());
        model.addAttribute("page", page);
        model.addAttribute("searchWord",searchWord);
		model.addAttribute("bizCase",bizCase);
		model.addAttribute("pagingHtml",PagingUtil.makePagingHtml(page,5, saleList.getTotalPages()));

		ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/item/sale_list");
        
        return modelAndView;
	}

	@GetMapping("/sale/detail/{id}")
	@ResponseBody
	public ModelAndView detailSaleController(Model model, @PathVariable Long id) throws Exception {

		Optional<KoaSale> koaSale = saleService.getDetail(id);
		saleService.viewCountPlus(koaSale.get());

		model.addAttribute("data", koaSale.get());

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("kr/item/sale_view");
		return modelAndView;
	}

	@GetMapping("/vendue/list")
	@ResponseBody
	public ModelAndView listVendueController(@RequestParam Map<String, Object> params, Model model, Pageable pageable) {

		log.info("page : {}", pageable);

		int page = (String) params.get("page") == null  ? 1 : Integer.parseInt((String)params.get("page"));

		String searchWord = (String)params.get("searchWord");
		String sortStatus = (String)params.get("sortStatus");
		int currntPage = page;
		if(currntPage <=0) {
			currntPage = 0;
		}else {
			currntPage = currntPage -1;
		}
		pageable = PageRequest.of(currntPage, 10, new Sort(Sort.Direction.DESC, "regDate").and(new Sort(Sort.Direction.DESC, "sellId")) );

		Page<ShotSell> shotSellList = shortSellService.getList(params, pageable);

		model.addAttribute("list", shotSellList);
		model.addAttribute("totalPage", shotSellList.getTotalPages());
		model.addAttribute("totalCount", shotSellList.getTotalElements());
		model.addAttribute("page", page);
		model.addAttribute("searchWord",searchWord);
		model.addAttribute("sortStatus",sortStatus);
		model.addAttribute("pagingHtml",PagingUtil.makePagingHtml(page,5, shotSellList.getTotalPages()));

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("kr/item/vendue_list");

		return modelAndView;
	}

	@GetMapping("/vendue/detail/{id}")
	@ResponseBody
	public ModelAndView detailVendueController(Model model, @PathVariable Long id) throws Exception {

		Optional<ShotSell> shotSell = shortSellService.getDetail(id);
		shortSellService.clickCountPlus(shotSell.get());

		model.addAttribute("data", shotSell.get());
		model.addAttribute("prevDetail", shortSellService.prevDetail(shotSell.get()));
		model.addAttribute("nextDetail", shortSellService.nextDetail(shotSell.get()));

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("kr/item/vendue_view");
		return modelAndView;
	}
	
}
