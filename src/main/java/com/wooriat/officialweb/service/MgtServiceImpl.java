package com.gsitm.officialweb.service;

import com.gsitm.officialweb.common.exception.NotExistDataException;
import com.gsitm.officialweb.domain.*;
import com.gsitm.officialweb.domain.common.MenuCd;
import com.gsitm.officialweb.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class MgtServiceImpl implements MgtService{

    @Autowired
    private MgtRepository mgtRepository;

    @Autowired
    private SaleUserMgtRepository saleUserMgtRepository;

    @Autowired
    private CaseMgtRepository caseMgtRepository;

    @Autowired
    private CaseSvcRepository caseSvcRepository;

    @Autowired
    private MgtIndMappingRepository mgtIndMappingRepository;

    @Autowired
    private MgtPrMappingRepository mgtPrMappingRepository;

    @Autowired
    private PrMgtRepository prMgtRepository;

    @Override
    public Optional<TbMgt> getMgtInfo(Long seqId, Map<String, Object> params, MenuCd menuCd) throws NotExistDataException {
        Map<String,Object> map  =new HashMap<String,Object>();

        String langCd = (String) params.get("langCd");
        String nowTabIndex = (String) params.get("nowTabIndex");
        map.put("nowTabIndex",nowTabIndex);
        map.put("langCd",langCd);

        //1.TB_SVC_MGT SVC_SEQ_ID 로 조회
        Optional<TbMgt> tbMgt  = mgtRepository.findBySeqIdAndLangCdAndMenuCdAndUseYnIsNot(seqId , langCd, menuCd, "N");

        return tbMgt;
    }

    @Override
    public List<TbMgt> getMgtList(Long seqId, Map<String, Object> params, MenuCd menuCd){
        Map<String,Object> map  =new HashMap<String,Object>();

        String langCd = (String) params.get("langCd");

        List<TbMgt> tbMgtList = mgtRepository.findByLangCdAndMenuCdAndUseYnOrderBySeqIdAsc(langCd, menuCd, "Y");

        return tbMgtList;
    }

    @Override
    public Optional<TbSaleUserMgt> getSaleUserMgt(Optional<TbMgt> tbMgt) throws NotExistDataException{
    	Optional<TbSaleUserMgt> tbSaleUserMgt = null;
    	
    	if( tbMgt.isPresent() ) {
        	
        	if( tbMgt.get().getSaleUserSeqId() != null ) {
                tbSaleUserMgt = saleUserMgtRepository.findById(tbMgt.get().getSaleUserSeqId());	
        	}
    	}

        return tbSaleUserMgt;
    }

    @Override
    public Page<TbCaseMgt> getCaseMgtList(Map<String, Object> params, Pageable pageable) throws NotExistDataException{
        Map<String,Object> map  =new HashMap<String,Object>();

        //페이지 설정
        int page  = Integer.parseInt((String) params.get("page"));

        pageable = PageRequest.of(page, 10);

        Long indSeqId = new Long((String) params.get("indSeqId"));
        String lnagCd = (String) params.get("langCd");

        Page<TbCaseMgt> tbCaseMgtPage = caseMgtRepository.findByIndSeqIdAndLangCdOrderByCaseSeqIdDesc(indSeqId,lnagCd,pageable);

        //map.put("caseMgtInfoList",tbCaseMgtPage.getContent());
        return tbCaseMgtPage;
    }

    @Override
    public List<TbCaseMgt> getCaseSvcList(Long svcSeqId, String langCd, MenuCd menuCd){

        //서비스 구축 사례
        //TB_SVC_CASE -> TB_CASE_MGT
        List<TbCaseMgt> tbCaseMgtList = new ArrayList<TbCaseMgt>();
        List<TbCaseSvc> tbCaseSvcList = caseSvcRepository.findBySeqId(svcSeqId);
        String useYn = "Y";
        for(TbCaseSvc tbCaseSvc : tbCaseSvcList) {
            Optional<TbCaseMgt> tbCaseMgt = caseMgtRepository.findByCaseSeqIdAndLangCdAndUseYnOrderByCaseSeqIdDesc(tbCaseSvc.getCaseSeqId(),langCd, useYn);
            if(tbCaseMgt.isPresent()) {
                TbCaseMgt temp = tbCaseMgt.get();

                Optional<TbMgt> tbIndMgt = mgtRepository.findById(tbCaseMgt.get().getIndSeqId());
                if(tbIndMgt.isPresent()) {
                    tbCaseMgt.get().setTbMgt(tbIndMgt.get());
                }
                tbCaseMgtList.add(tbCaseMgt.get());
            }
        }

        return tbCaseMgtList;
    }

    @Override
    public List<TbMgt> getIndMappingList(Long svcSeqId, String langCd, MenuCd menuCd){

        //서비스 구축 사례
        //산업군 조회
        //TB_SYS_IND =svcSeqId로  indSeqId 조회 후 TB_IND_MGT 조회
        List<TbMgt> tbIndMgtList = new ArrayList<TbMgt>();
        List<TbMgtIndMapping>  tbSvcIndList= mgtIndMappingRepository.findBySeqId(svcSeqId);
        for(TbMgtIndMapping tbSvcInd : tbSvcIndList) {
            Optional<TbMgt> tbIndMgt = mgtRepository.findBySeqIdAndLangCdAndMenuCdAndUseYnIsNot(tbSvcInd.getIndSeqId(), langCd, menuCd, "N");
            if(tbIndMgt.isPresent()) {
                tbIndMgtList.add(tbIndMgt.get());
            }
        }

        return tbIndMgtList;
    }

    @Override
    public List<TbPrMgt> getPrMappingList(Long svcSeqId, String langCd){
        //* 홍보자료 목록과 선택된홍보자료 리스트 *//
        List<TbPrMgt> tbPrMgtList =  new ArrayList<TbPrMgt>();
        List<TbMgtPrMapping> tbSvcPrList = mgtPrMappingRepository.findBySeqId(svcSeqId);


        //pr_seq_id 로 TB_PR_MGT 조회
        for(TbMgtPrMapping tbSvcPr : tbSvcPrList) {
            Optional<TbPrMgt> tbPrMgt =  prMgtRepository.findByPrSeqIdAndLangCd(tbSvcPr.getPrSeqId(),langCd);
            if(tbPrMgt.isPresent()) {
                tbPrMgtList.add(tbPrMgt.get());
            }
        }

        return tbPrMgtList;
    }

}
