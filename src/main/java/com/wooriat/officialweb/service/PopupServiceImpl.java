package com.wooriat.officialweb.service;

import com.wooriat.officialweb.dto.PopupDto;
import com.wooriat.officialweb.repository.PopupRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;

@Slf4j
@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class PopupServiceImpl implements PopupService{

    private final PopupRepository popupRepository;

    @Override
    public List<PopupDto> getList() {

        LocalDateTime todayTime = LocalDateTime.now();
        PopupDto popupDto = new PopupDto();
        return popupDto.popupDtoList(popupRepository.findByPopupStrtDtBeforeAndPopupEndDtAfterOrderByPopupIdDesc(todayTime, todayTime));
    }
}
