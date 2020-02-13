package com.wooriat.officialweb.service;

import com.wooriat.officialweb.domain.TbNotice;
import com.wooriat.officialweb.dto.NoticeDto;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.Map;
import java.util.Optional;

public interface NoticeService {

    public Page<TbNotice> getList(Map<String, Object> params, Pageable pageable);
    public Optional<TbNotice> getDetail(Long id);
    public TbNotice prevDetail(TbNotice tbNotice);
    public TbNotice nextDetail(TbNotice tbNotice);
    public NoticeDto getDetail(int id);

}
