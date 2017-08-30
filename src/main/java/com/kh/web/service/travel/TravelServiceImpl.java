package com.kh.web.service.travel;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.kh.web.controller.travel.TravelController;
import com.kh.web.model.travel.dao.TravelDAO;
import com.kh.web.model.travel.dto.AreaVO;
import com.kh.web.model.travel.dto.ContentCommonVO;
import com.kh.web.model.travel.dto.MapBoundVO;
import com.kh.web.model.travel.dto.PlanMainVO;

@Service // 현재 클래스를 스프링에서 관리하는 service bean으로 등록
public class TravelServiceImpl implements TravelService {
	
	private static final Logger logger = LoggerFactory.getLogger(TravelController.class);
	
	@Inject
	TravelDAO travelDao;

	@Override
	public List<AreaVO> list() {
		return travelDao.selectAllArea();
	}

	@Override
	public List<ContentCommonVO> listContentCommon() {
		return travelDao.selectAllContentCommon();
	}

	public List<Object> bringAllInMap(MapBoundVO mapBoundVO) {
		logger.info(String.valueOf(mapBoundVO));
		return travelDao.bringAllInMap(mapBoundVO);
	}

	@Override
	public boolean insertPlanMainRough(PlanMainVO planMainVO, Map<String, Object> map) {


		travelDao.insertPlanMainRough(planMainVO, map);
		return false;
	}

}
