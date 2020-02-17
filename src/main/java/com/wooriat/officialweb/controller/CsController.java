package com.wooriat.officialweb.controller;

import com.wooriat.officialweb.dto.QuestionDto;
import com.wooriat.officialweb.service.QaService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping(value = "/cs")
@RequiredArgsConstructor
public class CsController {

    private final QaService qaService;

    @GetMapping("/customer")
    @ResponseBody
    public ModelAndView detailCustomerController() throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/cs/customer");
        return modelAndView;
    }

    @PostMapping("/customer/insert")
    @ResponseBody
    public Map<String,String> insertCustomerController(@ModelAttribute QuestionDto questionDto){

        Map<String,String> map = new HashMap<String, String>();

        try {
            qaService.insert(questionDto);
            map.put("status", "success");
        }catch(Exception e) {
            map.put("status", "fail");
            map.put("errorMsg", e.getMessage());
            log.error("userInsert : {} ", e);
        }

        return map;
    }

    @GetMapping("/terms")
    @ResponseBody
    public ModelAndView detailTermsController() throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/cs/terms");
        return modelAndView;
    }

    @GetMapping("/privacy")
    @ResponseBody
    public ModelAndView detailPrivacyController(@RequestParam Map<String, Object> params, Model model) throws Exception {

        ModelAndView modelAndView = new ModelAndView();

        model.addAttribute("ref", (String) params.get("ref") == null  ? "" : (String) params.get("ref"));
        modelAndView.setViewName("kr/cs/privacy");
        return modelAndView;
    }

    @GetMapping("/security")
    @ResponseBody
    public ModelAndView detailSecurityController() throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/cs/security");
        return modelAndView;
    }

    @GetMapping("/faq")
    @ResponseBody
    public ModelAndView detailFaqController() throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("kr/cs/faq");
        return modelAndView;
    }
}
