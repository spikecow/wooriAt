package com.wooriat.officialweb.service;


import com.wooriat.officialweb.domain.ShotSell;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.time.LocalDateTime;
import java.util.Map;
import java.util.Optional;

public interface ShortSellService {

    public Page<ShotSell> getList(Map<String, Object> params, Pageable pageable);
    public Optional<ShotSell> getDetail(Long id);
    public void clickCountPlus(ShotSell shotSell);
    public ShotSell prevDetail(ShotSell shotSell);
    public ShotSell nextDetail(ShotSell shotSell);

}
