package com.wooriat.officialweb.controller;


import com.wooriat.officialweb.common.utility.PagingUtil;
import com.wooriat.officialweb.domain.KoaSale;
import com.wooriat.officialweb.service.SaleService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@Slf4j
@Controller
@RequestMapping(value = "/sale")
@RequiredArgsConstructor
public class SaleController {

	private final SaleService saleService;


	@GetMapping("/list")
    @ResponseBody
	public ModelAndView listController(@RequestParam Map<String, Object> params, Model model, Pageable pageable) {

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

	@GetMapping("/detail/{id}")
	@ResponseBody
	public ModelAndView detailController(Model model, @PathVariable Long id) throws Exception {

		Optional<KoaSale> koaSale = saleService.getDetail(id);
		saleService.viewCountPlus(koaSale.get());

		model.addAttribute("data", koaSale.get());

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("kr/item/sale_view");
		return modelAndView;
	}

	
}
