package com.wooriat.officialweb.service;


import com.wooriat.officialweb.common.utility.PagingUtil;
import com.wooriat.officialweb.domain.KoaSale;
import com.wooriat.officialweb.repository.SaleRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@Slf4j
@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class SaleServiceImpl implements SaleService  {

    private final SaleRepository saleRepository;

    @Override
    public Page<KoaSale> getList(Map<String, Object> params, Pageable pageable) {

        String searchWord =  (String) params.get("searchWord");
        String bizCase = (String)params.get("bizCase");

        Page<KoaSale> koaSales = null;

        if(bizCase != null && !bizCase.equals("")) {
            koaSales = saleRepository.findByBizCase(bizCase, pageable);
        }else if(searchWord != null && !searchWord.equals("")){
            searchWord = "%"+searchWord+"%";
            koaSales = saleRepository.findByBunNameLikeOrAddressLikeOrEtcAddressLike(searchWord,searchWord,searchWord,pageable);
        }else{
            koaSales = saleRepository.findAll(pageable);
        }

        return koaSales;
    }

    @Override
    public Optional<KoaSale> getDetail(Long id) {

        return saleRepository.findById(id);
    }

}
