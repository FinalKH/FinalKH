package com.kh.web.model.member.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.web.model.member.dto.MypageVO;
@Repository
public class MypageDAOImpl implements MypageDAO{
	@Inject
	SqlSession sqlSession; 
	
	
	@Override
	public List<MypageVO> selectAllTravel() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mypage.travellist");
	}
	@Override
	public void insertTravel(String id, String travel_name){
		Map<String, String> map = new HashMap<String, String>();
        map.put("id", id);
        map.put("travel_name", travel_name);
		sqlSession.insert("mypage.travelinsert",map);
	}
	@Override
	public List<MypageVO> selectAllAlbum(String id, String travel_name) {
		// TODO Auto-generated method stub
		Map<String, String> map = new HashMap<String, String>();
        map.put("id", id);
        map.put("travel_name", travel_name);
		return sqlSession.selectList("mypage.albumlist", map);
	}

	@Override
	public void insertAlbum(MypageVO mVo) {
		// TODO Auto-generated method stub
		sqlSession.insert("mypage.albuminsert",mVo);
	}

	@Override
	public void deleteAlbum(MypageVO mVo) {
		// TODO Auto-generated method stub
		sqlSession.delete("mypage.deletealbum");
	}

	@Override
	public MypageVO getChart(String id, String travel_name) {
		// TODO Auto-generated method stub
		Map<String, String> map = new HashMap<String, String>();
        map.put("id", id);
        map.put("travel_name", travel_name);
  
		return sqlSession.selectOne("mypage.chartView",map);
	}
	@Override
	public void insertChart(MypageVO mVo) {
		// TODO Auto-generated method stub
		sqlSession.insert("mypage.chartinsert",mVo);
	}
	

}
