package com.kh.web.service.travel; 
  
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.web.model.travel.dao.ReviewDAO;
import com.kh.web.model.travel.dto.ReviewVO; 
  
@Service 
public class ReviewServiceImpl implements ReviewService{ 
    @Inject 
    ReviewDAO reviewDao;
        
    //후기 작성
    @Transactional
    @Override
	public void create(ReviewVO vo) throws Exception {
    	
    	String subject = vo.getSubject();
		String content = vo.getContent();
		/*// *태그문자 처리 (< ==> &lt; > ==> &gt;)
		// replace(A, B) A를 B로 변경
		subject = subject.replace("<", "&lt;");
		subject = subject.replace("<", "&gt;");
		// *공백문자 처리  
		subject = subject.replace("  ",	"&nbsp;&nbsp;");
		// *줄바꿈 문자처리
		content = content.replace("\n", "<br>");
		System.out.print("여기"+content);*/
		vo.setSubject(subject);
		vo.setContent(content);
		
		reviewDao.create(vo);
		
	}
    
  //후기보기
    @Override
    public ReviewVO read(int bno) throws Exception{
    	return reviewDao.read(bno);
    }

 //  게시글 전체 목록
 	@Override
 	public List<ReviewVO> listAll(int start, int end, String searchOption, String keyword) throws Exception {
 		return reviewDao.listAll( start, end, searchOption, keyword);
 	}

 // 조회 증가
 	@Override
    public void increaseViewcnt(int bno, HttpSession session) throws Exception {
        long update_time = 0;
        // 세션에 저장된 조회시간 검색
        // 최초로 조회할 경우 세션에 저장된 값이 없기 때문에 if문은 실행X
        if(session.getAttribute("update_time_"+bno) != null){
                                // 세션에서 읽어오기
            update_time = (long)session.getAttribute("update_time_"+bno);
        }
        // 시스템의 현재시간을 current_time에 저장
        long current_time = System.currentTimeMillis();
        // 일정시간이 경과 후 조회수 증가 처리 24*60*60*1000(24시간)
        // 시스템현재시간 - 열람시간 > 일정시간(조회수 증가가 가능하도록 지정한 시간)
        if(current_time - update_time > 5*1000){
            reviewDao.increaseViewcnt(bno);
            // 세션에 시간을 저장 : "update_time_"+bno는 다른변수와 중복되지 않게 명명한 것
            session.setAttribute("update_time_"+bno, current_time);
            
        }
    }  
}