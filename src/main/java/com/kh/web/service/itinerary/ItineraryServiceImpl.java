package com.kh.web.service.itinerary;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.web.model.itinerary.dao.ItineraryDAO;
import com.kh.web.model.itinerary.dto.AreaVO;
import com.kh.web.model.itinerary.dto.PlanMainVO;

@Service
public class ItineraryServiceImpl implements ItineraryService{
	
	@Inject
	ItineraryDAO itineraryDao;
	
	@Override
	public List<PlanMainVO> itineraryList(){
		return itineraryDao.itineraryList();
	}
	@Override
	public List<AreaVO> areaList() {
		return itineraryDao.areaList();
	}
}
