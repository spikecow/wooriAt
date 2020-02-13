package com.wooriat.officialweb.service;


import com.wooriat.officialweb.domain.TbQuestion;
import com.wooriat.officialweb.dto.QuestionDto;

public interface QaService {

    public TbQuestion insert(QuestionDto questionDto);

}
