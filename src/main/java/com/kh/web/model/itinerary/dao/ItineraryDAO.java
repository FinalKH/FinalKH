package com.kh.web.model.itinerary.dao;

import java.util.List;

import com.kh.web.model.itinerary.dto.PlanAreaVO;
import com.kh.web.model.itinerary.dto.PlanMainVO;

public interface ItineraryDAO {
	// 리스트
	public List<PlanMainVO> itineraryList();
	//리스트에 포함될 AreaName
	public List<PlanAreaVO> areaList();
}