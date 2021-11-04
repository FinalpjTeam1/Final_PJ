package com.heal.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.heal.dto.QnaBoard;
import com.heal.dto.QnaReply;

@Mapper
public interface QnaBoardDao {

	/* Q&A 글 개수 */
	public int boardCount();
	
	/* Q&A 전체 조회 */
	public List<QnaBoard> boardList();
	
	/* Q&A 상세 조회 */
	public QnaBoard boardDetail(int qnaNo);
	
	/* Q&A 글 추가 */
	public int insertBoard(QnaBoard qnaBoard);
	
	/* Q&A 글 수정 */
	public int updateBoard(QnaBoard qnaBoard);
	
	/* Q&A 글 삭제 */
	public int deleteBoard(int qnaNo);
	
	
	/* Q&A 조회수 */
	public void updateViewCnt(int qnaNo);
	
	/* Q&A 검색 */
	
	
}
