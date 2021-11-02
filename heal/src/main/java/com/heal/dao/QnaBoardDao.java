package com.heal.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.heal.dto.QnaBoard;
import com.heal.dto.Reply;

@Mapper
public interface QnaBoardDao {

	/* Q&A 글 추가 */
	public Map<String, Object> insertBoard(QnaBoard dto);
	
	/* Q&A 전체 조회 */
	public List<QnaBoard> boardList();
	
	/* Q&A 상세 조회 */
	public QnaBoard boardDetail(int qnaNo);
	
	/* Q&A 검색 */
	
	
	/* Q&A 글 수정 */
	public void updateBoard();
	
	/* Q&A 글 삭제 */
	public void deleteBoard(int qnaNo);
	
	/* Q&A 조회수 */
	public void updateViewCnt(int qnaNo);
	
	/* myPage 내가 쓴 Q&A 글 조회 */
	public List<QnaBoard> boardListToId(String id);
	
	

	
	
	
	
	
	
}
