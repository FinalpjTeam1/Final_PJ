package com.heal.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class QnaBoard {
	// Q&A 게시판 고유번호 
    private int qnaNo;

    // 작성 회원아이디 
    private String id;

    // 제목 
    private String qnaTitle;

    // 내용 
    private String qnaText;

    // 첨부 사진 
    private String qnaPhoto;

    // 작성일(YYYY-MM-DD) 
    private String qnaDate;
    
}
