package com.heal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MatchingFriendController {

		/** 친구 찾기 페이지 첫 화면 */
		@RequestMapping("/friend/friendHome")
		public String friendHome() {
			
			return "/friend/friendHome";
		}
		
		/** 내 프로필 설정 화면*/
		@RequestMapping("/friend/myProfile")
		public String myProfile() {
			
			return "/friend/myProfile";
		}
		
		/** 친구 리스트 보기 */
		@RequestMapping("/friend/friendList")
		public String friendList() {
			
			return "/friend/friendList";
		}
		
		/** 친구 디테일 보기 */
		@RequestMapping("/friend/friendDetail")
		public String friendDetail() {
			
			return "/friend/friendDetail";
		}
}
