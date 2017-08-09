package com.kh.web.model.travel.dao;

import java.util.List;

import com.kh.web.model.board.dto.BoardVO;
import com.kh.web.model.travel.dto.ReviewVO;

public interface ReviewDAO {
	// 05. 게시글 전체 목록 ==> 검색옵션, 키워드 매개변수 추가
	public List<BoardVO> listAll(int start, int end, String searchOption, String keyword) throws Exception;

	// 07. 게시글 레코드 갯수 메서드 추가
	public int countArticle(String searchOption, String keyword) throws Exception;
}