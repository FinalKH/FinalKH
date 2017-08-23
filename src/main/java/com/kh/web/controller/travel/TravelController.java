package com.kh.web.controller.travel;

import javax.annotation.Resource;
import javax.inject.Inject;
<<<<<<< HEAD
=======
import javax.servlet.http.HttpServletRequest;
>>>>>>> origin/Jeayoung

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

=======
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.web.model.travel.dto.MapBoundVO;
>>>>>>> origin/Jeayoung
import com.kh.web.service.travel.TravelService;
import com.kh.web.util.JsonResponseUtil;

@Controller // 현재 클래스를 스프링에서 관리하는 컨트롤러 bean으로 생성
@RequestMapping("/travel/*") // 모든맵핑은 /travel/를 상속
public class TravelController {
	// 로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(TravelController.class);

	@Resource(name = "uploadPath")
	String uploadPath;
	@Inject
	TravelService travelService;
<<<<<<< HEAD
		
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
=======

	@RequestMapping("createPlan.do")
	public String createPlan(Model model) {
		logger.info("createPlan.do");
		// 일단 첫 로딩시에 전체 area 데이터를 가져와서 맵에 마커 정보를 띄운다
		model.addAttribute("list", travelService.list());
		System.out.println(uploadPath);
		return "travel/createPlan";
	}

	@RequestMapping("makePlan.do")
	public String makePlan(Model model) {
		logger.info("makePlan.do");
		// model.addAttribute("list", travelService.listContentCommon());
		return "travel/makePlan";
	}

	@ResponseBody
	@RequestMapping(value = "bringAllInMap.do", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public ResponseEntity<Object> bringAllInMap(HttpServletRequest request, @RequestBody MapBoundVO mapBoundVO) {
		logger.info("bringAllInMap.do");
		logger.info(String.valueOf(mapBoundVO));
		Object result = travelService.bringAllInMap(mapBoundVO);
		return JsonResponseUtil.getJSONResponse(result);
>>>>>>> origin/Jeayoung
	}

}
