package com.kh.web.service.travel; 
  
import java.util.List;

import com.kh.web.model.board.dto.BoardVO;
import com.kh.web.model.travel.dto.ReviewVO; 
  
public interface ReviewService {
	// 후기 작성
	public void create(ReviewVO vo) throws Exception;
	// 후기보기
	public ReviewVO read(int bno) throws Exception;
	//  게시글 전체 목록
	public List<BoardVO> listAll(int start, int end, String searchOption, String keyword) throws Exception;
	//  게시글 레코드 갯수
	public int countArticle(String searchOption, String keyword) throws Exception;
}