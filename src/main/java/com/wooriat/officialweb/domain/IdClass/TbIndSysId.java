package com.gsitm.officialweb.domain.IdClass;

import java.io.Serializable;

import javax.persistence.*;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/** ========================================================================================
 * @Package Name   : com.gsitm.officialweb.domain.IdClass
 * @FileName  : TbIndSysId.java
 * @Date      : 2019. 10. 17. 
 * @Author    : OSE
 * @Desc      : TB_IND_SYS 테이블 PK
 * ========================================================================================
 * 수정일         				작성자            					 내용     
 * ----------------------------------------------------------------------------------------
 * 
 * ========================================================================================
 */
@Embeddable
@Getter
@Setter
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@NoArgsConstructor
public class TbIndSysId implements Serializable{
	
	@EqualsAndHashCode.Include
	@Column(name = "ind_seq_id")
	private Long indSeqId;
	
	@EqualsAndHashCode.Include
	@Column(name = "sys_nm")
	private String sysNm;

}
