package com.wooriat.officialweb.controller;


import com.wooriat.officialweb.common.utility.PagingUtil;
import com.wooriat.officialweb.domain.TbNotice;
import com.wooriat.officialweb.dto.NoticeDto;
import com.wooriat.officialweb.service.NoticeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import java.io.OutputStream;
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
import org.springframework.http.server.ServletServerHttpResponse;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Slf4j
@Controller
@RequestMapping(value = "/company")
@RequiredArgsConstructor
public class ComController {

	private final NoticeService noticeService;

    String menuCd;
    String typeCd;
    String sw;
    String year;

    @GetMapping("/news")
    public ModelAndView newsInfo(@RequestParam Map<String, Object> params, Model model, Pageable pageable) {

        ModelAndView modelAndView = new ModelAndView();

        menuCd = (String) params.get("menuCd") == null  ? "C" : (String) params.get("menuCd");
        typeCd = (String)params.get("typeCd") == null ? "" : (String)params.get("typeCd");
        sw = (String)params.get("searchWord") == null ? "" : (String)params.get("searchWord");
        year = (String)params.get("year") == null ? "" : (String)params.get("year");

        int page = (String) params.get("page") == null  ? 1 : Integer.parseInt((String)params.get("page"));

        int currentPage = page;
        if(currentPage <=0) {
            currentPage = 0;
        }else {
            currentPage = currentPage -1;
        }

        pageable = PageRequest.of(currentPage, 10, new Sort(Sort.Direction.DESC, "regDate"));

        if(StringUtils.equalsIgnoreCase(menuCd, "C")) {
            modelAndView.setViewName("kr/company/news");
        }
        else if(StringUtils.equalsIgnoreCase(menuCd, "M")){
            modelAndView.setViewName("kr/company/management");
        }
        else if(StringUtils.equalsIgnoreCase(menuCd, "P")){
            modelAndView.setViewName("kr/company/photonews");
            pageable = PageRequest.of(currentPage, 9, new Sort(Sort.Direction.DESC, "regDate"));
        }
        else if(StringUtils.equalsIgnoreCase(menuCd, "S")){
            modelAndView.setViewName("kr/company/csr");
            pageable = PageRequest.of(currentPage, 9, new Sort(Sort.Direction.DESC, "regDate"));
        }

        Page<TbNotice> noticeList = noticeService.getList(params, pageable);

        model.addAttribute("menuCd", menuCd);
        model.addAttribute("typeCd", typeCd);
        model.addAttribute("year", year);
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

        NoticeDto noticeDto = noticeService.getDetail((int)seqNo);

        ModelAndView modelAndView = new ModelAndView();

        model.addAttribute("menuCd", menuCd);
        model.addAttribute("data", noticeDto);

        if(StringUtils.equalsIgnoreCase(menuCd, "C")) {
            modelAndView.setViewName("kr/company/news_view");
            model.addAttribute("prevDetail", noticeService.prevDetail(tbNotice.get()));
            model.addAttribute("nextDetail", noticeService.nextDetail(tbNotice.get()));
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

    @GetMapping("/overview")
    public ModelAndView overviewInfo() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/company/overview");
        return modelAndView;
    }

    @GetMapping("/history")
    public ModelAndView historyInfo() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/company/history");
        return modelAndView;
    }

    @GetMapping("/ceo")
    public ModelAndView ceoInfo() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/company/ceo");
        return modelAndView;
    }

    @GetMapping("/organization")
    public ModelAndView organizationInfo() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/company/organization");
        return modelAndView;
    }

    @GetMapping("/ehtics")
    public ModelAndView ehticsInfo() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/company/ehtics");
        return modelAndView;
    }

    @GetMapping("/ci_manual")
    public ModelAndView ciManualInfo() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/company/ci_manual");
        return modelAndView;
    }


    @GetMapping("/ci_lucestar")
    public ModelAndView ciLucestarInfo() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/company/ci_lucestar");
        return modelAndView;
    }

    @GetMapping("/recruit")
    public ModelAndView recruitInfo() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/company/recruit");
        return modelAndView;
    }

    @GetMapping("/always_recruit")
    public ModelAndView alwaysRecruitInfo() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/company/always_recruit");
        return modelAndView;
    }

    @GetMapping("/location")
    public ModelAndView locationInfo() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/company/location");
        return modelAndView;
    }

    @PostMapping("/download")
    public void downloadController(@RequestParam Map<String, Object> params, HttpServletResponse res) {


    }


}
