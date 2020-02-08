package com.wooriat.officialweb.controller;


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

@Slf4j
@Controller
@RequestMapping(value = "/com")
@RequiredArgsConstructor
public class ComController {

	/* private final ServiceService serviceService;

	private final MgtService mgtService; */

    @GetMapping("/management")
    public ModelAndView serviceInfo(@RequestParam Map<String, Object> params,Device device) {
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.addObject("menuCd", (String) params.get("menuCd") == null  ? "C" : (String) params.get("menuCd") );
        //modelAndView.addObject("langCd", (String) params.get("langCd") == null  ? "KR" : (String) params.get("langCd"));
        //String langCd = (String) modelAndView.getModel().get("langCd");

        modelAndView.setViewName("kr/company/management");

        return modelAndView;
    }



}
