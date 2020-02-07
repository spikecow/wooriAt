package com.gsitm.officialweb.domain;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@Table(name = "tb_main_mgt")
public class TbMainMgt {

    @Id
    @Column(name = "main_seq_id", length = 10)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long mainSeqId;

    @Column(name = "ind_desc", length = 500)
    private String indDesc;

    @Column(name = "main_cd", length = 20, unique=true, updatable = false)
    private String mainCd;

    @Column(name = "news_desc", length = 500)
    private String newsDesc;

    @Column(name = "partner_img_url1", length = 500)
    private String partnerImgUrl1;

    @Column(name = "partner_img_url2", length = 500)
    private String partnerImgUrl2;

    @Column(name = "partner_img_url3", length = 500)
    private String partnerImgUrl3;

    @Column(name = "partner_img_url4", length = 500)
    private String partnerImgUrl4;

    @Column(name = "partner_img_url5", length = 500)
    private String partnerImgUrl5;

    @CreationTimestamp
    @Column(name = "cret_dtm", updatable=false)
    private LocalDateTime cretDtm;

    @UpdateTimestamp
    @Column(name = "mdfy_dtm")
    private LocalDateTime mdfyDtm;

    @Column(name = "cret_user_id", length = 20, updatable=false)
    private String cretUserId;

    @Column(name = "mdfy_user_id", length = 20)
    private String mdfyUserId;

    @OneToMany(fetch = FetchType.LAZY,cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name="main_seq_id")
    @OrderBy("id asc")
    private List<TbMainMgtInd> indList = new ArrayList<>();

    @Transient
    private String indSeqId;

}
