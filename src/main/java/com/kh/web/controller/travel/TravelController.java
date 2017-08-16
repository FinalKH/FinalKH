package com.kh.web.controller.travel;


import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.web.model.travel.dto.AreaVO;
import com.kh.web.service.travel.TravelService;


@Controller
@RequestMapping("/travel/*")
public class TravelController {
	// 로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(TravelController.class);
	
	@Inject
	TravelService travelService;
	
	@RequestMapping("createPlan.do")
	public String createPlan(Model model){
		logger.info("createPlan.do");
		// 일단 첫 로딩시에 전체 area 데이터를 가져와서 맵에 마커 정보를 띄운다
		model.addAttribute("list", travelService.list());
		return "travel/createPlan";
	}
	
	@RequestMapping("makePlan.do")
	public String makePlan(Model model){
		logger.info("makePlan.do");
		model.addAttribute("list", travelService.listContentCommon());
		return "travel/makePlan";
	}
	
	// 그 다음 
	//맵 범위에  있는 데이터를 DB에서 실시간으로 가져오게 하는 컨트롤러
	//로직
	//전체 범위 안에 
	@RequestMapping("bringAllInMap.do")
	// 이 컨트롤러를 요청 할 때 브라우저에서는 맵의 위치와 사이즈 정보를 함께 보내옴
	public void bringAllInMap(@RequestParam String mapSizeX, @RequestParam String mapSizeY, HttpSession session){		
		logger.info("bringAllInMap.do");
		//mapSizeX
		//mapSizeY
		

	}
	
}
