package com.heal.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Reply {
	
	// 댓글 고유번호 
    private int replyNo;

    // Q&A 게시판 고유번호 
    private int qnaNo;

    // 작성 회원아이디 
    private String id;

    // 내용 
    private String replyText;

    // 작성일(YYYY-MM-DD hh:mm) 
    private String replyDate;
}
