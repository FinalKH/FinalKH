package com.kh.web.service.itinerary;

import java.util.List;

import com.kh.web.model.itinerary.dto.PlanMainVO;


public interface ItineraryService {
	//일정 목록
	public List<PlanMainVO> itineraryList();
}

