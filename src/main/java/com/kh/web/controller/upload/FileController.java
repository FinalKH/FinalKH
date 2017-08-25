package com.kh.web.controller.upload;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cglib.core.DefaultNamingPolicy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kh.web.model.upload.FileDAO;
import com.kh.web.model.upload.FileDTO;
import com.kh.web.model.upload.VO;
import com.kh.web.util.FileService;

@Controller
public class FileController {
	   /*@RequestMapping(value = "/file.do", method = RequestMethod.GET)
	    public ModelAndView fileForm() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("upload/fileForm");
	        return mv;
	    }
	     
	    @RequestMapping(value = "/file.do", method = RequestMethod.POST)
	    public ModelAndView fileSubmit(FileDTO dto) {
	        MultipartFile uploadfile = dto.getUploadfile();
	        ModelAndView mv = new ModelAndView();
	        if (uploadfile != null) {
	            String fileName = uploadfile.getOriginalFilename();
	            dto.setFileName(fileName);
	            try {
	                // 1. FileOutputStream 사용
	                // byte[] fileData = file.getBytes();
	                // FileOutputStream output = new FileOutputStream("C:/images/" + fileName);
	                // output.write(fileData);
	                 
	                // 2. File 사용
	                File file = new File("F:/work/FinalKH/src/main/webapp/WEB-INF/views/images/" + fileName);
	                uploadfile.transferTo(file);
	            } catch (IOException e) {
	                e.printStackTrace();
	            } // try - catch
	        } // if
	        // 데이터 베이스 처리를 현재 위치에서 처리
	        mv.setViewName("upload/fileList");
	        mv.addObject("file", dto);
	        return mv; //redirect:getBoardList.do"; // 리스트 요청으로 보내야하는데 일단 제외하고 구현
	    }*/
	
	@Autowired
	private FileDAO fDao;
	
	@RequestMapping(value="/fileForm")
	public String fileForm(){
		return "upload/fileForm";
	}

	@RequestMapping(value="saveImage.do")
	public String saveImage(VO vo){
		//FileDAO fDao = new FileDAO();
		try{
			Map<String, Object> hmap = new HashMap<String, Object>();
			hmap.put("img", vo.getImgFile().getBytes());
			fDao.saveImage(hmap);
		}catch(Exception e){
			e.printStackTrace();
		}
		return "redirect:/fileForm";
	}
}
