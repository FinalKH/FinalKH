package com.kh.web.controller.travel;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.web.model.member.dto.MemberVO;
import com.kh.web.model.travel.dto.ImageVO;
import com.kh.web.service.travel.ImageService;

@Controller
public class ImageController {
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);

	@Inject
	ImageService imageService;

	// 02. 여행 후기 관련
	@RequestMapping("imageList.do")
	public String imageList(Model model) throws Exception {
		
		 List<ImageVO> list = imageService.imageList();
	     model.addAttribute("list", list);
	     return "mainMain";
	}

	
}
