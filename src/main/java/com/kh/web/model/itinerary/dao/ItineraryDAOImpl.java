package com.kh.web.model.itinerary.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.kh.web.model.itinerary.dto.PlanMainVO;
import com.kh.web.service.itinerary.ItineraryServiceImpl;

@Repository
public class ItineraryDAOImpl implements ItineraryDAO{
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<PlanMainVO> itineraryList() {
		return sqlSession.selectList("itinerary.itineraryList");
	}
}


