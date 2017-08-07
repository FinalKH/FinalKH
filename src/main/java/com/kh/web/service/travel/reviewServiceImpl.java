package com.kh.web.service.travel; 
  
import javax.inject.Inject; 
  
import org.springframework.stereotype.Service; 
import org.springframework.transaction.annotation.Transactional; 
  
import com.kh.web.model.travel.dao.reviewDAO; 
import com.kh.web.model.travel.dto.reviewVO; 
  
@Service 
public class reviewServiceImpl implements reviewService{ 
    @Inject 
    reviewDAO reviewDao; 
     
    @Transactional 
    @Override 
    public void create(reviewVO vo) throws Exception { 
        String subject = vo.getRsubject(); 
        String content = vo.getRcontent(); 
        // *태그문자 처리 (< ==> &lt; > ==> &gt;) 
        // replace(A, B) A를 B로 변경 
        subject = subject.replace("<", "&lt;"); 
        subject = subject.replace("<", "&gt;"); 
        // *공백문자 처리 
        subject = subject.replace("  ", "&nbsp;&nbsp;"); 
        // *줄바꿈 문자처리 
        content = content.replace("\n", "<br>"); 
         
        vo.setRsubject(subject); 
        vo.setRcontent(content); 
         
        reviewDao.create(vo); 
     
    } 
  
}