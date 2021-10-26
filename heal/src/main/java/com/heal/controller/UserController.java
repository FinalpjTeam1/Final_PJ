package com.heal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class UserController {
	
	
	/** 로그인 화면 */
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "/user/login";
	}
	
	/**로그인 */
	@RequestMapping("/login")
	public String login() {
		return "/friend/friendHome";
	}	
	/** 회원가입 */
	@RequestMapping("/join")
	public String join() {
		return "/friend/friendHome";
	}	
	
}
