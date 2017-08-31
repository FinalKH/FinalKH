package com.kh.web.service.travel;


import java.util.List;
import java.util.Map;

import com.kh.web.model.travel.dto.AreaVO;
import com.kh.web.model.travel.dto.ContentCommonVO;
import com.kh.web.model.travel.dto.MapBoundVO;
import com.kh.web.model.travel.dto.PlanMainVO;

public interface TravelService {
	public List<AreaVO> list();
	public List<ContentCommonVO> listContentCommon();
	public List<Object> bringAllInMap(MapBoundVO mapBoundVO);
	public String insertPlanMainRough(PlanMainVO planMainVO, Map<String, Object> map);

}
