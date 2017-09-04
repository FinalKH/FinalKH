package com.kh.web.controller.itinerary;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.web.model.itinerary.dto.PlanAreaVO;
import com.kh.web.model.itinerary.dto.PlanMainMemberVO;
import com.kh.web.service.itinerary.ItineraryService;


@Controller
@RequestMapping("/itinerary/*")
public class ItineraryController {

	private static final Logger logger = LoggerFactory.getLogger(ItineraryController.class);
	
	@Inject
	ItineraryService itineraryService;
	// 01 여행일정 목록
	//
	@RequestMapping("list.do")
	public String ItineraryList(Model model2){
	// controller => service => dao 요청
		// 리스트로 만들기
		List<PlanMainMemberVO> list2 = itineraryService.itineraryList();
		List<PlanAreaVO> list3 = itineraryService.areaList();
		model2.addAttribute("list", list2);
		model2.addAttribute("list2", list3);
		return "itinerary/itineraryMain";
	}
}