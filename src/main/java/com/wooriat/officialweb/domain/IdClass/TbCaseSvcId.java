package com.gsitm.officialweb.domain.IdClass;


import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;


import javax.persistence.*;

import java.io.Serializable;

/** ========================================================================================
 * @Package Name   : com.gsitm.officialweb.domain.IdClass
 * @FileName  : TbCaseSvcId.java
 * @Date      : 2019. 10. 17. 
 * @Author    : OSE
 * @Desc      : TB_CASE_SVC 테이블 PK 
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
public class TbCaseSvcId implements Serializable{
	
	@EqualsAndHashCode.Include
	@Column(name = "case_seq_id")
	private Long caseSeqId;
	
	@EqualsAndHashCode.Include
	@Column(name = "svc_seq_id")
	private Long svcSeqId;
	
	
}
