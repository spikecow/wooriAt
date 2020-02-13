package com.wooriat.officialweb.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping(value = "/trust")
public class TrustController {

    @GetMapping("/agency")
    @ResponseBody
    public ModelAndView detailAgencyController() throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/trust/agency");
        return modelAndView;
    }

    @GetMapping("/assets")
    @ResponseBody
    public ModelAndView detailAssetsController() throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/trust/assets");
        return modelAndView;
    }

    @GetMapping("/city")
    @ResponseBody
    public ModelAndView detailCityController() throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/trust/city");
        return modelAndView;
    }

    @GetMapping("/disposal")
    @ResponseBody
    public ModelAndView detailDisposalController() throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/trust/disposal");
        return modelAndView;
    }

    @GetMapping("/finance")
    @ResponseBody
    public ModelAndView detailFinanceController() throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/trust/finance");
        return modelAndView;
    }

    @GetMapping("/land")
    @ResponseBody
    public ModelAndView detailLandController() throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/trust/land");
        return modelAndView;
    }

    @GetMapping("/manage")
    @ResponseBody
    public ModelAndView detailManageController() throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/trust/manage");
        return modelAndView;
    }

    @GetMapping("/manage_land")
    @ResponseBody
    public ModelAndView detailManageLandController() throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/trust/manage_land");
        return modelAndView;
    }

    @GetMapping("/pfv")
    @ResponseBody
    public ModelAndView detailPfvController() throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/trust/pfv");
        return modelAndView;
    }

    @GetMapping("/sale")
    @ResponseBody
    public ModelAndView detailSaleController() throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/trust/sale");
        return modelAndView;
    }

    @GetMapping("/security")
    @ResponseBody
    public ModelAndView detailSecurityController() throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/trust/security");
        return modelAndView;
    }
}
