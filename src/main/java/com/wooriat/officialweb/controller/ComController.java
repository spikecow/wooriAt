package com.wooriat.officialweb.controller;


import com.wooriat.officialweb.common.utility.PagingUtil;
import com.wooriat.officialweb.domain.TbNotice;
import com.wooriat.officialweb.dto.NoticeDto;
import com.wooriat.officialweb.service.NoticeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import org.apache.commons.lang.StringEscapeUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.web.servlet.ModelAndView;

@Slf4j
@Controller
@RequestMapping(value = "/com")
@RequiredArgsConstructor
public class ComController {

	private final NoticeService noticeService;

    String menuCd;
    String typeCd;
    String sw;

    @GetMapping("/news")
    public ModelAndView newsInfo(@RequestParam Map<String, Object> params, Model model, Pageable pageable) {

        ModelAndView modelAndView = new ModelAndView();

        menuCd = (String) params.get("menuCd") == null  ? "C" : (String) params.get("menuCd");
        typeCd = (String)params.get("typeCd") == null ? "" : (String)params.get("typeCd");
        sw = (String)params.get("searchWord") == null ? "" : (String)params.get("searchWord");

        int page = (String) params.get("page") == null  ? 1 : Integer.parseInt((String)params.get("page"));

        int currentPage = page;
        if(currentPage <=0) {
            currentPage = 0;
        }else {
            currentPage = currentPage -1;
        }

        pageable = PageRequest.of(currentPage, 5, new Sort(Sort.Direction.DESC, "regDate"));

        if(StringUtils.equalsIgnoreCase(menuCd, "C")) {
            modelAndView.setViewName("kr/company/news");
        }
        else if(StringUtils.equalsIgnoreCase(menuCd, "M")){
            modelAndView.setViewName("kr/company/management");
        }
        else if(StringUtils.equalsIgnoreCase(menuCd, "P")){
            modelAndView.setViewName("kr/company/photonews");
            pageable = PageRequest.of(currentPage, 6, new Sort(Sort.Direction.DESC, "regDate"));
        }
        else if(StringUtils.equalsIgnoreCase(menuCd, "S")){
            modelAndView.setViewName("kr/company/csr");
            pageable = PageRequest.of(currentPage, 6, new Sort(Sort.Direction.DESC, "regDate"));
        }

        Page<TbNotice> noticeList = noticeService.getList(params, pageable);

        model.addAttribute("menuCd", menuCd);
        model.addAttribute("typeCd", typeCd);
        model.addAttribute("list", noticeList);
        model.addAttribute("totalPage", noticeList.getTotalPages());
        model.addAttribute("totalCount", noticeList.getTotalElements());
        model.addAttribute("page",page);
        model.addAttribute("pagingHtml", PagingUtil.makePagingHtml(page,5, noticeList.getTotalPages()));
        model.addAttribute("searchWord",sw);





        return modelAndView;
    }

    @GetMapping("/news/{seqNo}/{menuCd}")
    public ModelAndView newsDetailInfo(@PathVariable("seqNo") long seqNo, @PathVariable("menuCd") String menuCd, @RequestParam Map<String, Object> params, Model model, Device device) {


        Optional<TbNotice> tbNotice = noticeService.getDetail(seqNo);

        ModelAndView modelAndView = new ModelAndView();

        model.addAttribute("menuCd", menuCd);
        model.addAttribute("data", tbNotice.get());

        if(StringUtils.equalsIgnoreCase(menuCd, "C")) {
            modelAndView.setViewName("kr/company/news_view");
        }
        else if(StringUtils.equalsIgnoreCase(menuCd, "M")){
            modelAndView.setViewName("kr/company/management");
        }
        else if(StringUtils.equalsIgnoreCase(menuCd, "P")){
            model.addAttribute("prevDetail", noticeService.prevDetail(tbNotice.get()));
            model.addAttribute("nextDetail", noticeService.nextDetail(tbNotice.get()));
            modelAndView.setViewName("kr/company/photonews_view");
        }
        else if(StringUtils.equalsIgnoreCase(menuCd, "S")){
            model.addAttribute("prevDetail", noticeService.prevDetail(tbNotice.get()));
            model.addAttribute("nextDetail", noticeService.nextDetail(tbNotice.get()));
            modelAndView.setViewName("kr/company/csr_view");
        }

        return modelAndView;
    }

}
