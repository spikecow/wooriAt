package com.gsitm.officialweb.repository;

import com.gsitm.officialweb.domain.TbMainMgt;
import com.gsitm.officialweb.domain.common.MenuCd;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface MainMgtRepository extends JpaRepository<TbMainMgt,Long> {

    public TbMainMgt findByMainCd(String mainCd);

}
