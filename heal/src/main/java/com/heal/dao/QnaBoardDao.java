package com.heal.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.heal.dto.QnaBoard;

@Mapper
public interface QnaBoardDao {

	List<QnaBoard> selectQnaBoardList();

	
	/* reply */
	
	
	/* myPage */
	
	List<QnaBoard> selectQnaBoardListToId();
	
	
	
}
