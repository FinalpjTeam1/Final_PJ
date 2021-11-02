package com.heal.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.heal.dao.QnaBoardDao;
import com.heal.dto.QnaBoard;
import com.heal.dto.Reply;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class QnaBoardService {
	
	@Autowired
	private QnaBoardDao qnaBoardDao;
	

	/* Q&A 글 추가 */
	public Map<String, Object> insertBoard(QnaBoard dto) {
		return qnaBoardDao.insertBoard(dto);
	}
	
	/* Q&A 전체 조회 */
	public List<QnaBoard> boardList() {
		return qnaBoardDao.boardList();
	}
	
	/* Q&A  상세 조회 */
	public QnaBoard boardDetail(int qnaNo) {
		qnaBoardDao.updateViewCnt(qnaNo);
		return qnaBoardDao.boardDetail(qnaNo);
	}
	
	/* Q&A 검색 */
	

	
	/* Q&A 글 수정 */
	public void updateBoard() {
		
	}
	
	/* Q&A 게시판 글 삭제 
	public void deleteBoard(int qnaNo); */
	
	
	
	/* reply */
	
	
	
	/* myPage 

	public List<QnaBoard> boardListToId(String id) {
		return qnaBoardDao.selectQnaBoardListToId(id);
	}


	public List<Reply> replyListToId(String id) {
		return qnaBoardDao.replyListToId(id);
	}

	*/
	
	
	
	
}
