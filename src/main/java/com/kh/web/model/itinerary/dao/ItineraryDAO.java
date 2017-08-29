package com.kh.web.model.itinerary.dao;

import java.util.List;

import com.kh.web.model.itinerary.dto.PlanMainVO;

public interface ItineraryDAO {
	// 리스트
		public List<PlanMainVO> itineraryList();
}