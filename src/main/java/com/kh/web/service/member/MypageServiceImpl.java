package com.kh.web.service.member;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.kh.web.model.member.dao.MypageDAO;
import com.kh.web.model.member.dto.MypageVO;
@Service
public class MypageServiceImpl implements MypageService{
    @Autowired
	@Inject
	MypageDAO MypageDao;
    @Transactional
   

    @Override
	public List<MypageVO> selectAllTravel() {
		// TODO Auto-generated method stub
		return MypageDao.selectAllTravel();
	}
	@Override
	public void insertTravel(String id, String travel_name){
		// TODO Auto-generated method stub
		MypageDao.insertTravel(id, travel_name);
	}
	
	@Override
	public void deleteTravel(String id, String travel_name) {
		// TODO Auto-generated method stub
		MypageDao.deleteTravel(id, travel_name);
	}

	@Override
	public List<MypageVO> selectAllAlbum(String id, String travel_name) {
		// TODO Auto-generated method stub
		return MypageDao.selectAllAlbum(id, travel_name);
	}

	@Override
	public void insertAlbum(MypageVO mVo) {
		// TODO Auto-generated method stub
		
		MypageDao.insertAlbum(mVo);
	}

	@Override
	public void deleteAlbum(String albumpath) {
		// TODO Auto-generated method stub
		MypageDao.deleteAlbum(albumpath);
	}

	@Override
	public MypageVO getChart(String id, String travel_name) {
		// TODO Auto-generated method stub
		return MypageDao.getChart(id,travel_name);
	}
	@Override
	public void insertChart(MypageVO mVo) {
		// TODO Auto-generated method stub
		MypageDao.insertChart(mVo);
	}
	@Override
	public void updateChart(MypageVO mVo){
		// TODO Auto-generated method stub
				MypageDao.updateChart(mVo);
	}
	

	
	
}
