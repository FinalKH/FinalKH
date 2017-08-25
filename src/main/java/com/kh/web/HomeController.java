package com.kh.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.web.model.travel.dto.ImageVO;
import com.kh.web.service.travel.ImageService;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		return "home";
	}
	@Inject
	ImageService imageService;
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String main(Model model) throws Exception {
		List<ImageVO> list = imageService.imageList();
	    model.addAttribute("list", list);
		return "mainMain";
	}
	
	// 준구 테스트 (main을 홈으로)
	/*@RequestMapping("/main1.do")
	public String main1(Model model) throws Exception{
		logger.info("main.....");
		List<ImageVO> list = imageService.imageList();
	    model.addAttribute("list", list);
	    return "mainMain";
	}*/
	
	
	// doA 매핑
	@RequestMapping("/doA.do")
	public String doA(){
		logger.info("doA.....");
		return "home";
	}
	
	// doB 매핑
	@RequestMapping("/doB.do")
	public String doB(Model model){
		logger.info("doB.....");
		model.addAttribute("result", "do b result");
		return "home";
	}
}
