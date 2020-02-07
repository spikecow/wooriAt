package com.gsitm.officialweb.repository;

import com.gsitm.officialweb.domain.TbMgt;
import com.gsitm.officialweb.domain.common.MenuCd;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface MgtRepository extends JpaRepository<TbMgt,Long> {

    public List<TbMgt> findByLangCdAndMenuCdAndUseYnOrderBySeqIdAsc(String langCd, MenuCd menuCd, String useYn);

    public Optional<TbMgt> findBySeqIdAndLangCdAndMenuCdAndUseYn(Long svcSeqId, String langCd, MenuCd menuCd, String useYn);

	public Optional<TbMgt> findBySeqIdAndLangCdAndMenuCdAndUseYnOrSeqIdAndLangCdAndMenuCdAndUseYn(Long seqId,
			String langCd, MenuCd menuCd, String string, Long seqId2, String langCd2, MenuCd menuCd2, String string2);

	public Optional<TbMgt> findBySeqIdAndLangCdAndMenuCdAndUseYnIsNot(Long seqId, String langCd, MenuCd menuCd,
			String string);

	public List<TbMgt> findByLangCdAndMenuCdAndUseYnOrderByOgSeqIdDescSeqIdAsc(String langCd, MenuCd service,
			String string);

	public List<TbMgt> findByLangCdAndMenuCdAndUseYnOrderByOdrIdAsc(String langCd, MenuCd service, String string);

}
