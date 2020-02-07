package com.gsitm.officialweb.domain.IdClass;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;


import javax.persistence.*;

import java.io.Serializable;


/** ========================================================================================
 * @Package Name   : com.gsitm.officialweb.domain.IdClass
 * @FileName  : TbCasePrId.java
 * @Date      : 2019. 10. 17. 
 * @Author    : Ose
 * @Desc      : TB_CASE_PR 테이블 PK
 * ========================================================================================
 * 수정일         				작성자            					 내용     
 * ----------------------------------------------------------------------------------------
 * 
 * ========================================================================================
 */
@Embeddable
@Data
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@NoArgsConstructor
public class TbCasePrId implements Serializable{
	
	@EqualsAndHashCode.Include
	@Column(name = "case_seq_id")
	private Long caseSeqId;
	

	@EqualsAndHashCode.Include
	@Column(name = "pr_seq_id")
	private String prSeqId;
}
