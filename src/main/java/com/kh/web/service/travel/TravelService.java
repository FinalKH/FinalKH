package com.kh.web.service.travel;

<<<<<<< HEAD
public interface TravelService {
/*	// 01_01. 회원 로그인 체크
	public boolean loginCheck(MemberVO vo, HttpSession session);
	// 01_02. 회원 로그인 정보
	public MemberVO viewMember(MemberVO vo);
	// 02. 회원 로그아웃
	public void logout(HttpSession session);*/
=======
import java.util.List;

import com.kh.web.model.travel.dto.AreaVO;
import com.kh.web.model.travel.dto.ContentCommonVO;
import com.kh.web.model.travel.dto.MapBoundVO;

public interface TravelService {
	public List<AreaVO> list();
	public List<ContentCommonVO> listContentCommon();
	public List<Object> bringAllInMap(MapBoundVO mapBoundVO);
>>>>>>> origin/Jeayoung
}
