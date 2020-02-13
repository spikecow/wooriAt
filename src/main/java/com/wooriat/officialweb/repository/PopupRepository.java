package com.wooriat.officialweb.repository;

import com.wooriat.officialweb.domain.TbPopup;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDateTime;
import java.util.List;

public interface PopupRepository extends JpaRepository<TbPopup, Long> {
    public List<TbPopup> findByPopupStrtDtBeforeAndPopupEndDtAfterOrderByPopupIdDesc(
            LocalDateTime todayTime, LocalDateTime todayTime2);
}
