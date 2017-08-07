package com.kh.web.model.travel.dao; 
  
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.web.model.travel.dto.ReviewVO; 
  
@Repository 
public class ReviewDAOImpl implements ReviewDAO{ 
    @Inject 
    SqlSession sqlSession; 
     
    @Override 
    public void create(ReviewVO vo) throws Exception { 
        sqlSession.insert("review.insert", vo); 
         
    } 
         
}