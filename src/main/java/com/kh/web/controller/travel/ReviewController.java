package com.kh.web.controller.travel;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kh.web.model.travel.dto.ReviewVO;
import com.kh.web.service.travel.ReviewService;
import com.kh.web.service.travel.reviewPager;

@Controller
public class ReviewController {
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);

	@Inject
	ReviewService reviewService;

	// 여행 후기 관련	
	// 작성
	@RequestMapping(value = "/reviewWrite.do", method = RequestMethod.GET)
	public String reviewWrite() {
		logger.info("");
		return "travel/reviewWrite";
	}

	@RequestMapping(value = "/reviewInsert.do", method = RequestMethod.POST)
	public String reviewInsert(@ModelAttribute ReviewVO vo,HttpSession session) throws Exception {
		logger.info("123");

		reviewService.create(vo);		
		return "redirect:reviewList.do";
	}
	
	//리스트
	@RequestMapping("/reviewList.do")
	public ModelAndView reviewList(@RequestParam(defaultValue = "subject") String searchOption,
			@RequestParam(defaultValue = "") String keyword, @RequestParam(defaultValue = "1") int curPage)
			throws Exception {
		// 페이지 나누기 관련 처리
		reviewPager reviewPager = new reviewPager(curPage);
		int start = reviewPager.getPageBegin();
		int end = reviewPager.getPageEnd();

		List<ReviewVO> list =reviewService.listAll(start, end, searchOption, keyword);

		// 데이터를 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // list
		map.put("searchOption", searchOption); // 검색옵션
		map.put("keyword", keyword); // 검색키워드
		map.put("reviewPager", reviewPager);
		// ModelAndView - 모델과 뷰
		ModelAndView mav = new ModelAndView();
		/*
		 * mav.addObject("list", list); // 데이터를 저장 mav.addObject("count",
		 * count); mav.addObject("searchOption", searchOption);
		 * mav.addObject("keyword", keyword);
		 */
		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.setViewName("travel/reviewList"); // 뷰를 List.jsp로 설정
		return mav; // // jsp로 List가 전달된다.
	}
	
	// 보기
	@RequestMapping(value="/review.do", method = RequestMethod.GET)
	public ModelAndView review(@RequestParam int bno, @RequestParam int curPage, @RequestParam String searchOption,
			@RequestParam String keyword, HttpSession session) throws Exception{
		ModelAndView mav = new ModelAndView();
		reviewService.increaseViewcnt(bno, session); //조회수 증가
		mav.setViewName("travel/review");
		mav.addObject("dto", reviewService.read(bno));
		mav.addObject("curPage", curPage);
		mav.addObject("searchOption", searchOption);
		mav.addObject("keyword", keyword);
		logger.info("mav:", mav);
		return mav;
	}
	@RequestMapping(value = "/popup", method= RequestMethod.GET)
	public String popup(){
		logger.info("팝업");
		return "/include/se2/photo_uploader/popup/photo_uploader";
	}
	@RequestMapping(value = "/fileUpload", method = RequestMethod.POST)
	public String fileUpload(Model model, MultipartRequest multipartRequest, HttpServletRequest request) throws IOException{
		MultipartFile imgfile = multipartRequest.getFile("Filedata"); //jsp 부분에서 input file의 name 
		Calendar cal = Calendar.getInstance();
		String fileName = imgfile.getOriginalFilename();
		String fileType = fileName.substring(fileName.lastIndexOf("."), fileName.length());
		String replaceName = cal.getTimeInMillis() + fileType;  
		
		String path = request.getSession().getServletContext().getRealPath("/")+File.separator+"/upimg";
		 //파일이 저장되는 경로입니다. deploy되는 곳의 경로를 찾아서 저장합니다. 저는 deploy되는 위치의 resources/upload로 저장하겠습니다. 로컬에서는 이렇게 적지 않으면 이미지를 불러올 때 이클립스에서 f5를 누르지 않으면 엑박이 뜹니다.
		FileUpload.fileUpload(imgfile, path, replaceName);
		model.addAttribute("path", path); // 파일업로드를 하는 창에 경로와
		model.addAttribute("filename", replaceName);  // 저장된 이름을 전달합니다.
		return "file_upload";
	}
				
}