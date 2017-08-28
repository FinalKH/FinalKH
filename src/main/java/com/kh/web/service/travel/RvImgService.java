package com.kh.web.service.travel;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.stream.Stream;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.web.model.travel.dao.RvImgDAO;
import com.kh.web.model.travel.dto.RvImgVO;

@Service
public class RvImgService {
	 private static final Logger logger = LoggerFactory.getLogger(RvImgService.class);
	 private Path rootLocation;
	 
	 @Autowired
	 public RvImgService(String uploadPath){
        logger.info("PATH :: " + uploadPath);
        this.rootLocation = Paths.get(uploadPath);
	 }
	 @Inject
	 RvImgDAO rvimg;
	 
	 public Stream<Integer> loadAll() {
	        List<RvImgVO> files = rvimg.findAll();
	        return files.stream().map(file -> file.getId());
	    }
}
