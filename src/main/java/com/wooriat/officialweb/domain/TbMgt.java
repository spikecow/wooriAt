package com.gsitm.officialweb.domain;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.gsitm.officialweb.domain.common.MenuCd;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@ToString
@Table(name = "TB_MGT")
public class TbMgt {

	@Id
    @Column(name = "SEQ_ID", length = 10)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long seqId;

	@Column(name = "MENU_CD", length = 20, updatable=false)
	@Enumerated(EnumType.STRING)
	private MenuCd menuCd;

	@Column(name = "LANG_CD", length = 10)
	private String langCd;

	@Column(name = "PC_UPSIDE_IMG_URL", length = 256)
	private String pcUpsideImgUrl;

	@Column(name = "MBL_UPSIDE_IMG_URL", length = 256)
	private String mblUpsideImgUrl;

	@Column(name = "TITLE_NM" , length = 500)
	private String titleNm;

	@Column(name = "ICON_IMG_URL1" , length = 256)
	private String iconImgUrl1;

	@Column(name = "ICON_IMG_URL2" , length = 256)
	private String iconImgUrl2;

	@Column(name = "DTL_IMG_URL" , length = 256)
	private String dtlImgUrl;

	@Column(name = "INTRO_DESC" , length = 2000)
	private String introDesc;

	@Column(name = "MBL_INTRO_DESC" , length = 2000)
	private String mblIntroDesc;

	@Column(name = "DTL_DESC" , length = 4000)
	private String dtlDesc;

	@Column(name = "MBL_DTL_DESC" , length = 4000)
	private String mblDtlDesc;

	@Column(name = "BENEFIT1_ICON_URL" , length = 256)
	private String benefit1IconUrl;

	@Column(name = "BENEFIT1_PC_DESC" , length = 500)
	private String benefit1PcDesc;

	@Column(name = "BENEFIT1_MBL_DESC" , length = 500)
	private String benefit1MblDesc;

	@Column(name = "BENEFIT2_ICON_URL" , length = 256)
	private String benefit2IconUrl;

	@Column(name = "BENEFIT2_PC_DESC" , length = 500)
	private String benefit2PcDesc;

	@Column(name = "BENEFIT2_MBL_DESC" , length = 500)
	private String benefit2MblDesc;

	@Column(name = "BENEFIT3_ICON_URL" , length = 256)
	private String benefit3IconUrl;

	@Column(name = "BENEFIT3_PC_DESC" , length = 500)
	private String benefit3PcDesc;

	@Column(name = "BENEFIT3_MBL_DESC" , length = 500)
	private String benefit3MblDesc;

	@Column(name = "PROCESS_PC_IMG_URL" , length = 256)
	private String processPcImgUrl;

	@Column(name = "PROCESS_PC_DESC" , length = 4000)
	private String processPcDesc;

	@Column(name = "PROCESS_MBL_IMG_URL" , length = 256)
	private String processMblImgUrl;

	@Column(name = "PROCESS_MBL_DESC" , length = 4000)
	private String processMblDesc;

	@Column(name = "TAB_YN" , length = 1)
	@ColumnDefault("'N'")
	private String tabYn;

	@Column(name = "TAB_LANGHT" , length = 1)
	@ColumnDefault("0")
	private Long tabLanght;

	@Column(name = "TAB1_NM" , length = 256)
	private String tab1Nm;

	@Column(name = "TAB1_TITLE" , length = 256)
	private String tab1Title;

	@Column(name = "TAB1_PC_DESC" , length = 4000)
	private String tab1PcDesc;

	@Column(name = "TAB1_MBL_DESC" , length = 4000)
	private String tab1MblDesc;

	@Column(name = "TAB2_NM" , length = 256)
	private String tab2Nm;

	@Column(name = "TAB2_TITLE" , length = 256)
	private String tab2Title;

	@Column(name = "TAB2_PC_DESC" , length = 4000)
	private String tab2PcDesc;

	@Column(name = "TAB2_MBL_DESC" , length = 4000)
	private String tab2MblDesc;

	@Column(name = "TAB3_NM" , length = 256)
	private String tab3Nm;

	@Column(name = "TAB3_TITLE" , length = 256)
	private String tab3Title;

	@Column(name = "TAB3_PC_DESC" , length = 4000)
	private String tab3PcDesc;

	@Column(name = "TAB3_MBL_DESC" , length = 4000)
	private String tab3MblDesc;

	@Column(name = "TAB4_NM" , length = 256)
	private String tab4Nm;

	@Column(name = "TAB4_TITLE" , length = 256)
	private String tab4Title;

	@Column(name = "TAB4_PC_DESC" , length = 4000)
	private String tab4PcDesc;

	@Column(name = "TAB4_MBL_DESC" , length = 4000)
	private String tab4MblDesc;

	@Column(name = "ITO_YN" , length = 1)
	@ColumnDefault("'N'")
	private String itoYn;

	@Column(name = "NEWS_YN" , length = 1)
	@ColumnDefault("'N'")
	private String newsYn;

	@Column(name = "NEWS_TITL_IMG_URL", length = 256)
	private String newsTitlImgUrl;

	@Column(name = "REF_TITL_IMG_URL", length = 256)
	private String refTitlImgUrl;

	@Column(name = "SALE_USER_SEQ_ID" , length = 10)
	private Long saleUserSeqId;

	@Column(name = "DNLD_DOC_NM_1" , length = 500)
	private String dnldDocNm1;

	@Column(name = "DNLD_DOC_LNK_URL_1" , length = 256)
	private String dnldDocLnkUrl1;

	@Column(name = "DNLD_DOC_NM_2" , length = 500)
	private String dnldDocNm2;

	@Column(name = "DNLD_DOC_LNK_URL_2" , length = 256)
	private String dnldDocLnkUrl2;

	@Column(name = "MAIN_ICON_IMG_URL" , length = 256)
	private String mainIconImgUrl;

	@Column(name = "MAIN_DESC" , length = 4000)
	private String mainDesc;

	@Column(name = "BANNER_PC_IMG_URL" , length = 256)
	private String bannerPcImgUrl;

	@Column(name = "BANNER_MBL_IMG_URL" , length = 256)
	private String bannerMblImgUrl;

	@Column(name = "USE_YN" , length = 1)
	@ColumnDefault("'Y'")
	private String useYn = "Y";
	
	@Column(name = "ODR_ID")
	@ColumnDefault("1")
	private Long odrId;
	
	@CreationTimestamp
    @Column(name = "CRET_DTM")
    private LocalDateTime cretDtm;

    @UpdateTimestamp
    @Column(name = "MDFY_DTM")
    private LocalDateTime mdfyDtm;

    @Column(name = "CRET_USER_ID", length = 20)
    private String cretUserId;

    @Column(name = "MDFY_USER_ID", length = 20)
    private String mdfyUserId;

	@Column(name = "OG_SEQ_ID", length = 20)
	private Long ogSeqId;

	@Transient
	private String krNm;

	@Transient
	private String enNm;

	@Transient
	private String indSeqId;

	@OneToMany(fetch = FetchType.LAZY,cascade = CascadeType.ALL, orphanRemoval = true)
	@JoinColumn(name="SEQ_ID")
	private List<TbMgtSys> sys = new ArrayList<>();
/*
	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
	@JoinColumn(name="SEQ_ID")
	private List<TbMgtIndMapping> indMapping = new ArrayList<>();

	@JsonManagedReference
	@OneToMany(mappedBy = "tbMgt", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
	private List<TbMgtPrMapping> prMapping = new ArrayList<>();
*/

	@Transient
	private List<Long> prList = new ArrayList<>();

}
