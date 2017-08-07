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
import com.kh.web.service.travel.TravelService;


@Controller // 현재 클래스를 스프링에서 관리하는 컨트롤러 bean으로 생성
@RequestMapping("/travel/*") // 모든맵핑은 /travel/를 상속
public class TravelController {
	// 로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(TravelController.class);
	
	@Inject
	TravelService travelService;
	@Inject
	ReviewService reviewService;
	
	@RequestMapping("practice.do")
	public String practice(){
		logger.info("practice.do");
		return "travel/practice";	// views/travel/makePlan.jsp로 포워드
	}
	
	@RequestMapping("practice2.do")
	public String practice2(){
		logger.info("practice2.do");
		return "travel/practice2";	// views/travel/makePlan.jsp로 포워드
	}
	
	// 01. 여행 계획 만들기 화면
	@RequestMapping("makePlan.do")
	public String makePlan(){
		logger.info("makePlan.do");
/*		String tourApi = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList"
		+ "?ServiceKey=ZhnHJ1fzbYGAO2Xl%2FSg5MHWhMO0GkoIguiXKwi3%2BlAB8OTO1xYkmp0228On6RJ6lgh6Z4%2BLCWnAsnPm0wysTgA%3D%3D"
		+ "&contentTypeId=&areaCode=&sigunguCode=&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC"
		+ "&MobileApp=TourAPI3.0_Guide&arrange=A&numOfRows=26000&pageNo=1&_type=json";*/
		
		return "travel/makePlan";	// views/travel/makePlan.jsp로 포워드
	}
	// 02. 여행 후기 관련
	@RequestMapping("reviewList.do")
	public String reviewList(){

		logger.info("reviewList.do");
		System.out.println("111");
		return "travel/reviewList";	// views/travel/reviewList.jsp로 포워드
	}
	
	@RequestMapping(value="reviewWrite.do", method=RequestMethod.GET)
	public String reviewWrite(){
		logger.info("");
		return "travel/reviewWrite";
	}
	
	@RequestMapping(value="reviewInsert.do", method=RequestMethod.GET)
	public String reviewInsert(@ModelAttribute ReviewVO vo) throws Exception{
		logger.info("");
		// session에 저장된 userId를 writer에 저장
		//String writer = (String) session.getAttribute("userId");
		// 
		reviewService.create(vo);
		return "travel/reviewList";
	}
	
	// 03. 마이 페이지
	@RequestMapping("myPage.do")
	public String myPage(){
		logger.info("myPage.do");
		
		return "travel/myPage";	// views/travel/makePlan.jsp로 포워드
	}
	// 03. 마이 페이지
	@RequestMapping("createPlan.do")
	public String createPlan(){
		logger.info("createPlan.do");
		
		return "travel/createPlan";	// views/travel/makePlan.jsp로 포워드
	}
	
}
