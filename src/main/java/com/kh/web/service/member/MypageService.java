package com.kh.web.service.member;

import java.util.List;

import org.springframework.ui.Model;

import com.kh.web.model.member.dto.MypageVO;

public interface MypageService {
	//마이페이지에 저장해놓은 내여행리스트 보기
		public List<MypageVO> selectAllTravel();
		
		//마이페이지 여행추가
		public void insertTravel(String id, String travel_name) ;
		
		//마이페이지->플래너에서 저장해놓은 사진들 보기
		public List<MypageVO> selectAllAlbum(String id, String travel_name);

		// 마이페이지에 앨범에 사진 넣기
		public void insertAlbum(MypageVO mVo);

		
		public void deleteAlbum(MypageVO mVo); 
		// chart 가져오기
		public MypageVO getChart(String id, String travel_name);
		
		//차트 입력
		public void insertChart(MypageVO mVo);
}
