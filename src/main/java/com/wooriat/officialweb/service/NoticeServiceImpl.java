package com.wooriat.officialweb.service;

import com.wooriat.officialweb.domain.ShotSell;
import com.wooriat.officialweb.domain.TbNotice;
import com.wooriat.officialweb.dto.NoticeDto;
import com.wooriat.officialweb.repository.NoticeRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Map;
import java.util.Optional;

@Slf4j
@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class NoticeServiceImpl implements NoticeService{

    private final NoticeRepository noticeRepository;

    @Override
    public Page<TbNotice> getList(Map<String, Object> params, Pageable pageable) {

        String mc = (String)params.get("menuCd");
        String tp = (String)params.get("typeCd") == null ? "" : (String)params.get("typeCd");
        String sw = (String)params.get("searchWord") == null ? "" : (String)params.get("searchWord");
        String year = (String)params.get("year") == null ? "" : (String)params.get("year");

        Page<TbNotice> noticeList;

        if(!tp.equals("") && sw.equals("")){
            noticeList = noticeRepository.findByMenuCdAndTypeCd(mc, tp,  pageable);
        }
        else if(!tp.equals("") && !sw.equals("")) {
            sw = "%"+sw+"%";
            noticeList = noticeRepository.findByMenuCdAndTypeCdAndTitleLikeOrContentLike(mc, tp, sw, sw, pageable);
        }
        else if(tp.equals("") && !sw.equals("")) {
            sw = "%"+sw+"%";
            noticeList = noticeRepository.findByMenuCdAndTitleLikeOrContentLike(mc, sw, sw, pageable);
        }
        else if(!year.equals("")){
            LocalDateTime startDate = LocalDateTime.parse(year+ "-01-01 00:00:00", DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
            LocalDateTime endDate = LocalDateTime.parse(year+ "-12-31 23:59:59", DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
            noticeList = noticeRepository.findByMenuCdAndRegDateBetween(mc, startDate, endDate, pageable);
        }
        else{
            noticeList = noticeRepository.findByMenuCd(mc, pageable);
        }

        return noticeList;
    }

    @Override
    public NoticeDto getDetail(int id) {
        return new NoticeDto(noticeRepository.findById((long) id));
    }

    @Override
    public Optional<TbNotice> getDetail(Long id) {
        return noticeRepository.findById(id);
    }

    @Override
    public TbNotice prevDetail(TbNotice tbNotice) {
        return noticeRepository.findTopByMenuCdAndRegDateLessThanEqualAndSeqNoNotOrderByRegDateDescSeqNoDesc(tbNotice.getMenuCd(), tbNotice.getRegDate(), tbNotice.getSeqNo());
    }

    @Override
    public TbNotice nextDetail(TbNotice tbNotice) {
        return noticeRepository.findTopByMenuCdAndRegDateGreaterThanEqualAndSeqNoNotOrderByRegDateAscSeqNoAsc(tbNotice.getMenuCd(),tbNotice.getRegDate(), tbNotice.getSeqNo());
    }
}
