package com.wooriat.officialweb.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter
@NoArgsConstructor
@Table(name = "Shot_Sell2")
public class ShotSell {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "sell_id")
	private Long sellId;

	@Column(name = "tot_news_seq_no", nullable = false)
	private Integer totNewsSeqNo;

	@Column(name = "news_cd", length = 2, nullable = false)
	private String newsCd;

	@Column(name = "news_seq_no", nullable = false)
	private Integer newsSeqNo;

	@Column(name = "member_id", length = 14, nullable = false)
	private String memberId;

	@Column(name = "reg_date", nullable = false)
	private LocalDateTime regDate;

	@Column(name = "news_title", length = 100, nullable = false)
	private String newsTitle;

	@Column(name = "news_content", length = 10485760, nullable = false)
	private String newsContent;

	@Column(name = "click_cnt", nullable = false)
	private Integer clickCnt;

	@Column(name = "Sort_Status", length = 30)
	private String sortStatus;

	@Column(name = "news_today_yn", length = 100)
	private String newsTodayYn;

	@Column(name = "news_pub_date", length = 100)
	private String newsPubDate;

	@Column(name = "insertFile1", length = 1000)
	private String insertFile1;

	@Column(name = "insertFile2", length = 1000)
	private String insertFile2;

	@Column(name = "insertFile3", length = 1000)
	private String insertFile3;

	@Column(name = "insertFile4", length = 1000)
	private String insertFile4;

	@Column(name = "insertFile5", length = 1000)
	private String insertFile5;

	public void setClickCntPlus(){
		if(this.clickCnt == null){
			this.clickCnt = 0;
		}
		this.clickCnt += 1;
	}
}
