package com.kh.web.controller.travel;


import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.web.service.travel.TravelService;


@Controller // 현재 클래스를 스프링에서 관리하는 컨트롤러 bean으로 생성
@RequestMapping("/travel/*") // 모든맵핑은 /travel/를 상속
public class TravelController {
	// 로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(TravelController.class);
	
	@Inject
	TravelService travelService;
	
	@RequestMapping("practice.do")
	public String practice(){
		logger.info("");

		return "travel/practice";	// views/travel/makePlan.jsp로 포워드
	}
	
	// 01. 여행 계획 만들기 화면
	@RequestMapping("makePlan.do")
	public String makePlan(){
		logger.info("");
/*		String tourApi = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList"
		+ "?ServiceKey=ZhnHJ1fzbYGAO2Xl%2FSg5MHWhMO0GkoIguiXKwi3%2BlAB8OTO1xYkmp0228On6RJ6lgh6Z4%2BLCWnAsnPm0wysTgA%3D%3D"
		+ "&contentTypeId=&areaCode=&sigunguCode=&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC"
		+ "&MobileApp=TourAPI3.0_Guide&arrange=A&numOfRows=26000&pageNo=1&_type=json";*/
		
		return "travel/makePlan";	// views/travel/makePlan.jsp로 포워드
	}
	// 02. 여행 후기 관련
	@RequestMapping("reviewList.do")
	public String reviewList(){
		logger.info("");

		return "travel/reviewList";	// views/travel/makePlan.jsp로 포워드
	}
	// 03. 마이 페이지
	@RequestMapping("myPage.do")
	public String myPage(){
		logger.info("");
		
		return "travel/myPage";	// views/travel/makePlan.jsp로 포워드
	}
	
}
