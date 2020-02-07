package com.gsitm.officialweb.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
@Table(name = "TB_MGT_IND_MAPPING")
public class TbMgtIndMapping {

	@Id
	@Column(name = "ID", length = 10)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "IND_SEQ_ID", length = 10)
	private Long indSeqId;

	@Column(name = "seq_id")
	private Long seqId;

}
