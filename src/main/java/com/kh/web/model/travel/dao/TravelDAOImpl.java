package com.kh.web.model.travel.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.kh.web.controller.travel.TravelController;
import com.kh.web.model.travel.dto.AreaVO;
import com.kh.web.model.travel.dto.ContentCommonVO;
import com.kh.web.model.travel.dto.SiGunGuVO;

@Repository
public class TravelDAOImpl implements TravelDAO {
	private static final Logger logger = LoggerFactory.getLogger(TravelController.class);
	
	@Inject
	SqlSession sqlSession; 

	@Override
	public List<AreaVO> selectAllArea() {
		return sqlSession.selectList("travel.selectAllArea");
	}
	
	@Override
	public List<SiGunGuVO> selectAllSiGunGu() {
		return sqlSession.selectList("travel.selectAllSiGunGu");
	}

	
	@Override
	public List<ContentCommonVO> selectAllContentCommon() {

		return sqlSession.selectList("travel.selectAllContentCommon");
	}
}
