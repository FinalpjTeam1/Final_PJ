package com.heal.controller;

import java.util.ArrayList;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.heal.dto.Review;
import com.heal.service.ReviewService;

import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
public class ReviewController {
	
	@Autowired
	public ReviewService reviewService;
	
	
	/** 목록 페이지 */
	@RequestMapping("/review/list")
	public String ReviewList(Model model) {
		log.info("### ReviewMember List :: ");
		
		ArrayList<Review> review = reviewService.reviewList();
		
		model.addAttribute("review", review);
		
		return "review/list";
	}
	
	/** 게시글 상세조회 화면  */
	@RequestMapping("/review/detail")
	public String ReviewDetail(int re_no, Model model) {
		log.info("### ReviewDetail :: ");
		
		Review dto = reviewService.findReviewDetail(re_no);
		
		model.addAttribute("dto", dto);
		return "review/detail";
	}
	
	/** 게시글 삭제 */
	@RequestMapping("/review/delete")
	public String ReviewDelete(int re_no, Model model) {
		log.info("### Review Delete :: ");
		int result = reviewService.reviewDelete(re_no);
		if (result == 1) {
			return "review/deleteDone";
		} else {
			return "review/detail";
		}
	}
	
	/** 게시글 삭제 후 이동 페이지 */
	@RequestMapping("/review/deleteDone")
	public String DeleteDone() {
		return "review/deleteDone";
	}
	
	
		
	/** 게시글 수정화면 */
	@RequestMapping("/review/updateForm")
	public String ReviewUpdate(int re_no, Model model) {
		log.debug("### Review Update :: ");
		Review dto = reviewService.findReviewDetail(re_no);
		model.addAttribute("dto", dto);
		return "review/updateForm";
	}
	
	
	/** 게시글 수정 */
	@RequestMapping("/review/update")
	public String ReviewUpdate(Review dto, Model model) {
			int result = reviewService.updateReview(dto);
			if (result == 1) {
				return "review/formDone";
			} else {
				model.addAttribute("message", "수정 실패");
				log.debug("### error :: " + result);
				return "review/detail";
			}
		}
	
	
	
	/** 게시글 작성화면 */
	@RequestMapping("/review/form")
	public String ReviewForm() {
		log.info("### Review form ::");
		return "review/form";
	}

    /** 게시글 작성 */
	@RequestMapping("/review/formDone")
	public String ReviewWrite(Review dto, Model model) {
		log.info("### Review Write :: ");
		log.debug("###" + dto);
		
		int result = reviewService.insertReview(dto);
			if (result == 1) {
				return "review/formDone";
			} else {
				model.addAttribute("message", "작성 실패");
				return "review/list";
			}
		}
	
}
