package com.wooriat.officialweb.repository;

import com.wooriat.officialweb.domain.TbQuestion;
import org.springframework.data.jpa.repository.JpaRepository;

public interface QuestionRepository extends JpaRepository<TbQuestion,Long>{

}
