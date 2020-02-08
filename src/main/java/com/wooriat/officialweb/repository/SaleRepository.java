package com.wooriat.officialweb.repository;

import com.wooriat.officialweb.domain.KoaSale;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SaleRepository extends JpaRepository<KoaSale, Long> {

    public Page<KoaSale> findByBunNameLikeOrAddressLikeOrEtcAddressLike(String sw, String sw1, String sw2, Pageable pageable);

    public Page<KoaSale> findByBizCase(String bizCase, Pageable pageable);
}
