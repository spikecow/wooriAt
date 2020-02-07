package com.gsitm.officialweb.repository;

import com.gsitm.officialweb.domain.TbMgtIndMapping;
import com.gsitm.officialweb.domain.TbMgtPrMapping;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MgtPrMappingRepository extends JpaRepository<TbMgtPrMapping,Long> {

    public List<TbMgtPrMapping> findBySeqId(Long seqId);

}
