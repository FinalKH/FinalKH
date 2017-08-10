package com.kh.web.model.travel.dto; 
  
import java.util.Date; 
  
public class ReviewVO { 
	private int bno;			// 게시글 번호
	private String subject;		// 게시글 제목
	private String content;		// 게시글 내용	
	private Date regdate;		// 게시글 작성일자 util.Date
	private int viewcnt;		// 게시글 조회수
	private int recnt;			// 게시글 댓글의 수 
	private String show;		// 게시글 삭제 상태 유무(y, n)
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public int getRecnt() {
		return recnt;
	}
	public void setRecnt(int recnt) {
		this.recnt = recnt;
	}
	public String getShow() {
		return show;
	}
	public void setShow(String show) {
		this.show = show;
	}
		
} 