package com.wooriat.officialweb.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter
@NoArgsConstructor
@Table(name = "KOA_SALE")
public class KoaSale {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "sale_id")
    private Long saleId;

    @Column(name = "SeqNo", length = 14, nullable = false)
    private String seqNo;

    @Column(name = "BunName", length = 100, nullable = false)
    private String bunName; // 사업명

    @Column(name = "AddrCD", length = 13, columnDefinition ="char")
    private String addrCd; // 주소코드 (이전 데이터만 사용)

    @Column(name = "Address", length = 100)
    private String address; // 주소명

    @Column(name = "EtcAddress", length = 80)
    private String etcAddress; // 기타 주소

    @Column(name = "BizType", length = 2)
    private String bizType; // 분양방식

    @Column(name = "BizCase", length = 2)
    private String bizCase; // 사업종류

    @Column(name = "Progress1", length = 5)
    private String progress1; // 가설공사 공정률

    @Column(name = "Progress2", length = 5)
    private String progress2; // 건축공사 공정률

    @Column(name = "Progress3", length = 5)
    private String progress3; // 토목공사 공정률

    @Column(name = "Progress4", length = 5)
    private String progress4; // 전기공사 공정률

    @Column(name = "Progress5", length = 5)
    private String progress5; // 설비공사 공정률

    @Column(name = "Progress6", length = 5)
    private String progress6; // 전체 공정률

    @Column(name = "ReqTel", length = 50)
    private String reqTel; // 연락처 분양문의

    @Column(name = "Scale", length = 70)
    private String scale; // 규모

    @Column(name = "TotalSedae", length = 70)
    private String totalSedae; // 총세대수

    @Column(name = "BunSedae", length = 70)
    private String bunSedae; // 분양세대수

    @Column(name = "Pyung", length = 20)
    private String pyung; // 연면적

    @Column(name = "Construction", length = 50)
    private String construction; // 구조

    @Column(name = "BunDate")
    private LocalDateTime bunDate; // 분양시기

    @Column(name = "IpDate")
    private LocalDateTime ipDate; // 입주시기

    @Column(name = "LandArea", length = 50)
    private String landArea; // 대지면적

    @Column(name = "ConstArea", length = 50)
    private String constArea; // 건축면적

    @Column(name = "YungPer", length = 10)
    private String yungPer; // 용적률

    @Column(name = "GunPer", length = 10)
    private String gunPer; // 건폐율

    @Column(name = "Parkn", length = 10)
    private String parkn; // 주차대수

    @Column(name = "SiOffice", length = 100)
    private String siOffice; // 위탁사

    @Column(name = "SgOffice", length = 100)
    private String sgOffice; // 시공사

    @Column(name = "BankOffice", length = 100)
    private String bankOffice; // 금융사

    @Column(name = "BunType", length = 30)
    private String bunType; // 분양방식

    @Column(name = "Status", length = 30)
    private String status; // 사업상태

    @Column(name = "HotWay", length = 2)
    private String hotWay; // 난방방식

    @Column(name = "ImgTitle1", length = 50)
    private String imgTitle1; // 리스트용 이미지 제목

    @Column(name = "ImgTitle2", length = 50)
    private String imgTitle2; // 조감도 이미지 제목

    @Column(name = "nPhoto1", length = 80)
    private String nPhoto1; // 리스트용 이미지 파일

    @Column(name = "nPhoto2", length = 80)
    private String nPhoto2; // 조감도 이미지 파일

    @Column(name = "Team", length = 20)
    private String team; // 담당팀

    @Column(name = "HomePage", length = 100)
    private String homePage; // 사업자홈페이지

    @Column(name = "SigongHomePage", length = 100)
    private String sigongHomePage; // 시행사홈페이지

    @Column(name = "ConstHomePage", length = 100)
    private String constHomePage; // 건설사 홈페이지

    @Column(name = "RegDate", updatable = false)
    @CreationTimestamp
    private LocalDateTime regDate; // 등록일

    @Column(name = "view_count")
    private Long viewCount = 0L; // 조회수

    @Column(name = "Memo", length = 10485760)
    private String memo; // 특징 및 기타 내용

    public void setViewCountPlus(){
        if(this.viewCount == null){
            this.viewCount = 0L;
        }
        this.viewCount += 1;
    }
}
