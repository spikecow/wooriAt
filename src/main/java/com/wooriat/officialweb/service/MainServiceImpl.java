package com.gsitm.officialweb.service;

import java.time.LocalDateTime;
import java.util.*;

import com.gsitm.officialweb.domain.*;
import com.gsitm.officialweb.domain.common.MenuCd;
import com.gsitm.officialweb.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MainServiceImpl implements MainService {

	@Value("${build.date}")
	private String versionStr;

	@Autowired
	private MgtRepository mgtRepository;

	@Autowired
	private PrMgtRepository prMgtRepository;

	@Autowired
	private PopupMgtRepository popupMgtRepository;

	@Autowired
	private MainMgtRepository mainMgtRepository;

	public Map<String,Object> getMainViewInfo(Map<String, Object> params){
		Map<String,Object> map  =new HashMap<String,Object>();

		String langCd = (String) params.get("langCd");
		String deviceCd = (String) params.get("deviceCd");
		String statCd = "START"; // (String) params.get("statCd");
		LocalDateTime todayTime = LocalDateTime.now();
		String mainCd = "";

		if(deviceCd.equals("MOBILE")){
			mainCd = "MOBILE";
		}else if(deviceCd.equals("PC")){
			mainCd = "PC";
		}

		if(langCd.equals("EN")){
			mainCd = mainCd + "EN";
		}

		TbMainMgt mainMgt = mainMgtRepository.findByMainCd(mainCd);

		List<TbMgt> indMgtList = mgtRepository.findByLangCdAndMenuCdAndUseYnOrderBySeqIdAsc(langCd, MenuCd.INDUSTRY, "Y");
		List<TbMgt> indList = new ArrayList<>();

		if(mainMgt != null && mainMgt.getIndList() != null && mainMgt.getIndList().size() != 0) {
			for (TbMainMgtInd main : mainMgt.getIndList()) {
				for (TbMgt mgt : indMgtList) {
					if (main.getSeqId().equals(mgt.getSeqId() )) {
						indList.add(mgt);
						break;
					}
				}
			}
		}
		List<TbPrMgt> prMgtList = prMgtRepository.findTop3ByLangCdOrderByPostDtDesc(langCd);
		List<TbPopupMgt> popupMgtList = popupMgtRepository.findByDeviceCdAndStatCdAndPopupStrtDtBeforeAndPopupEndDtAfterOrderByPopupSeqIdDesc(
				deviceCd, statCd, todayTime, todayTime);
		map.put("tbIndMgtList", indList);
		map.put("tbPrMgtList", prMgtList);
		map.put("tbPopupMgtList", popupMgtList);
		map.put("mainMgt", mainMgt);

		return map;
	}


	public Map<String,Object> getHeaderNaviMenu(Map<String,Object> params){
		Map<String,Object> map  =new HashMap<String,Object>();

		String langCd = (String) params.get("langCd");

		//상단 해더 메뉴 Service 조회
		List<TbMgt>  serviceMenuResult =  mgtRepository.findByLangCdAndMenuCdAndUseYnOrderByOdrIdAsc(langCd, MenuCd.SERVICE, "Y");
		//상단 해더 메뉴 industry 조회
		List<TbMgt>  insdustryMenuResult =  mgtRepository.findByLangCdAndMenuCdAndUseYnOrderByOdrIdAsc(langCd, MenuCd.INDUSTRY, "Y");

		/*for (TbMgt serviceMenu : serviceMenuResult) {
			if(serviceMenu.getOgSeqId() == 0) {
				serviceMenu.setOgSeqId(serviceMenu.getSeqId());
			}
		}

		Collections.sort(serviceMenuResult, (s1, s2) -> {
			if (s1.getOgSeqId() < s2.getOgSeqId()) {
				return -1;
			} else if (s1.getOgSeqId() > s2.getOgSeqId()) {
				return 1;
			}
			return 0;
		});

		for (TbMgt insdustryMenu : insdustryMenuResult) {
			if(insdustryMenu.getOgSeqId() == 0) {
				insdustryMenu.setOgSeqId(insdustryMenu.getSeqId());
			}
		}

		Collections.sort(insdustryMenuResult, (s1, s2) -> {
			if (s1.getOgSeqId() < s2.getOgSeqId()) {
				return -1;
			} else if (s1.getOgSeqId() > s2.getOgSeqId()) {
				return 1;
			}
			return 0;
		});*/

		map.put("langCd", langCd);
		map.put("serviceMenuResult", serviceMenuResult);
		map.put("insdustryMenuResult", insdustryMenuResult);
		map.put("buildVer", versionStr);
		return map;
	}

	public Map<String,Object> getFooterMenu(Map<String,Object> params){
		Map<String,Object> map  =new HashMap<String,Object>();

		String langCd = (String) params.get("langCd");

		//하단 해더 메뉴 Service 조회
		List<TbMgt> serviceMenuResult =  mgtRepository.findByLangCdAndMenuCdAndUseYnOrderByOdrIdAsc(langCd, MenuCd.SERVICE, "Y");
		//하단 해더 메뉴 industry 조회
		List<TbMgt> insdustryMenuResult =  mgtRepository.findByLangCdAndMenuCdAndUseYnOrderByOdrIdAsc(langCd, MenuCd.INDUSTRY, "Y");

		/*
		for (TbMgt serviceMenu : serviceMenuResult) {
			serviceMenu.setOgSeqId(serviceMenu.getSeqId());
		}

		Collections.sort(serviceMenuResult, (s1, s2) -> {
			if (s1.getOgSeqId() < s2.getOgSeqId()) {
				return -1;
			} else if (s1.getOgSeqId() > s2.getOgSeqId()) {
				return 1;
			}
			return 0;
		});

		for (TbMgt insdustryMenu : insdustryMenuResult) {
			insdustryMenu.setOgSeqId(insdustryMenu.getSeqId());
		}

		Collections.sort(insdustryMenuResult, (s1, s2) -> {
			if (s1.getOgSeqId() < s2.getOgSeqId()) {
				return -1;
			} else if (s1.getOgSeqId() > s2.getOgSeqId()) {
				return 1;
			}
			return 0;
		});
		*/

		map.put("serviceMenuResult", serviceMenuResult);
		map.put("insdustryMenuResult", insdustryMenuResult);
		TbMgt tbSvcMgt = null;
		if(serviceMenuResult.size() > 0){
			tbSvcMgt = serviceMenuResult.get(0);
		}
		TbMgt tbIndMgt = null;
		if(insdustryMenuResult.size() > 0){
			tbIndMgt = insdustryMenuResult.get(0);
		}
		map.put("mblServiceMenuResult", tbSvcMgt);
		map.put("mblInsdustryMenuResult", tbIndMgt);

		return map;
	}

}
