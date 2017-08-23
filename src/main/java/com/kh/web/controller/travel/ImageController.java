package com.kh.web.controller.travel;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.web.service.travel.ImageService;

@Controller
public class ImageController {
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);

	@Inject
	ImageService imageService;

	// 02. 여행 후기 관련
	@RequestMapping("imageList.do")
	public String imageList() throws Exception {
		imageService.imageList();
		logger.info("imageList.do");
		return "mainMain"; // views/travel/reviewList.jsp로 포워드
	}

	
}
