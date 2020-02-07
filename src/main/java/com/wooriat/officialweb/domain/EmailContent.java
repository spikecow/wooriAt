package com.gsitm.officialweb.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class EmailContent {

    private String name;

    private String phone;

    private String email;

    private String category1;

    private String category2;

    private String title;

    private String content;

    private String attachFile;

    private TbSnsTopicUserMgt topicTarget;
}
