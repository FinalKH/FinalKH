package com.kh.web.model.travel.dao;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

<<<<<<< HEAD
@Repository // 현재 클래스를 스프링에서 관리하는 dao bean으로 등록
public class TravelDAOImpl implements TravelDAO {
	// SqlSession 객체를 스프핑에서 생성하여 주입
	// 의존관계 주입(Dependency Injection), 느슨한 결합
	@Inject
	SqlSession sqlSession; // mybatis 실행 객체
	
/*	// 01_01. 회원 로그인체크
=======
import com.kh.web.controller.travel.TravelController;
import com.kh.web.model.travel.dto.AreaVO;
import com.kh.web.model.travel.dto.ContentCommonVO;
import com.kh.web.model.travel.dto.MapBoundVO;
import com.kh.web.model.travel.dto.SiGunGuVO;

@Repository
public class TravelDAOImpl implements TravelDAO {
	private static final Logger logger = LoggerFactory.getLogger(TravelController.class);

	@Inject
	SqlSession sqlSession;

	@Override
	public List<AreaVO> selectAllArea() {
		return sqlSession.selectList("travel.selectAllArea");
	}

>>>>>>> origin/Jeayoung
	@Override
	public boolean loginCheck(MemberVO vo) {
		String name = sqlSession.selectOne("member.loginCheck", vo);
		return (name == null) ? false : true;
	}
<<<<<<< HEAD
	// 01_02. 회원 로그인 정보
	@Override
	public MemberVO viewMember(MemberVO vo) {
		return sqlSession.selectOne("member.viewMember", vo);
	}
	// 02. 회원 로그아웃
	@Override
	public void logout(HttpSession sessin) {
	}*/
=======

	@Override
	public List<ContentCommonVO> selectAllContentCommon() {
		return sqlSession.selectList("travel.selectAllContentCommon");
	}
	
	public List<Object> bringAllInMap(MapBoundVO mapBoundVO){
		logger.info(String.valueOf(mapBoundVO));
		return sqlSession.selectList("travel.bringAllInMap", mapBoundVO);
	}
>>>>>>> origin/Jeayoung
}
