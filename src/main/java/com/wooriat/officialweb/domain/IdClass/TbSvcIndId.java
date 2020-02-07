package com.gsitm.officialweb.domain.IdClass;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.io.Serializable;

import javax.persistence.*;



/** ========================================================================================
 * @Package Name   : com.gsitm.officialweb.domain.IdClass
 * @FileName  : TbSvcIndId.java
 * @Date      : 2019. 10. 17. 
 * @Author    : OSE
 * @Desc      : TB_SVC_IND 테이블 PK
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
public class TbSvcIndId implements Serializable{
	
	@EqualsAndHashCode.Include
	@Column(name = "svc_seq_id")
	private Long svcSeqId;
	
	@EqualsAndHashCode.Include
	@Column(name = "ind_seq_id")
	private Long indSeqId;
	
}
