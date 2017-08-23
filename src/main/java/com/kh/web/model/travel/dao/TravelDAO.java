package com.kh.web.model.travel.dao;

<<<<<<< HEAD
public interface TravelDAO {
/*	// 01_01. 회원 로그인 체크
	public boolean loginCheck(MemberVO vo);
	// 01_02. 회원 로그인 정보
	public MemberVO viewMember(MemberVO vo);
	// 02. 회원 로그아웃
	public void logout(HttpSession session);*/
=======
import java.util.List;

import com.kh.web.model.travel.dto.AreaVO;
import com.kh.web.model.travel.dto.ContentCommonVO;
import com.kh.web.model.travel.dto.MapBoundVO;
import com.kh.web.model.travel.dto.SiGunGuVO;

public interface TravelDAO {
	public List<AreaVO> selectAllArea();
	public List<SiGunGuVO> selectAllSiGunGu();
	public List<ContentCommonVO> selectAllContentCommon();
	public List<Object> bringAllInMap(MapBoundVO mapBoundVO);
>>>>>>> origin/Jeayoung
}