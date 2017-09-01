package com.kh.web.controller.travel;

import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.web.model.travel.dto.MapBoundVO;
import com.kh.web.model.travel.dto.PlanMainVO;
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

	@RequestMapping("createPlan.do")
	public String createPlan(Model model) {
		logger.info("createPlan.do");
		// 일단 첫 로딩시에 전체 area 데이터를 가져와서 맵에 마커 정보를 띄운다
		model.addAttribute("list", travelService.list());
		return "travel/createPlan";
	}

	@RequestMapping(value = "makePlan.do")
	public ModelAndView makePlan(HttpServletRequest request, HttpSession session) {
		logger.info("makePlan.do");
		logger.info(request.getParameter("planMainNum"));
		Gson gson = new Gson();
		travelService.selectPlanMainRough(request.getParameter("planMainNum").toString());
		System.out.println(travelService.selectPlanMainRough(request.getParameter("planMainNum").toString()));
		ModelAndView mav = new ModelAndView("travel/makePlan");
		mav.addObject("list", gson.toJson(travelService.selectPlanMainRough(request.getParameter("planMainNum").toString())));
		System.out.println(mav.getModel());
		return mav;
	}

	@RequestMapping("sight.do")
	public String sight(HttpServletRequest request) {
		logger.info("sight.do");
		// model.addAttribute("list", travelService.listContentCommon());
		return "travel/sight";
	}

	@ResponseBody
	@RequestMapping(value = "bringAllInMap.do", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public ResponseEntity<Object> bringAllInMap(HttpServletRequest request, @RequestBody MapBoundVO mapBoundVO) {
		logger.info("bringAllInMap.do");
		logger.info(String.valueOf(mapBoundVO));
		Object result = travelService.bringAllInMap(mapBoundVO);

		return JsonResponseUtil.getJSONResponse(result);
	}

	@ResponseBody
	@RequestMapping(value = "insertPlanMainRough.do", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public String insertPlanMainRough(HttpSession session, HttpServletRequest request,
			@RequestBody Map<String, Object> map) {

		session.getAttribute("email");
		map.get("title");
		map.get("datePicker");
		
		PlanMainVO planMainVO = new PlanMainVO();

		planMainVO.setCompletion("0");
		planMainVO.setTitle(map.get("title").toString());
		planMainVO.setStartDay(map.get("datePicker").toString());
		planMainVO.setEmail(session.getAttribute("email").toString());
		System.out.println(planMainVO.toString());
		
		travelService.insertPlanMainRough(planMainVO, map);
		String returnString = planMainVO.getPlanMainNum();

		return returnString;
	}
	
	@ResponseBody
	@RequestMapping(value = "insertPlanDetail.do", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public String insertDetail(HttpSession session, HttpServletRequest request,
			@RequestBody Map<String, Object> map) {

		session.getAttribute("email");
		map.get("title");
		map.get("datePicker");
		
		PlanMainVO planMainVO = new PlanMainVO();

		planMainVO.setCompletion("0");
		planMainVO.setTitle(map.get("title").toString());
		planMainVO.setStartDay(map.get("datePicker").toString());
		planMainVO.setEmail(session.getAttribute("email").toString());
		System.out.println(planMainVO.toString());
		
		travelService.insertPlanMainRough(planMainVO, map);
		String returnString = planMainVO.getPlanMainNum();

		return returnString;
	}

}
