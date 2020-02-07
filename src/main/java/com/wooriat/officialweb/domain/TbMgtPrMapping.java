package com.gsitm.officialweb.domain;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
@Table(name = "TB_MGT_PR_MAPPING")
public class TbMgtPrMapping {

	@Id
	@Column(name = "ID", length = 10)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "pr_seq_id")
	private Long prSeqId;

	@Column(name = "seq_id")
	private Long seqId;

}
