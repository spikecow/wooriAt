package com.wooriat.officialweb.dto;

import com.wooriat.officialweb.domain.TbQuestion;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.Optional;

@Data
public class QuestionDto {

    private Long qid;
    private String name;
    private String email;
    private String tel;
    private String title;
    private String content;
    private LocalDateTime cretDtm;

    public TbQuestion toEntity(){

        return TbQuestion.builder()
                .qid(this.qid)
                .name(this.name)
                .email(this.email)
                .tel(this.tel)
                .title(this.title)
                .content(this.content)
                .build();
    }

    public QuestionDto(Optional<TbQuestion> tbQuestion) {
        if(tbQuestion.isPresent()) {
            this.qid = tbQuestion.get().getQid();
            this.name = tbQuestion.get().getName();
            this.email = tbQuestion.get().getEmail();
            this.tel = tbQuestion.get().getTel();
            this.title = tbQuestion.get().getTitle();
            this.content = tbQuestion.get().getContent();
            this.cretDtm = tbQuestion.get().getCretDtm();
        }
    }

    public QuestionDto toDto(QuestionDto questionDto) {

        this.qid = questionDto.getQid();
        this.name = questionDto.getName();
        this.email = questionDto.getEmail();
        this.tel = questionDto.getTel();
        this.title = questionDto.getTitle();
        this.content = questionDto.getContent();

        return questionDto;
    }
}
