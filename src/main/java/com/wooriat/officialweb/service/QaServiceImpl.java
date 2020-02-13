package com.wooriat.officialweb.service;

import com.wooriat.officialweb.domain.TbQuestion;
import com.wooriat.officialweb.dto.QuestionDto;
import com.wooriat.officialweb.repository.QuestionRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Slf4j
@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class QaServiceImpl implements QaService {

    private final QuestionRepository questionRepository;

    @Override
    @Transactional
    public TbQuestion insert(QuestionDto questionDto) {
        return questionRepository.save(questionDto.toEntity());
    }

}
