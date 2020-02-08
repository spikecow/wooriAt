package com.wooriat.officialweb.service;


import com.wooriat.officialweb.domain.KoaSale;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.Map;
import java.util.Optional;

public interface SaleService {

    public Page<KoaSale> getList(Map<String, Object> params, Pageable pageable);
    public Optional<KoaSale> getDetail(Long saleId);

}
