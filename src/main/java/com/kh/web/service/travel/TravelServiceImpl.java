package com.kh.web.service.travel;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.kh.web.controller.travel.TravelController;
import com.kh.web.model.travel.dao.TravelDAO;
import com.kh.web.model.travel.dto.AreaVO;
import com.kh.web.model.travel.dto.ContentCommonVO;

@Service
public class TravelServiceImpl implements TravelService {
	private static final Logger logger = LoggerFactory.getLogger(TravelController.class);

	@Inject
	TravelDAO travelDao;
	
	@Override
	public List<AreaVO> list() {
		List<AreaVO> AreaItems = travelDao.selectAllArea();
		return AreaItems; 
	}
	
	@Override
	public List<ContentCommonVO> listContentCommon() {
		List<ContentCommonVO> ContentCommonItems = travelDao.selectAllContentCommon();
		return ContentCommonItems; 
	}
	
	


}
