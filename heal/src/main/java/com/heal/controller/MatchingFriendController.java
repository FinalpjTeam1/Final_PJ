package com.heal.controller;

<<<<<<< Updated upstream
=======
import java.io.File;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
>>>>>>> Stashed changes
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
<<<<<<< Updated upstream
=======
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.apache.commons.lang3.RandomStringUtils;

import com.heal.dto.Member;
import com.heal.dto.Profile;
import com.heal.service.MatchingFriendService;

>>>>>>> Stashed changes
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MatchingFriendController {
<<<<<<< Updated upstream
=======
	
		/** service 연결 */
	 	@Autowired
	 	private MatchingFriendService friendService;
<<<<<<< Updated upstream
<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes

		/** 친구 찾기 페이지 첫 화면 */
		@RequestMapping("/friend/friendHome")
		public String friendHome(HttpSession session, Model model) {

			String id= (String)session.getAttribute("id");
			
			//내 프로필 불러오기
			Profile profile = friendService.getProfile(id);
			
			//내 친구 목록 불러오기 (최대 3개)
			ArrayList<Profile> friendProfile = friendService.getFriendProfile(id);
			
			model.addAttribute("profile",profile);			
			model.addAttribute("friendProfile",friendProfile);			
			
			return "/friend/friendHome";
		}
		
		/** 내 프로필 초기 설정 화면*/
		@RequestMapping("/friend/myProfile")
		public String myProfile() {
			
			return "/friend/myProfile";
		}
		
<<<<<<< Updated upstream
<<<<<<< Updated upstream
<<<<<<< Updated upstream
=======
=======
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
		
		/** 내 프로필 수정 화면*/
		@RequestMapping("/friend/editProfile")
		public String editProfile(HttpSession session, Model model) {
			
			String id= (String)session.getAttribute("id");

			Profile profile = friendService.getProfile(id);
			
			System.out.println(profile.getInterest());
			
			model.addAttribute("profile",profile);

			
			return "/friend/editProfile";
		}
		
		
		/** 내 프로필 저장*/
		@RequestMapping("/saveProfile")
		public String saveProfile(Profile profile,  HttpServletRequest request, HttpSession session, Model model,
				@RequestPart(value="file") MultipartFile files) throws Exception{
			
			String id= (String)session.getAttribute("id");
			profile.setId(id);
			
			//연령대 불러오기
			String age = friendService.findAge(id);
			profile.setAge(age);
			
			//닉 불러오기
			String nick = friendService.findNick(id);
			profile.setNick(nick);
			
			/** 파일 업로드 */
			 String fileName  = files.getOriginalFilename(); 
		     String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase(); 
		     File destinationFile; 
		     String destinationFileName;
		     String fileUrl = request.getSession().getServletContext().getRealPath("profile/");
		     
		    	     do { 
		    	            destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension; 
		    	            destinationFile = new File(fileUrl + destinationFileName); 
		    	        } while (destinationFile.exists()); 
		    	        
		    	        destinationFile.getParentFile().mkdirs(); 
		    	        files.transferTo(destinationFile); 
		    	        
		    	        profile.setFileName(destinationFileName);
		    	        profile.setFileOriName(fileName);
		    	        profile.setFileUrl(fileUrl);
		    	        
		    	        friendService.insertProfile(profile);
		    	        
		    	        //null 체크
		    	        
		    	   return "/friend/friendHome";
		    }
		
		/**내 프로필 수정*/
		@RequestMapping("/editProfile")
		public String editProfile(Profile profile,  HttpServletRequest request, HttpSession session, Model model,
				@RequestPart(value="file") MultipartFile files) throws Exception{
			
			String id= (String)session.getAttribute("id");
			profile.setId(id);
			
			//연령대 불러오기
			String age = friendService.findAge(id);
			profile.setAge(age);
			
			//닉 불러오기
			String nick = friendService.findNick(id);
			profile.setNick(nick);
			
			/** 파일 업로드 */
			 String fileName  = files.getOriginalFilename(); 
		     String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase(); 
		     File destinationFile; 
		     String destinationFileName;
		     String fileUrl = request.getSession().getServletContext().getRealPath("profile/");
		     
		    	     do { 
		    	            destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension; 
		    	            destinationFile = new File(fileUrl + destinationFileName); 
		    	        } while (destinationFile.exists()); 
		    	        
		    	        destinationFile.getParentFile().mkdirs(); 
		    	        files.transferTo(destinationFile); 
		    	        
		    	        profile.setFileName(destinationFileName);
		    	        profile.setFileOriName(fileName);
		    	        profile.setFileUrl(fileUrl);
		    	        
		    	        int result = friendService.updateProfile(profile);
		    	        
		    	        if(result==1) {
		    				return "redirect:/friend/friendHome";
		    			}else {
		    				model.addAttribute("title","프로필 수정 실패");
		    				model.addAttribute("message", "프로필 수정을 실패하였습니다. 관리자에게 문의하거나 다시 시도해주세요");
		    				return "error";
		    			}
		    }
		
		/** 내 프로필 삭제 */
		@RequestMapping("/deleteProfile")
		public String profileDelete(String id,  Model model) {
			
			System.out.println("여기는 컨트롤러"+id);
			
			id = id.trim();
			
			int result = friendService.deleteForm(id);
						
			if(result==1) {
				return "redirect:/friend/friendHome";
			}else {
				model.addAttribute("title","[오류] 프로필 삭제 실패");
				model.addAttribute("message", "프로필 삭제를 실패하였습니다. 관리자에게 문의하거나 다시 시도해주세요");
				return "/user/error";
			}	
		}
		
<<<<<<< Updated upstream
<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
		/** 친구 리스트 보기 */
		@RequestMapping("/friend/friendList")
		public String friendList(HttpSession session, Model model) {
			
			String id= (String)session.getAttribute("id");
			
			ArrayList<Profile> profile = friendService.getFriendList(id);
			model.addAttribute("profile",profile);
			
			return "/friend/friendList";
		}
		
		/** 친구 찾기 메인 */
		@RequestMapping("/friend/findFriend")
		public String findFriend(HttpSession session, Model model) {
			
			String id= (String)session.getAttribute("id");
			
			//회원들 전체 프로필 불러오기 - 현재 사용자 제외
			ArrayList<Profile> profile = friendService.getAllProfile(id);
			
			//친구 추천 매칭
			//(1) 같은 연령대인 사람을 추천해줄까?
			Member me = friendService.selectMe(id);
			String age = me.getAge();
			ArrayList<Profile> sameAge = friendService.getSameAgeFriend(id, age);
			
			//(2) 같은 취미를 가지고 있는 사람 추천
			String interest = friendService.getMyInterest(id);
			String[] splited = interest.split(",");
			
			String separator = "|"; 
		    StringBuilder sb = new StringBuilder(); 
		    
		    int listSize = splited.length; 
		    for (int i = 0; i < listSize; i++){ 
		        sb.append(splited[i]); 
		        
		        if (i < listSize - 1){ 
		            sb.append(separator); 
		        } 
		    } 
		    
		    interest = sb.toString();
		    
		    ArrayList<Profile> sameInterest = friendService.getSameInterest(id, interest);
			
		    //중복 제거
		    boolean result = Arrays.equals(sameAge.toArray(), sameInterest.toArray());
		    sameAge.removeAll(sameInterest);
		    sameInterest.removeAll(sameAge);
		
			
			model.addAttribute("id",id);
			model.addAttribute("sameAge", sameAge);
			model.addAttribute("sameInterest", sameInterest);
			model.addAttribute("profile", profile);

			return "/friend/findFriend";
		}
		
		/** 친구 추가하기 */
		@RequestMapping("/friend/addFriend")
		public String addFriend(HttpSession session, String friend, Model model) {
			
			String id= (String)session.getAttribute("id");
			
			int result = friendService.addFriend(id, friend);
			int result2 = friendService.addFriendToo(id, friend);
			
			if(result==1&&result2==1) {
				return "/friend/friendList";
			}else {
				model.addAttribute("title","[오류] 친구 추가 실패");
				model.addAttribute("message", "친구 추가를 실패하였습니다. 관리자에게 문의하거나 다시 시도해주세요");
				return "error";
			}	
	}
		
		/** 친구 프로필 자세히 보기 */
		@RequestMapping("/friend/friendDetail")
		public String friendDetail(String id, Model model) {
			
			Profile profile = friendService.getFriendDetail(id);
			
			model.addAttribute("profile", profile);
			
			return "/friend/friendDetail";
		}
		
		/** 친구 삭제하기 */
		@RequestMapping("/friend/friendDelete")
		public String friendDelete(String id, Model model) {
			
			int result = friendService.deleteFriend(id);
			
			if(result==1) {
				return "redirect:/friend/friendHome";
			}else {
				model.addAttribute("title","[오류] 친구 삭제 실패");
				model.addAttribute("message", "친구 삭제를 실패하였습니다. 관리자에게 문의하거나 다시 시도해주세요");
				return "error";
			}	
		}
		
		/** 에러 페이지 */
		@RequestMapping("/user/error")
		public String error() {
			
			return "/user/error";
		}
		
	
}
