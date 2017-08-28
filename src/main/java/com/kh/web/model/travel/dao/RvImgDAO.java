package com.kh.web.model.travel.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.kh.web.model.travel.dto.RvImgVO;

public interface RvImgDAO extends JpaRepository<RvImgVO, Integer> {
    public RvImgVO findOneByFileName(String fileName);
}
