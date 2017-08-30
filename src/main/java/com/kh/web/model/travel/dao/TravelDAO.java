package com.kh.web.model.travel.dao;


import java.util.List;
import java.util.Map;

import com.kh.web.model.travel.dto.AreaVO;
import com.kh.web.model.travel.dto.ContentCommonVO;
import com.kh.web.model.travel.dto.MapBoundVO;
import com.kh.web.model.travel.dto.PlanMainVO;

public interface TravelDAO {
	public List<AreaVO> selectAllArea();

	public List<ContentCommonVO> selectAllContentCommon();

	public List<Object> bringAllInMap(MapBoundVO mapBoundVO);

	public void insertPlanMainRough(PlanMainVO planMainVO,  Map<String, Object> map);

}