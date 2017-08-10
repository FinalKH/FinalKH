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
        
    //후기 작성
    @Transactional
    @Override
	public void create(ReviewVO vo) throws Exception {
    	
    	String subject = vo.getSubject();
		String content = vo.getContent();
		// *태그문자 처리 (< ==> &lt; > ==> &gt;)
		// replace(A, B) A를 B로 변경
		subject = subject.replace("<", "&lt;");
		subject = subject.replace("<", "&gt;");
		// *공백문자 처리  
		subject = subject.replace("  ",	"&nbsp;&nbsp;");
		// *줄바꿈 문자처리
		content = content.replace("\n", "<br>");
		System.out.print("여기"+content);
		vo.setSubject(subject);
		vo.setContent(content);
		
		reviewDao.create(vo);
		
	}

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