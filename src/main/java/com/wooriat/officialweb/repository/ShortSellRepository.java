package com.wooriat.officialweb.repository;


import com.wooriat.officialweb.domain.ShotSell;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDateTime;

public interface ShortSellRepository extends JpaRepository<ShotSell, Long> {

    public Page<ShotSell> findByNewsTitleLike(String sw, Pageable pageable);

    public Page<ShotSell> findBySortStatus(String sortStatus, Pageable pageable);

    public ShotSell findTopByRegDateLessThanEqualAndSellIdLessThanOrderByRegDateDescSellIdDesc(LocalDateTime regDate, Long id); // 이전글
    public ShotSell findTopByRegDateGreaterThanEqualAndSellIdGreaterThanOrderByRegDateAscSellIdAsc(LocalDateTime regDate , Long id); // 다음글

}
