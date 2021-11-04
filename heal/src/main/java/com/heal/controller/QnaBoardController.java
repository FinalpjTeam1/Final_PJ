package com.heal.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import com.heal.dto.QnaBoard;
import com.heal.service.QnaBoardService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/qnaboard")
public class QnaBoardController {
	
	@Autowired
	private QnaBoardService qnaBoardService;
	
	
	@RequestMapping("/boardList")
	public String boardList(Model model, HttpSession session) {
		model.addAttribute("list", qnaBoardService.boardList());
		return "qnaboard/boardList";
	}
	
	
	@RequestMapping("/boardDetail/{qnaNo}")
	public String boardDetail(@PathVariable int qnaNo, Model model, HttpSession session) {
		model.addAttribute("detail", qnaBoardService.boardDetail(qnaNo));
		return "qnaboard/boardDetail";
	}
	
	
	@RequestMapping("/insert") //게시글 작성폼 호출  
	public String insertBoardForm() {
		
		
		//qnaBoardService.insertBoard(qnaBoard);
		return "qnaboard/boardForm";
	}
	
	
	@RequestMapping("/insertBoard")
	public String insertBoard(HttpServletRequest request, HttpSession session) {
		QnaBoard qnaBoard = new QnaBoard();
		//String id = (String)session.getAttribute("id");
		qnaBoard.setId(request.getParameter("id"));
		qnaBoard.setQnaTitle(request.getParameter("qnaTitle"));
		qnaBoard.setQnaText(request.getParameter("qnaText"));
		qnaBoardService.insertBoard(qnaBoard);
		return "redirect:/boardList";
	}
	
	
	@RequestMapping("/update/{qnaNo}") //게시글 수정폼 호출  
	public String updateBoardForm(@PathVariable int qnaNo, Model model) {
		model.addAttribute("detail", qnaBoardService.boardDetail(qnaNo));
		return "qnaboard/update";

	}
	
	
	@RequestMapping("/updateBoard")
	public int updateBoard(HttpServletRequest request) {
		QnaBoard qnaBoard = (QnaBoard)request.getParameterMap();
		return qnaBoardService.updateBoard(qnaBoard);

	}
	
	
	@RequestMapping("/delete/{bno}")
	public String deleteBoard(@PathVariable int qnaNo) {
		qnaBoardService.deleteBoard(qnaNo);
		return "redirect:/boardList";
	}
	
}
