package com.heal.dao;

import java.util.List;

import com.heal.dto.Reply;

public interface QnaReply {
	
	
	
	/* Q&A 댓글수 */
	
	
	/* myPage 내가 쓴 Q&A 댓글 조회*/
	public List<Reply> replyListToId(String id);
}
