package com.gsitm.officialweb.domain.IdClass;

import java.io.Serializable;


import javax.persistence.*;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;


/** ========================================================================================
 * @Package Name   : com.gsitm.officialweb.domain.IdClass
 * @FileName  : TbSvcSpId.java
 * @Date      : 2019. 10. 17. 
 * @Author    : OSE
 * @Desc      : TB_SVC_CP 테이블 PK
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
public class TbSvcSpId implements Serializable {
	
	@EqualsAndHashCode.Include
	@Column(name = "svc_seq_id")
	private Long svcSeqId;
	
	@EqualsAndHashCode.Include
	@Column(name = "sp_titl")
	private String spTitl;
	
}
