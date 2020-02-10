package com.wooriat.officialweb.controller;

import com.wooriat.officialweb.dto.QuestionDto;
import com.wooriat.officialweb.service.QaService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

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
            //qaService.mailSend(questionDto);
            map.put("status", "success");
        }catch(Exception e) {
            map.put("status", "fail");
            map.put("errorMsg", e.getMessage());
            log.error("userInsert : {} ", e);
        }

        return map;
    }
}
