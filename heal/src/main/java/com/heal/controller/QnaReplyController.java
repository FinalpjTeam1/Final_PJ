package com.heal.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.heal.dto.QnaReply;
import com.heal.service.QnaReplyService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/reply")
public class QnaReplyController {
	
	private QnaReplyService qnaReplyService; 
	
	@RequestMapping("/replyList")
    @ResponseBody
    public List<QnaReply> replyList(Model model, int qnaNo) {
        return qnaReplyService.replyList(qnaNo);
    }
    
	
    @RequestMapping("/insertReply")
    @ResponseBody
    public int insertReply(@RequestParam int qnaNo, @RequestParam String replyText, @RequestParam String id, HttpSession session ) {
    	QnaReply reply = new QnaReply();
    	reply.setQnaNo(qnaNo);
    	reply.setReplyText(replyText);
        //로그인 기능을 구현했거나 따로 댓글 작성자를 입력받는 폼이 있다면 입력 받아온 값으로 사용하면 됩니다. 저는 따로 폼을 구현하지 않았기때문에 임시로 "test"라는 값을 입력해놨습니다.
    	reply.setId("id");  
        return qnaReplyService.insertReply(reply);
    }
    
    
    @RequestMapping("/updateReply")
    @ResponseBody
    public int updateReply(@RequestParam int replyNo, @RequestParam String replyText, HttpSession session) {
    	QnaReply reply = new QnaReply();
    	reply.setReplyNo(replyNo);
    	reply.setReplyText(replyText);
        return qnaReplyService.updateReply(reply);
    }
    
    
    @RequestMapping("/deleteReply/{replyNo}")
    @ResponseBody
    public int deleteReply(@PathVariable int replyNo, HttpSession session) {
        return qnaReplyService.deleteReply(replyNo);
    }


}
