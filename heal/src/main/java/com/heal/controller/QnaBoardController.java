package com.heal.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.heal.dto.QnaBoard;
import com.heal.dto.Reply;
import com.heal.service.QnaBoardService;

@Controller
@RequestMapping("/qnaboard")
public class QnaBoardController {
	
	@Autowired
	private QnaBoardService qnaBoardService;
	
	
	@RequestMapping("/boardFormView")
	public String boardForm(Model model, HttpSession session) {
		return "qnaboard/boardForm";
	}
	
	@RequestMapping("/boardListForm")
	public String boardListForm(Model model, HttpSession session) {
		return "qnaboard/boardList";
	}
	
	@RequestMapping("/boardDetailForm")
	public String boardDetailForm(Model model, HttpSession session) {
		return "qnaboard/boardDetail";
	}
	
	
	
	/* 로그인 시 접근 */
	@RequestMapping(value="/insertBoard", method=RequestMethod.POST)
	public String insertBoard(@ModelAttribute("QnaBoard")QnaBoard qnaBoard, Model model, HttpSession session, RedirectAttributes rttr) {
		String id = (String)session.getAttribute("id");
		qnaBoard.setId(id);
		qnaBoardService.insertBoard(qnaBoard);
		return "redirect:qnaboard/boardList";
	}
	
	@RequestMapping(value="/boardList", method=RequestMethod.GET)
	public String boardList(Model model, HttpSession session) {
		model.addAttribute("boardList", qnaBoardService.boardList());
		return "qnaboard/boardList";
	}
	
	/* 로그인 시 접근 */
	@RequestMapping(value="/boardDetail", method=RequestMethod.GET)
	public String boardDetail(@ModelAttribute("qnaNo")int qnaNo, Model model, HttpSession session) {
		model.addAttribute("boardDetail", qnaBoardService.boardDetail(qnaNo));
		return "qnaboard/boardDetail";
	}
	
	@RequestMapping(value = "/updateBoard", method = RequestMethod.GET)
	public String updateBoard(@RequestParam("qnaNo") int qnaNo, @RequestParam("mode") String mode, Model model) {
		model.addAttribute("boardDetail", qnaBoardService.boardDetail(qnaNo));
		model.addAttribute("mode", mode);
		model.addAttribute("qnaBoard", new QnaBoard());
		return "qnaboard/boardForm";

	}
	
	/* 로그인 시 접근 가능 
	@RequestMapping("")
	public String updateBoard() {
		return "qnaboard/";
	}
	*/
	
	/* 로그인 시 접근 가능
	@RequestMapping("")
	public String deleteBoard() {
		return "qnaboard/boardList";
	}
	 */
	
	
	/* reply */
	
	
	
	
	
	
	
	
	/* myPage 
	
	
	@RequestMapping("/boardListToId")
	public String boardListToId(String id, Model model) {
		List<QnaBoard> list = qnaBoardService.boardListToId(id);
		model.addAttribute("list", list);
		return "/myPage/qnaBoard";
	}
	
	@RequestMapping("/replyListToId")
	public String replyListToId(String id, Model model) {
		List<Reply> list = qnaBoardService.replyListToId(id);
		model.addAttribute("list", list);
		return "/myPage/qnaBoardReply";
	}
	
	*/
	
}
