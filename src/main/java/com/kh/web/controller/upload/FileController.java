package com.kh.web.controller.upload;

import java.io.InputStream;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.web.model.upload.FileCommand;
import com.kh.web.util.FileManager;

@Controller("file.fileController123")
public class FileController extends HttpServlet{
	/*@Resource(name="fileManager")
	private FileManager fileManager;
	
	@RequestMapping(value="/upload.file", method={RequestMethod.GET, RequestMethod.POST})
	public String upload(FileCommand command, HttpServletResponse response,HttpServletRequest request) throws Exception{
		if(command == null || command.getMode() == null || command.getMode().equals("")){
			return "upload/FileSend";
		}
		
		FileCommand dto = command;
		request.setAttribute("content", "업로드된 파일이 없습니다.");
		if(!dto.getUpload().isEmpty()){
			HttpSession session = request.getSession();
			String root = session.getServletContext().getRealPath("/");
			String path = "web\\upload";
			System.out.println("path:"+path);
			
			
			String SavePath = "upload";
			
			ServletContext context = getServletContext();
			String uploadFilePath = context.getRealPath(SavePath);
			
			dto.setFileSize(dto.getUpload().getSize());
			dto.setOriginalFileName(dto.getUpload().getOriginalFilename());
			
			InputStream is = dto.getUpload().getInputStream();
			String newFileName = fileManager.doFileUpload(is, dto.getOriginalFileName(), uploadFilePath);
			dto.setSaveFileName(newFileName);
			
			String savename = dto.getSaveFileName();
			String pathh = path +"\\" + savename;
			
			request.setAttribute("saveFileName", dto.getSaveFileName());
			request.setAttribute("originalFileName", dto.getOriginalFileName());
			request.setAttribute("content", dto.getContent());
			
			request.setAttribute("fileSize", dto.getFileSize());
			request.setAttribute("contentType", dto.getUpload().getContentType());
			request.setAttribute("root", root);
			request.setAttribute("path", path);
			request.setAttribute("pathh", pathh);
			//데이터베이스에 업로드된 파일 정보 젖아 프로세스 추가
		}
		return "upload/FileReceive";
	}
	
	@RequestMapping(value="/download.file",method={RequestMethod.GET, RequestMethod.POST})
	public String download(FileCommand command, HttpServletResponse response,HttpServletRequest request){
		HttpSession session = request.getSession();
		String root = session.getServletContext().getRealPath("/");
		String path = "web\\upload";
		
		
		
		FileCommand dto = command;
		
		boolean flag = fileManager.doFileDownload(dto.getSaveFileName(), dto.getOriginalFileName(),path,response);
		if(flag){
			//다운로드 횟수 증가 프로세스 추가
		}
		return "";
	}
*/
	

}
