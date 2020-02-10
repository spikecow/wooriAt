package com.wooriat.officialweb.controller;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import org.apache.commons.lang.StringEscapeUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.http.HttpStatus;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.web.servlet.ModelAndView;

@Slf4j
@Controller
@RequestMapping(value = "/com")
@RequiredArgsConstructor
public class ComController {

	/* private final ServiceService serviceService;

	private final MgtService mgtService; */

    @GetMapping("/news")
    public ModelAndView newsInfo(@RequestParam Map<String, Object> params, Device device) {
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.addObject("menuCd", (String) params.get("menuCd") == null  ? "C" : (String) params.get("menuCd") );

        if(StringUtils.equalsIgnoreCase((String) params.get("menuCd"), "C")) {
            modelAndView.setViewName("kr/company/news");
        }
        else if(StringUtils.equalsIgnoreCase((String) params.get("menuCd"), "M")){
            modelAndView.setViewName("kr/company/management");
        }
        else if(StringUtils.equalsIgnoreCase((String) params.get("menuCd"), "P")){
            modelAndView.setViewName("kr/company/photonews");
        }
        else if(StringUtils.equalsIgnoreCase((String) params.get("menuCd"), "R")){
            modelAndView.setViewName("kr/company/csr");
        }

        return modelAndView;
    }

    @GetMapping("/news/{seqNo}")
    public ModelAndView newsDetailInfo(@PathVariable("seqNo") int seqNo, @RequestParam Map<String, Object> params, Device device) {
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.addObject("menuCd", (String) params.get("menuCd") == null  ? "C" : (String) params.get("menuCd") );

        if(StringUtils.equalsIgnoreCase((String) params.get("menuCd"), "C")) {
            modelAndView.setViewName("kr/company/news_view");
        }
        else if(StringUtils.equalsIgnoreCase((String) params.get("menuCd"), "M")){
            modelAndView.setViewName("kr/company/management");
        }
        else if(StringUtils.equalsIgnoreCase((String) params.get("menuCd"), "P")){
            modelAndView.setViewName("kr/company/photonews_view");
        }
        else if(StringUtils.equalsIgnoreCase((String) params.get("menuCd"), "R")){
            modelAndView.setViewName("kr/company/csr_view");
        }

        return modelAndView;
    }

}
