package com.heal.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.heal.dto.Member;
import com.heal.service.MemberService;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MemberController {
		
	@Autowired
	public MemberService memberService;
	
	/** 로그인 화면으로 이동 */
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "/user/login";
	}
	
	/**로그인 */
	@RequestMapping("/login")
	public String login(String id, String pw, HttpSession session,HttpServletResponse response)throws Exception  {

		String grade = memberService.login(id, pw);
		Member dto = memberService.loginToMember(id, pw);		
		log.debug("dto :: " + dto);
		
		if(grade != null && dto != null) {
			session.setAttribute("id", id);
			session.setAttribute("grade", grade);
			session.setAttribute("dto", dto);
			if(grade.equals("A")) {
				log.debug("login admin Success :: ");
				return "redirect:/";
			} else {
				log.debug("login user Success :: ");
				return "redirect:/";
			}
		} else {
			//로그인 실패시 
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.append("<script>");
			out.append("alert('[안내] 로그인 후 이용 가능한 서비스 입니다.');");
			out.append("location.replace('/loginForm');");
			out.append("</script>");
			
			log.debug("login Fail :: ");
			return "/user/login";
		}
	}	
	
	/** 로그아웃 */
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		session.invalidate();
	   return "redirect:/";
	}
	
	/** 회원가입 */
	@RequestMapping("/join")
	public String join() {
		return "/friend/friendHome";
	}	
	
}
