package com.kh.web.controller.travel;


import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kh.web.model.travel.dto.AreaVO;
import com.kh.web.service.travel.TravelService;
import com.kh.web.util.UploadFileUtils;


@Controller
@RequestMapping("/travel/*")
public class TravelController {
	// 로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(TravelController.class);
	
	
	@Resource(name="uploadPath")
	String uploadPath;
	@Inject
	TravelService travelService;
	
	@RequestMapping("createPlan.do")
	public String createPlan(Model model){
		logger.info("createPlan.do");
		// 일단 첫 로딩시에 전체 area 데이터를 가져와서 맵에 마커 정보를 띄운다
		model.addAttribute("list", travelService.list());
		System.out.println(uploadPath);
		return "travel/createPlan";
	}
	
	@RequestMapping("makePlan.do")
	public String makePlan(Model model){
		logger.info("makePlan.do");
		//model.addAttribute("list", travelService.listContentCommon());
		return "travel/makePlan";
	}
	
	@ResponseBody
	@RequestMapping(value="bringAllInMap.do", method=RequestMethod.POST, produces="text/plain;charset=utf-8")
	public ResponseEntity<String> bringAllInMap(MultipartFile file) throws Exception {
		logger.info("originalName : "+file.getOriginalFilename());
		return new ResponseEntity<String>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()), HttpStatus.OK);
	}
	
}
