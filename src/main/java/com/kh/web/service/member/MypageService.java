package com.kh.web.service.member;

import java.util.List;

import org.springframework.ui.Model;

import com.kh.web.model.member.dto.MypageVO;

public interface MypageService {
	//������������ �����س��� �����ฮ��Ʈ ����
		public List<MypageVO> selectAllTravel();
		
		//���������� �����߰�
		public void insertTravel(String id, String travel_name) ;
		
		public void deleteTravel(String id, String travel_name);
		//����������->�÷��ʿ��� �����س��� ������ ����
		public List<MypageVO> selectAllAlbum(String id, String travel_name);

		// ������������ �ٹ��� ���� �ֱ�
		public void insertAlbum(MypageVO mVo);

		
		public void deleteAlbum(String albumpath); 
		// chart ��������
		public MypageVO getChart(String id, String travel_name);
		
		//��Ʈ �Է�
		public void insertChart(MypageVO mVo);
		
		//��Ʈ ������Ʈ
		public void updateChart(MypageVO mVo);
}
