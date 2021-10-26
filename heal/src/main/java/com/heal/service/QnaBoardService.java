package com.heal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.heal.dao.QnaBoardDao;
import com.heal.dto.QnaBoard;
import com.heal.dto.Reply;

@Service
public class QnaBoardService {
	
	@Autowired
	private QnaBoardDao qnaBoardDao;
	
	
	public List<QnaBoard> qnaBoardList() {
		return qnaBoardDao.selectQnaBoardList();
	}


	public int addQnaBoard(QnaBoard dto) {
		return 0;
	}

	
	/* reply */
	
	
	
	/* myPage */

	public List<QnaBoard> qnaBoardListToId() {
		return qnaBoardDao.selectQnaBoardListToId();
	}


	public List<Reply> replyListToId() {
		return null;
	}
	
	
	
	
}
