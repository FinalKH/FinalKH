package com.kh.web.model.itinerary.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.web.model.itinerary.dto.AreaVO;
import com.kh.web.model.itinerary.dto.PlanMainVO;

@Repository
public class ItineraryDAOImpl implements ItineraryDAO{
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<PlanMainVO> itineraryList() {
		return sqlSession.selectList("itinerary.itineraryList");
	}
	
	@Override
	public List<AreaVO> areaList() {
		return sqlSession.selectList("itinerary.areaList");
	}
	
}


