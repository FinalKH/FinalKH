package com.kh.web.service.travel; 
  
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.web.model.board.dao.BoardDAO;
import com.kh.web.model.board.dto.BoardVO;
import com.kh.web.model.travel.dao.ReviewDAO;
import com.kh.web.model.travel.dto.ReviewVO; 
  
@Service 
public class ReviewServiceImpl implements ReviewService{ 
    @Inject 
    ReviewDAO reviewDao;
    @Inject
	BoardDAO boardDao;

 //  게시글 전체 목록
 	@Override
 	public List<BoardVO> listAll(int start, int end, String searchOption, String keyword) throws Exception {
 		return boardDao.listAll(start, end, searchOption, keyword);
 	}

 //  게시글 레코드 갯수
 	@Override
 	public int countArticle(String searchOption, String keyword) throws Exception {
 		return boardDao.countArticle(searchOption, keyword);
 	}
    
}