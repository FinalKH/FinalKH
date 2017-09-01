package com.kh.web.controller.travel;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.web.model.travel.dto.FileBean;

@Controller
public class RvimgController {
	Logger log = Logger.getLogger(this.getClass());

	// 이미지 업로드
	@RequestMapping(value = "/upimg.do")
	public String upimg(FileBean fileBean, HttpServletRequest request, Model model) {
		System.out.println("====업로드시작===============================================");
		HttpSession session = request.getSession();
		String root_path = session.getServletContext().getRealPath("/");  //"C:/Upload/";
		String attach_path = "resources/upload/";	//"img/";

		System.out.println("파일1 : " + root_path);
		System.out.println("파일2 : " + attach_path);
		MultipartFile upload = fileBean.getUpload();
		String filename = "";
		String CKEditorFuncNum = "";

		if (upload != null) {
			filename = upload.getOriginalFilename();
			fileBean.setFilename(filename);
			CKEditorFuncNum = fileBean.getCKEditorFuncNum();
			try {
				File file = new File(root_path + attach_path + filename);
				if(!file.exists()){
					file.mkdirs();
					System.out.println("폴더 생성 완료");
				}
				log.info(root_path + attach_path + filename);
				System.out.println("파일경로 : "+file.getCanonicalPath());
				upload.transferTo(file);
			} catch (IOException e) {
				e.printStackTrace();
				System.err.println("파일경로얻어오기 에러 : "+e);
			}
		}

		String file_path = attach_path + filename;
		model.addAttribute("file_path", file_path);
		model.addAttribute("CKEditorFuncNum", CKEditorFuncNum);
		return "travel/reviewWrite";
	}
	/*public void communityImageUpload(HttpServletRequest request, HttpServletResponse response, @RequestParam MultipartFile upload) {
		 
        OutputStream out = null;
        PrintWriter printWriter = null;
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
 
        try{
 
            String fileName = upload.getOriginalFilename();
            byte[] bytes = upload.getBytes();
            String uploadPath = "/resources/upload/" + fileName;//저장경로
 
            out = new FileOutputStream(new File(uploadPath));
            out.write(bytes);
            String callback = request.getParameter("CKEditorFuncNum");
 
            printWriter = response.getWriter();
            String fileUrl = "/upimg/" + fileName;//url경로
 
            printWriter.println("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction("
                    + callback
                    + ",'"
                    + fileUrl
                    + "','이미지를 업로드 하였습니다.'"
                    + ")</script>");
            printWriter.flush();
 
        }catch(IOException e){
            e.printStackTrace();
        } finally {
            try {
                if (out != null) {
                    out.close();
                }
                if (printWriter != null) {
                    printWriter.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
 
        return;
    }*/

}
