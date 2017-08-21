package com.kh.web.model.travel.dao;

import java.util.List;

import com.kh.web.model.travel.dto.AreaVO;
import com.kh.web.model.travel.dto.ContentCommonVO;
import com.kh.web.model.travel.dto.MapBoundVO;
import com.kh.web.model.travel.dto.SiGunGuVO;

public interface TravelDAO {
	public List<AreaVO> selectAllArea();
	public List<SiGunGuVO> selectAllSiGunGu();
	public List<ContentCommonVO> selectAllContentCommon();
	public List<Object> bringAllInMap(MapBoundVO mapBoundVO);
}