package com.wooriat.officialweb.repository;

import com.wooriat.officialweb.domain.ShotSell;
import com.wooriat.officialweb.domain.TbNotice;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDateTime;

public interface NoticeRepository extends JpaRepository<TbNotice,Long>  {
    public Page<TbNotice> findByMenuCdAndTitleLikeOrContentLike(String mc, String tl, String sw, Pageable page);
    public Page<TbNotice> findByMenuCdAndTypeCdAndTitleLikeOrContentLike(String mc, String tp, String tl, String sw, Pageable page);

    public Page<TbNotice> findByMenuCdAndTypeCd(String mc, String tp, Pageable page);
    public Page<TbNotice> findByMenuCd(String mc, Pageable page);
    public Page<TbNotice> findByMenuCdAndRegDateBetween(String mc, LocalDateTime startDate, LocalDateTime endDate, Pageable page);

    public TbNotice findTopByMenuCdAndRegDateLessThanEqualAndSeqNoNotOrderByRegDateDescSeqNoDesc(String mc, LocalDateTime regDate, Long id); // 이전글
    public TbNotice findTopByMenuCdAndRegDateGreaterThanEqualAndSeqNoNotOrderByRegDateAscSeqNoAsc(String mc, LocalDateTime regDate , Long id); // 다음글
}
