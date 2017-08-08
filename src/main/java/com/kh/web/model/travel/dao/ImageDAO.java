	package com.kh.web.model.travel.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.kh.web.model.travel.dto.ImageVO;

public interface ImageDAO {
	// 회원 목록 
    public List<ImageVO> imageList();
}
