package com.heal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.heal.dao.QnaReplyDao;
import com.heal.dto.QnaReply;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class QnaReplyService {
	
	@Autowired
	private QnaReplyDao qnaReplyDao; 
	
	
	public List<QnaReply> replyList(int qnaNo) {
		return qnaReplyDao.replyList(qnaNo);
	}

	public int insertReply(QnaReply reply) {
		return qnaReplyDao.insertReply(reply);
	}

	public int updateReply(QnaReply reply) {
		return qnaReplyDao.updateReply(reply);
	}

	public int deleteReply(int replyNo) {
		return qnaReplyDao.deleteReply(replyNo);
	}

	
}
