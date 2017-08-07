package com.kh.web.controller.travel;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.web.model.travel.dto.ReviewVO;
import com.kh.web.service.travel.ReviewService;

@Controller
public class ReviewController {
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);

	@Inject
	ReviewService reviewService;

	// 02. 여행 후기 관련
	@RequestMapping("reviewList.do")
	public String reviewList() {

		logger.info("reviewList.do");

		return "travel/reviewList"; // views/travel/reviewList.jsp로 포워드
	}

	@RequestMapping(value = "reviewWrite.do", method = RequestMethod.GET)
	public String reviewWrite() {
		logger.info("");
		return "travel/reviewWrite";
	}

	@RequestMapping(value = "reviewInsert.do", method = RequestMethod.GET)
	public String reviewInsert(@ModelAttribute ReviewVO vo) throws Exception {
		logger.info("");
		
		reviewService.create(vo);
		return "travel/reviewList";
	}
}
