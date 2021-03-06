package com.kh.web.model.message.dao;

import com.kh.web.model.message.dto.MessageVO;

public interface MessageDAO {
	// 메시지 작성
	public void create(MessageVO vo);
	// 메시지 열람
	public MessageVO readMessage(int mid);
	// 메시지 열람시간 갱신 
	public void updateMessage(int mid);
}
