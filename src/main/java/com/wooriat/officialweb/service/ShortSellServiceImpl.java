package com.wooriat.officialweb.service;


import com.wooriat.officialweb.domain.ShotSell;
import com.wooriat.officialweb.repository.ShortSellRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.Map;
import java.util.Optional;

@Slf4j
@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class ShortSellServiceImpl implements ShortSellService  {

    private final ShortSellRepository shortSellRepository;

    @Override
    public Page<ShotSell> getList(Map<String, Object> params, Pageable pageable) {

        String searchWord =  (String) params.get("searchWord");
        String sortStatus = (String)params.get("sortStatus");

        Page<ShotSell> shotSell = null;

        if(sortStatus != null && !sortStatus.equals("")) {
            shotSell = shortSellRepository.findBySortStatus(sortStatus, pageable);
        }else if(searchWord != null && !searchWord.equals("")){
            searchWord = "%"+searchWord+"%";
            shotSell = shortSellRepository.findByNewsTitleLike(searchWord, pageable);
        }else{
            shotSell = shortSellRepository.findAll(pageable);
        }

        return shotSell;
    }

    @Override
    public Optional<ShotSell> getDetail(Long id) {
        return shortSellRepository.findById(id);
    }

    @Override
    @Transactional
    public void clickCountPlus(ShotSell shotSell){
        shotSell.setClickCntPlus();
        shortSellRepository.save(shotSell);
    }

    @Override
    public ShotSell prevDetail(ShotSell shotSell) {
        return shortSellRepository.findTopByRegDateLessThanEqualAndSellIdLessThanOrderByRegDateDescSellIdDesc(shotSell.getRegDate(), shotSell.getSellId());
    }

    @Override
    public ShotSell nextDetail(ShotSell shotSell) {
        return shortSellRepository.findTopByRegDateGreaterThanEqualAndSellIdGreaterThanOrderByRegDateAscSellIdAsc(shotSell.getRegDate(), shotSell.getSellId());
    }

}
