package com.kh.web.service.travel;

import java.util.List;

import com.kh.web.model.travel.dto.AreaVO;
import com.kh.web.model.travel.dto.ContentCommonVO;
import com.kh.web.model.travel.dto.MapBoundVO;

public interface TravelService {
	public List<AreaVO> list();
	public List<ContentCommonVO> listContentCommon();
	public List<Object> bringAllInMap(MapBoundVO mapBoundVO);
}
