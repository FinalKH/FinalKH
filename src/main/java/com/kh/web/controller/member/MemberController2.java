package com.kh.web.controller.member;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.web.model.member.dto.MemberVo_Test_JG;
import com.kh.web.service.member.MemberService2;

@Controller // 현재 클래스를 스프링에서 관리하는 컨트롤러 bean으로 생성
@RequestMapping("/member/*") // 모든맵핑은 /member/를 상속
public class MemberController2 {
	// 로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(MemberController2.class);
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Inject
	MemberService2 memberService2;
	
	// 01 회원 목록
    // url pattern mapping
    @RequestMapping("list.do")
    public String memberList(Model model){
    // controller => service => dao 요청
        List<MemberVo_Test_JG> list = memberService2.memberList();
        model.addAttribute("list", list);
        return "member/member_listQQQQQQQQQQ";
    }
 // 02_01 회원 등록 페이지로 이동
    @RequestMapping("member/write.do")
    public String memberWrite(){
        
        return "member/member_write";
    }
    
    // Email 중복 체크 AJAX
    @ResponseBody
    @RequestMapping("overlap.do")
    public String insertMember(@RequestParam String email){
    	String returnString;
    	String chkValue =  memberService2.insertCheck(email);
    	logger.info(email);
    	logger.info(chkValue);
    	if(chkValue.equals("1")){
    		logger.info("1실행");
    		return returnString="1";
    	}else{
    		logger.info("0실행");
    		return returnString="0";
    	}
    	
    	
    	
    }
    
    // 02_02 회원 등록 처리 후 ==> 회원목록으로 리다이렉트
    // @ModelAttribute에 폼에서 입력한 데이터가 저장된다.
    @RequestMapping("member/insert.do")
    // * 폼에서 입력한 데이터를 받아오는 법 3가지 
    //public String memberInsert(HttpServlet request){
    //public String memberInsert(String Email, String Password, String userId){
    public String memberInsert(@ModelAttribute MemberVo_Test_JG vot, HttpSession session){
    	// 테이블에 레코드 입력
    	String Password = vot.getPassword();
    	String encryptPassword = passwordEncoder.encode(vot.getPassword());
    	logger.info(encryptPassword);
    	vot.setPassword(encryptPassword);
    	
        memberService2.insertMember_test(vot);
        
        vot.setPassword(Password);
        
        memberService2.loginCheck_test(vot, session);
        // * (/)의 유무에 차이
        // /member/list.do : 루트 디렉토리를 기준
        // member/list.do : 현재 디렉토리를 기준
        // member_list.jsp로 리다이렉트
        return "redirect:/member/list.do";
    }
    
    // 02. 로그인 처리
    @RequestMapping("loginCheck_test.do")
    public String loginCheck_test(@ModelAttribute MemberVo_Test_JG vot, HttpSession session){
        boolean result = memberService2.loginCheck_test(vot, session);

        return "redirect:/";
    }
    
    // 03. 로그아웃 처리
    @RequestMapping("logout_test.do")
    public String logout_test(HttpSession session){
        memberService2.logout_test(session);

        return "redirect:/";
    }
}
