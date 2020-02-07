package com.gsitm.officialweb.service;

import com.gsitm.officialweb.common.exception.NotExistDataException;
import com.gsitm.officialweb.domain.TbCaseMgt;
import com.gsitm.officialweb.domain.TbMgt;
import com.gsitm.officialweb.domain.TbPrMgt;
import com.gsitm.officialweb.domain.TbSaleUserMgt;
import com.gsitm.officialweb.domain.common.MenuCd;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Map;
import java.util.Optional;

public interface MgtService {

	public Optional<TbMgt> getMgtInfo(Long seqId ,Map<String, Object> params, MenuCd menuCd) throws NotExistDataException;

	public List<TbMgt> getMgtList(Long seqId, Map<String, Object> params, MenuCd menuCd);

	public Optional<TbSaleUserMgt> getSaleUserMgt(Optional<TbMgt> tbMgt) throws NotExistDataException;

	public Page<TbCaseMgt> getCaseMgtList(Map<String, Object> params, Pageable pageable) throws NotExistDataException;

	public List<TbCaseMgt> getCaseSvcList(Long svcSeqId, String langCd, MenuCd menuCd);

	public List<TbMgt> getIndMappingList(Long svcSeqId, String langCd, MenuCd menuCd);

	public List<TbPrMgt> getPrMappingList(Long svcSeqId, String langCd);

}
