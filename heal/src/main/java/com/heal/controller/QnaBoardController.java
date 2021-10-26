package com.heal.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.heal.dto.QnaBoard;
import com.heal.dto.Reply;
import com.heal.service.QnaBoardService;

@Controller
public class QnaBoardController {
	
	@Autowired
	public QnaBoardService qnaBoardService;
	
	/* 로그인 시 접근 가능 */
	@RequestMapping("/addQnaBoard")
	public String addQnaBoard(QnaBoard dto, Model model) {
		int result = qnaBoardService.addQnaBoard(dto);
		if(result == 1) {
			model.addAttribute("", "");
			return "qnaboard/boardDetail";
		}else {
			model.addAttribute("", "");
			return "result";
		}
		
	}
	
	@RequestMapping("/qnaBoardList")
	public String qnaBoardList(Model model, HttpSession session) {
		List<QnaBoard> list = qnaBoardService.qnaBoardList();
		model.addAttribute("list", list);
		return "qnaboard/boardList";
	}
	
	/* 로그인 시 접근 가능 */
	@RequestMapping("/qnaBoardDetail")
	public String qnaBoardDetail(String qnaNo, Model model) {
		return "qnaboard/boardDetail";
	}
	

	/* 로그인 시 접근 가능 
	@RequestMapping("")
	public String updateQnaBoard() {
		return "qnaboard/";
	}
	*/
	
	/* 로그인 시 접근 가능
	@RequestMapping("")
	public String deleteQnaBoard() {
		return "qnaboard/boardList";
	}
	 */
	
	
	/* reply */
	
	
	
	
	
	
	
	
	/* myPage */
	
	
	@RequestMapping("/qnaBoardListToId")
	public String qnaBoardListToId(Model model, HttpSession session) {
		List<QnaBoard> list = qnaBoardService.qnaBoardListToId();
		return "/myPage/qnaBoard";
	}
	
	@RequestMapping("/replyListToId")
	public String replyListToId(Model model, HttpSession session) {
		List<Reply> list = qnaBoardService.replyListToId();
		return "/myPage/reply";
	}
	
	
	
}
