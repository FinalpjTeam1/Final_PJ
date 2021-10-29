package com.heal.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.apache.commons.lang3.RandomStringUtils;
import com.heal.dto.Profile;
import com.heal.service.MatchingFriendService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MatchingFriendController {
	
	
	 	@Autowired
	 	private MatchingFriendService service;

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
		
		/** 내 프로필 저장*/
		@RequestMapping("/saveProfile")
		public String saveProfile(Profile profile,  HttpServletRequest request, HttpSession session, Model model,
				@RequestPart(value="file") MultipartFile file) throws Exception{
			
			String id= (String)session.getAttribute("id");
			System.out.println(profile+", "+id);
			
			//저장할 파일
			 String sourceFileName = file.getOriginalFilename(); 
		     String sourceFileNameExtension = FilenameUtils.getExtension(sourceFileName).toLowerCase(); 
		     File destinationFile; 
		     String destinationFileName;
		    
		     //상대 경로 설정
		     String fileUrl = request.getSession().getServletContext().getRealPath("profile/");
		     
		    	     do { 
		    	            destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + sourceFileNameExtension; 
		    	            destinationFile = new File(fileUrl + destinationFileName); 
		    	        } while (destinationFile.exists()); 
		    	        
		    	        destinationFile.getParentFile().mkdirs(); 
		    	        file.transferTo(destinationFile); 
		    	        
		    	        service.boardInsertService(profile);
		    	        
		    	        return "/friend/friendHome";
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
