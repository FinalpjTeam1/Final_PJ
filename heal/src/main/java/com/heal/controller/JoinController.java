package com.heal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.heal.dto.Member;
import com.heal.service.MemberService;
import com.heal.util.BCrypt;
import com.heal.util.SHA256;

import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
@RequestMapping("/member")
public class JoinController {

	@Autowired
	MemberService memberService;
	
	@GetMapping("joinPolicy")
	public String getJoinPolicy() {
		return "member/joinPolicy";
	}
	
	@PostMapping("joinPolicy")
	public String postJoinPolicy() {
		return "member/joinForm";
	}
	
	
	@PostMapping("join")
	public ModelAndView memberJoin(@ModelAttribute Member dto) {
		ModelAndView mav = new ModelAndView();
		int result = 0;
		
		try {
			SHA256 sha = SHA256.getInsatnce();
			String shaPass1 = dto.getPw();
			String shaPass = sha.getSha256(shaPass1.getBytes());
			log.debug("암호화::"+shaPass);
			String bcPass= BCrypt.hashpw(shaPass, BCrypt.gensalt());
			dto.setPw(bcPass);
		}catch (Exception e) {
			e.printStackTrace();
		}		
		result = memberService.insertMember(dto);
		switch (result) {
		case 1:
			mav.setViewName("redirect:/member/loginForm");
			break;

		default:
			mav.setViewName("member/joinForm");
			break;
		}
		return mav;
	}
	

	
}
