package com.kh.web.controller.travel;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.web.model.travel.dto.ReviewVO;
import com.kh.web.service.travel.ReviewService;
import com.kh.web.service.travel.reviewPager;
import com.kh.web.util.MediaUtils;
import com.kh.web.util.UploadFileUtils;

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
	
	/*@Bean(name = "upimg")
	public String upimg() {
	    return "d:/image/";
	}*/
	@Resource(name="uploadPath")
	String uploadPath;
	
	@ResponseBody // view가 아닌 data리턴
	@RequestMapping(value="/image", method=RequestMethod.POST, produces="text/plain;charset=utf-8")
	public ResponseEntity<String> reviewimg(MultipartFile file) throws Exception {
		System.out.println("업로드");
		return new ResponseEntity<String>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()), HttpStatus.OK);
	}
	
	//이미지 표시 매핑
    @ResponseBody // view가 아닌 data리턴
    @RequestMapping("/upload/displayFile")
    public ResponseEntity<byte[]> displayFile(String fileName) throws Exception {
        // 서버의 파일을 다운로드하기 위한 스트림
        InputStream in = null; //java.io
        ResponseEntity<byte[]> entity = null;
        try {
            // 확장자를 추출하여 formatName에 저장
            String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);
            // 추출한 확장자를 MediaUtils클래스에서  이미지파일여부를 검사하고 리턴받아 mType에 저장
            MediaType mType = MediaUtils.getMediaType(formatName);
            // 헤더 구성 객체(외부에서 데이터를 주고받을 때에는 header와 body를 구성해야하기 때문에)
            HttpHeaders headers = new HttpHeaders();
            // InputStream 생성
            in = new FileInputStream(uploadPath + fileName);
            // 이미지 파일이면
            if (mType != null) { 
                headers.setContentType(mType);
            // 이미지가 아니면
            } else { 
                fileName = fileName.substring(fileName.indexOf("_") + 1);
                // 다운로드용 컨텐트 타입
                headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
                // 
                // 바이트배열을 스트링으로 : new String(fileName.getBytes("utf-8"),"iso-8859-1") * iso-8859-1 서유럽언어, 큰 따옴표 내부에  " \" 내용 \" "
                // 파일의 한글 깨짐 방지
                headers.add("Content-Disposition", "attachment; filename=\""+new String(fileName.getBytes("utf-8"), "iso-8859-1")+"\"");
                //headers.add("Content-Disposition", "attachment; filename='"+fileName+"'");
            }
            // 바이트배열, 헤더, HTTP상태코드
            entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            // HTTP상태 코드()
            entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
        } finally {
            in.close(); //스트림 닫기
        }
        return entity;
    }
	
	//파일삭제
    @ResponseBody // view가 아닌 데이터 리턴
    @RequestMapping(value = "/deleteFile", method = RequestMethod.POST)
    public ResponseEntity<String> deleteFile(String fileName) {
        // 파일의 확장자 추출
        String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);
        // 이미지 파일 여부 검사
        MediaType mType = MediaUtils.getMediaType(formatName);
        // 이미지의 경우(썸네일 + 원본파일 삭제), 이미지가 아니면 원본파일만 삭제
        // 이미지 파일이면
        if (mType != null) {
        	// 썸네일 이미지 파일 추출
            String front = fileName.substring(0, 12);
            String end = fileName.substring(14);
            // 썸네일 이미지 삭제
            new File(uploadPath + (front + end).replace('/', File.separatorChar)).delete();
        }
        // 원본 파일 삭제
        new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();
        
        // 레코드 삭제
        //boardService.deleteFile(fileName);
        
        // 데이터와 http 상태 코드 전송
        return new ResponseEntity<String>("deleted", HttpStatus.OK);
    }
		
}