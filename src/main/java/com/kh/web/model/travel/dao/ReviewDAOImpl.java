package com.kh.web.model.travel.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.web.model.travel.dto.ReviewVO;

@Repository
public class ReviewDAOImpl implements ReviewDAO {
	@Inject
	SqlSession sqlSession;
	
	//후기 작성
	@Override
	public void create(ReviewVO vo) throws Exception {
		sqlSession.insert("review.insert", vo);
	}
	
	//후기 보기
	@Override
	public ReviewVO read(int bno) throws Exception{
		return sqlSession.selectOne("review.view", bno);
	}

	//리스트
	@Override
	public List<ReviewVO> listAll(int start, int end, String searchOption, String keyword) throws Exception {
		// 검색옵션, 키워드 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		// BETWEEN #{start}, #{end}에 입력될 값
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("review.listAll");
	}
	
	@Override
	public void increaseViewcnt(int bno) throws Exception {
		sqlSession.update("review.viewcnt", bno);
	}

}