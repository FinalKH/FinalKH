package com.kh.web.model.travel.dao; 
  
import javax.inject.Inject; 
  
import org.apache.ibatis.session.SqlSession; 
import org.springframework.stereotype.Repository; 
  
import com.kh.web.model.travel.dto.reviewVO; 
  
@Repository 
public class reviewDAOImpl implements reviewDAO{ 
    @Inject 
    SqlSession sqlSession; 
     
    @Override 
    public void create(reviewVO vo) throws Exception { 
        sqlSession.insert("review.insert", vo); 
         
    } 
         
}