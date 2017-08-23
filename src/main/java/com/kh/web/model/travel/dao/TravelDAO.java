package com.kh.web.model.travel.dao;


import java.util.List;

import com.kh.web.model.travel.dto.AreaVO;
import com.kh.web.model.travel.dto.ContentCommonVO;
import com.kh.web.model.travel.dto.MapBoundVO;

public interface TravelDAO {
	public List<AreaVO> selectAllArea();
	public List<ContentCommonVO> selectAllContentCommon();
	public List<Object> bringAllInMap(MapBoundVO mapBoundVO);

}