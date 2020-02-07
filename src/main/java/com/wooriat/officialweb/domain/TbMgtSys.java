package com.gsitm.officialweb.domain;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@Table(name = "TB_MGT_SYS")
public class TbMgtSys {

	@Id
	@Column(name = "SYS_ID", length = 10)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long sysId;

	@Column(name = "SYS_NM", length = 256)
	private String sysNm;

	@Column(name = "SYS_DESC", length = 4000)
	private String sysDesc;

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

}
