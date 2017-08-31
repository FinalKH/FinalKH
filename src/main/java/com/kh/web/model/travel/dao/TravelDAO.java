package com.kh.web.model.travel.dao;

import java.util.List;
import java.util.Map;

import com.kh.web.model.travel.dto.AreaVO;
import com.kh.web.model.travel.dto.ContentCommonVO;
import com.kh.web.model.travel.dto.MapBoundVO;
import com.kh.web.model.travel.dto.PlanMainVO;
import com.kh.web.model.travel.dto.PlanRoughAreaJoinVO;

public interface TravelDAO {
	public List<AreaVO> selectAllArea();

	public List<ContentCommonVO> selectAllContentCommon();

	public List<Object> bringAllInMap(MapBoundVO mapBoundVO);

	public String insertPlanMainRough(PlanMainVO planMainVO, Map<String, Object> map);

	public PlanMainVO selectPlanMain(String planMainNum);

	public List<PlanRoughAreaJoinVO> selectPlanRoughAreaJoin(String planMainNum);
}