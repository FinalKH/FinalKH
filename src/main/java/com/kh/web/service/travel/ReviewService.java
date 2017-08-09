package com.kh.web.service.travel; 
  
import java.util.List;

import com.kh.web.model.board.dto.BoardVO; 
  
public interface ReviewService { 
	//  게시글 전체 목록
	public List<BoardVO> listAll(int start, int end, String searchOption, String keyword) throws Exception;
	//  게시글 레코드 갯수
	public int countArticle(String searchOption, String keyword) throws Exception;
}