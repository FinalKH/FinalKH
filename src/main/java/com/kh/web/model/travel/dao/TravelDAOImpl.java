package com.kh.web.model.travel.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.kh.web.controller.travel.TravelController;
import com.kh.web.model.travel.dto.AreaVO;
import com.kh.web.model.travel.dto.ContentCommonVO;
import com.kh.web.model.travel.dto.MapBoundVO;
import com.kh.web.model.travel.dto.PlanMainVO;
import com.kh.web.model.travel.dto.PlanRoughVO;

@Repository
public class TravelDAOImpl implements TravelDAO {
	private static final Logger logger = LoggerFactory.getLogger(TravelController.class);

	private static final String String = null;

	@Inject
	SqlSession sqlSession;

	@Override
	public List<AreaVO> selectAllArea() {
		return sqlSession.selectList("travel.selectAllArea");
	}

	@Override
	public List<ContentCommonVO> selectAllContentCommon() {
		return sqlSession.selectList("travel.selectAllContentCommon");
	}

	public List<Object> bringAllInMap(MapBoundVO mapBoundVO) {
		logger.info(String.valueOf(mapBoundVO));
		return sqlSession.selectList("travel.bringAllInMap", mapBoundVO);
	}

	public String insertPlanMainRough(PlanMainVO planMainVO,  Map<String, Object> map) {
		System.out.println(planMainVO.getPlanMainNum());
		System.out.println(planMainVO.toString());
		sqlSession.insert("travel.insertPlanMain", planMainVO);
		System.out.println(planMainVO.toString());
		String planMainNum = sqlSession.selectOne("travel.selectLast");
		System.out.println(planMainNum);
		planMainVO.setPlanMainNum(planMainNum);
		System.out.println(planMainVO.toString());
		
		PlanRoughVO planRoughVO = new PlanRoughVO();
		planRoughVO.setPlanMainNum(planMainVO.getPlanMainNum());

		for(int i=0;i<map.size()-2;i++) {
			String areaCode = sqlSession.selectOne("travel.selectArea", (String) ((Map<String, Object>)map.get("userPickItem"+i)).get("areaName"));
			planRoughVO.setAreaCode(areaCode);
			planRoughVO.setPlanDay((String) ((Map<String, Object>)map.get("userPickItem"+i)).get("dateDay"));
			System.out.println(planRoughVO.toString());
			sqlSession.insert("travel.insertPlanRough", planRoughVO);
		}
		
		return planMainNum;
		
	}


}
