package com.wooriat.officialweb.controller;


import com.wooriat.officialweb.common.utility.PagingUtil;
import com.wooriat.officialweb.domain.ShotSell;
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
@RequestMapping(value = "/vendue")
@RequiredArgsConstructor
public class ShortSellController {

	private final ShortSellService shortSellService;

	@GetMapping("/list")
    @ResponseBody
	public ModelAndView listController(@RequestParam Map<String, Object> params, Model model, Pageable pageable) {

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

	@GetMapping("/detail/{id}")
	@ResponseBody
	public ModelAndView detailController(Model model, @PathVariable Long id) throws Exception {

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
