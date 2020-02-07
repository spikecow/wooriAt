package com.gsitm.officialweb.repository;

import com.gsitm.officialweb.domain.TbMgtIndMapping;
import com.gsitm.officialweb.domain.common.MenuCd;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface MgtIndMappingRepository extends JpaRepository<TbMgtIndMapping,Long> {

    public List<TbMgtIndMapping> findBySeqId(Long seqId);

}
