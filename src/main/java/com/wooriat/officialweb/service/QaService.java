package com.wooriat.officialweb.service;


import com.wooriat.officialweb.domain.TbQuestion;
import com.wooriat.officialweb.dto.QuestionDto;

import javax.mail.MessagingException;

public interface QaService {

    public TbQuestion insert(QuestionDto questionDto);

    public void mailSend(QuestionDto questionDto) throws MessagingException;
}
