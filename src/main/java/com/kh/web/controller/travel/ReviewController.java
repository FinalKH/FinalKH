package com.kh.web.controller.travel;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.web.model.board.dto.BoardVO;
import com.kh.web.model.travel.dto.ReviewVO;
import com.kh.web.service.board.BoardPager;
import com.kh.web.service.board.BoardService;
import com.kh.web.service.travel.ReviewService;

@Controller
public class ReviewController {
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);

	@Inject
	ReviewService reviewService;
	@Inject
	BoardService boardService;

	// 02. 여행 후기 관련
	@RequestMapping("reviewList.do")
	public ModelAndView reviewList(@RequestParam(defaultValue = "title") String searchOption,
			@RequestParam(defaultValue = "") String keyword, @RequestParam(defaultValue = "1") int curPage)
			throws Exception {
		// 레코드의 갯수 계산
		int count = boardService.countArticle(searchOption, keyword);
		// 페이지 나누기 관련 처리
		BoardPager boardPager = new BoardPager(count, curPage);
		int start = boardPager.getPageBegin();
		int end = boardPager.getPageEnd();

		List<BoardVO> list = boardService.listAll(start, end, searchOption, keyword);

		// 데이터를 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // list
		map.put("count", count); // 레코드의 갯수
		map.put("searchOption", searchOption); // 검색옵션
		map.put("keyword", keyword); // 검색키워드
		map.put("boardPager", boardPager);
		// ModelAndView - 모델과 뷰
		ModelAndView mav = new ModelAndView();
		/*
		 * mav.addObject("list", list); // 데이터를 저장 mav.addObject("count",
		 * count); mav.addObject("searchOption", searchOption);
		 * mav.addObject("keyword", keyword);
		 */
		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.setViewName("travel/reviewList"); // 뷰를 list.jsp로 설정
		return mav; // // list.jsp로 List가 전달된다.
	}

	@RequestMapping(value = "reviewWrite.do", method = RequestMethod.GET)
	public String reviewWrite() {
		logger.info("");
		return "travel/reviewWrite";
	}

	@RequestMapping(value = "reviewInsert.do", method = RequestMethod.POST)
	public String reviewInsert(@ModelAttribute ReviewVO vo) throws Exception {
		logger.info("123");

		reviewService.create(vo);
		return "redirect:reviewWrite.do";
	}
}