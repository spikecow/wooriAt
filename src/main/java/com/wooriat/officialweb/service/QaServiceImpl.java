package com.wooriat.officialweb.service;

import com.wooriat.officialweb.common.utility.MailUtil;
import com.wooriat.officialweb.domain.TbQuestion;
import com.wooriat.officialweb.dto.QuestionDto;
import com.wooriat.officialweb.repository.QuestionRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.velocity.VelocityContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.mail.MessagingException;

@Slf4j
@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class QaServiceImpl implements QaService {

    private final QuestionRepository questionRepository;

    private final MailUtil mailUtil;


    @Override
    @Transactional
    public TbQuestion insert(QuestionDto questionDto) {
        return questionRepository.save(questionDto.toEntity());
    }

    /**
     *
     *
     */
    @Override
    public void mailSend(QuestionDto questionDto) throws MessagingException {

        VelocityContext velocityContext = new VelocityContext();
        velocityContext.put("questionTitle", questionDto.getTitle());
        velocityContext.put("questionContent", questionDto.getContent());

        mailUtil.sendMail(questionDto.getEmail(), "답변자 이메일","제목"
                ,"", "Y", velocityContext, "qaMail");

    }
}
