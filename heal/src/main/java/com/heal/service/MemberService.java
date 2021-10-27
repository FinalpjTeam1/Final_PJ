package com.heal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.heal.dao.MemberDao;
import com.heal.dto.Member;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MemberService {
	
	@Autowired
	private MemberDao memberDao;
	
	/**
	 * login 
	 * @param memberId 아이디
	 * @param memberPw 비밀번호
	 * @return grade
	 */
	public String login(String id, String pw) {
		String grade = memberDao.login( id, pw);
		log.debug("member grade :: " + grade);
		return grade;
	}
	
	/**
	 * login
	 * @param memberId 아이디
	 * @param memberPw 비밀번호
	 * @return member domain
	 */
	public Member loginToMember(String  id, String pw) {
		Member dto = memberDao.loginToMember( id, pw);
		log.debug("loginToMember :: " + dto);
		return dto;
	}
	

}
