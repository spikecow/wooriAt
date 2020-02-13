package com.wooriat.officialweb.dto;

import com.wooriat.officialweb.domain.TbPopup;
import lombok.Data;
import org.apache.commons.lang.StringEscapeUtils;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Data
public class PopupDto {
    private Long popupId;
    private String popupTitle;
    private String popupType;
    private String popupText;
    private String popupImg;
    private LocalDateTime popupStrtDt;
    private LocalDateTime popupEndDt;
    private String popupLnkUrl;
    private LocalDateTime cretDtm;
    private LocalDateTime mdfyDtm;

    public PopupDto(Optional<TbPopup> tbPopup) {
    
        if(tbPopup.isPresent()) {
            this.popupId = tbPopup.get().getPopupId();
            this.popupTitle = tbPopup.get().getPopupTitle();
            this.popupType = tbPopup.get().getPopupType();
            this.popupText = StringEscapeUtils.unescapeHtml(tbPopup.get().getPopupText());
            this.popupImg = tbPopup.get().getPopupImg();
            this.popupLnkUrl = tbPopup.get().getPopupLnkUrl();
            this.popupStrtDt = tbPopup.get().getPopupStrtDt();
            this.popupEndDt = tbPopup.get().getPopupEndDt();
            this.cretDtm = tbPopup.get().getCretDtm();
            this.mdfyDtm = tbPopup.get().getMdfyDtm();
        }
    }

    public PopupDto(){

    }

    public PopupDto(TbPopup tbPopup) {

        this.popupId = tbPopup.getPopupId();
        this.popupTitle = tbPopup.getPopupTitle();
        this.popupType = tbPopup.getPopupType();
        this.popupText = StringEscapeUtils.unescapeHtml(tbPopup.getPopupText());
        this.popupImg = tbPopup.getPopupImg();
        this.popupLnkUrl = tbPopup.getPopupLnkUrl();
        this.popupStrtDt = tbPopup.getPopupStrtDt();
        this.popupEndDt = tbPopup.getPopupEndDt();
        this.cretDtm = tbPopup.getCretDtm();
        this.mdfyDtm = tbPopup.getMdfyDtm();
    }

    public List<PopupDto> popupDtoList(List<TbPopup> tbPopupList) {

        List<PopupDto> popupDtoList = new ArrayList<>();
        for (TbPopup tbPopup : tbPopupList) {
            PopupDto popupDto = new PopupDto(tbPopup);
            popupDtoList.add(popupDto);
        }

        return popupDtoList;
    }
}
