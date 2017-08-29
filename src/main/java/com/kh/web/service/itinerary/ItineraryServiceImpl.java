package com.kh.web.service.itinerary;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.kh.web.model.itinerary.dao.ItineraryDAOImpl;
import com.kh.web.model.itinerary.dto.PlanMainVO;

@Service
public class ItineraryServiceImpl implements ItineraryService{
	
	
	
	@Inject
	ItineraryDAOImpl itineraryDao;
	
	private static final Logger logger = LoggerFactory.getLogger(ItineraryServiceImpl.class);
	
	@Override
	public List<PlanMainVO> itineraryList(){
		logger.info("Service");
		return itineraryDao.itineraryList();
	}
}
