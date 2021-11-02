<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>내 프로필 | Hi-Camper</title>
	<!-- Bootstrap core JS-->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	
      <!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	<!-- CSS -->
	 <link  rel="stylesheet" href="../css/profileForm.css" media="all">
<<<<<<< Updated upstream
	<link type="text/css" rel="stylesheet" href="../css/juri.css">

=======
	 
	 <!-- Google Font -->
	 <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
	
		<script type="text/javascript">
	
		//이미지 함수
		function setThumbnail(event, obj) { 
			
			pathpoint = obj.value.lastIndexOf('.');
			filepoint = obj.value.substring(pathpoint+1,obj.length);
			filetype = filepoint.toLowerCase();	
			
			if(filetype=='jpg' || filetype=='gif' || filetype=='png' || filetype=='jpeg' ) {
				// 정상적인 이미지 확장자 파일인 경우
				var reader = new FileReader(); 
				reader.onload = function(event) { 
					var img = document.createElement("img"); 
					img.setAttribute("src", event.target.result); 
					document.querySelector("div#image_container").appendChild(img); 
					}; 
					reader.readAsDataURL(event.target.files[0]); 
			}else {
				alert('[안내] 이미지 파일 확장자만 업로드 가능합니다.');
				parentObj  = obj.parentNode
				node = parentObj.replaceChild(obj.cloneNode(true),obj);
				
			    $("#profile").val("");
				document.saveForm.file.select("profile"); //file name
				document.selection.clear();

				return false;
			}			
		}
		
		//이미지 함수 끝
<<<<<<< Updated upstream
<<<<<<< Updated upstream
=======
>>>>>>> Stashed changes

		//체크박스 체크 
		function count_ck(obj) {
			
	    	var chkbox = document.getElementsByName("interest");
	    	var chkCnt  = 0; // 설정 끝
	    	
	    	for(var i=0;i<chkbox.length; i++){
	    		if(chkbox[i].checked){
	    			chkCnt++;
	    		}
	    	}
	    	if(chkCnt>5){
	    		alert("[안내] 최대 5개까지만 선택할 수 있습니다.");
	    		obj.checked = false;
	    		return false;
	    	}
		}
<<<<<<< Updated upstream

		//폼  체크 
		function formCheck() {
			
			//(1) 자기소개 
			var intro = document.getElementById('intro').value;
			
			if(intro.trim() == ""){
				alert('[안내] 자기소개를 입력해주세요');
				$('#intro').focus();			
				return false ;
			} 
			
			if(intro.length > 20){
				alert('[안내] 자기소개를 20자 이하로 입력해주세요');
				$('#intro').focus();
				return false;
			}
			
			//(2) 관심사 
			var objWrite3 = document.getElementsByName("interest");
			
			for(var i=0;i<objWrite3.length;i++){
				    if(objWrite3[i].checked == false){
				        alert("[안내] 관심사를 선택해주세요.");
				        return false;
				    }
				    $('#profileForm').submit();
			}    
			

=======

		//체크박스 체크 
		function count_ck(obj) {
			
	    	var chkbox = document.getElementsByName("interest");
	    	var chkCnt  = 0; // 설정 끝
	    	
	    	for(var i=0;i<chkbox.length; i++){
	    		if(chkbox[i].checked){
	    			chkCnt++;
	    		}
	    	}
	    	if(chkCnt>5){
	    		alert("[안내] 최대 5개까지만 선택할 수 있습니다.");
	    		obj.checked = false;
	    		return false;
	    	}
		}

		//폼  체크 
		function formCheck() {
			
			//(1) 자기소개 
			var intro = document.getElementById('intro').value;
			
			if(intro.trim() == ""){
				alert('[안내] 자기소개를 입력해주세요');
				$('#intro').focus();			
				return false ;
			} 
			
			if(intro.length > 20){
				alert('[안내] 자기소개를 20자 이하로 입력해주세요');
				$('#intro').focus();
				return false;
			}
			
			//(2) 관심사 
			var objWrite3 = document.getElementsByName("interest");
			
			for(var i=0;i<objWrite3.length;i++){
				    if(objWrite3[i].checked == false){
				        alert("[안내] 관심사를 선택해주세요.");
				        return false;
				    }
				    $('#profileForm').submit();
			}    
			

>>>>>>> Stashed changes
=======

		//폼  체크 
		function formCheck() {
			
			//(1) 자기소개 
			var intro = document.getElementById('intro').value;
			
			if(intro.trim() == ""){
				alert('[안내] 자기소개를 입력해주세요');
				$('#intro').focus();			
				return false ;
			} 
			
			if(intro.length > 20){
				alert('[안내] 자기소개를 20자 이하로 입력해주세요');
				$('#intro').focus();
				return false;
			}
			
			//(2) 관심사 
			var objWrite3 = document.getElementsByName("interest");
			
			for(var i=0;i<objWrite3.length;i++){
				    if(objWrite3[i].checked == false){
				        alert("[안내] 관심사를 선택해주세요.");
				        return false;
				    }
				    $('#profileForm').submit();
			}    
			

>>>>>>> Stashed changes
		}
		
	</script>
	
>>>>>>> Stashed changes
	<style>

	</style>

</head>
<body>

<section>
<<<<<<< Updated upstream
<<<<<<< Updated upstream
<<<<<<< Updated upstream
		<div class="container-fluid " style=" margin-top: 20%; height:50%; width:80%; border : 1px solid black;">
		
			<div class="page-wrapper bg-dark p-t-100 p-b-50">
			        <div class="wrapper wrapper--w900">
			            <div class="card card-6">
=======
		<div class="container-fluid " style=" margin-top: 20%; height:50%; width:80%; ">
			<div class="page-wrapper bg-dark p-t-100 p-b-50">
=======
		<div class="container-fluid " style=" margin-top: 20%; height:50%; width:80%; ">
			<div class="page-wrapper bg-dark p-t-100 p-b-50">
>>>>>>> Stashed changes
=======
		<div class="container-fluid " style=" margin-top: 20%; height:50%; width:80%; ">
			<div class="page-wrapper bg-dark p-t-100 p-b-50">
>>>>>>> Stashed changes
			        <div class="wrapper wrapper--w900">   
			        <!-- 폼 처음 -->
			        <form name = "profileForm" id="profileForm" action="/saveProfile" method="post"  enctype="multipart/form-data" >
			              <div class="card card-6">
<<<<<<< Updated upstream
<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
			                <div class="card-heading">
			                    <h2 class="title" >프로필 작성</h2>
			                </div>
			                <div class="card-body">
			                    <form method="POST">
			                        <div class="form-row">
			                            <div class="name">자기소개</div>
			                            <div class="value">
<<<<<<< Updated upstream
<<<<<<< Updated upstream
<<<<<<< Updated upstream
			                                <input class="input--style-6" type="text" name="full_name">
			                            </div>
=======
=======
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
			                                <input class="input--style-6" type="text" name="intro" id="intro" maxlength="30" >
			                                <div class="label--desc">최대 20글자까지 작성해주세요.</div>
			                            </div> 
>>>>>>> Stashed changes
			                        </div>
			                        <div class="form-row">
			                            <div class="name">관심사</div>
				                        	 <div class="value" style="width:600px; height: 200px; border:1px solid red; ">
												 <!-- 처음 -->
<<<<<<< Updated upstream
<<<<<<< Updated upstream
<<<<<<< Updated upstream
													<div class="form-check">
														  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
														  <label class="form-check-label" for="flexCheckDefault">
														    Default checkbox
														  </label>
													</div>					
													
													<input type="checkbox" id="hi">
													 <label for ="hi"></label>
													
=======
=======
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
											  <label class="x-large side" ><input type="checkbox" onclick="count_ck(this)" name="interest" value="캠핑">캠핑</label>
										      <label class="x-large side"><input type="checkbox" onclick="count_ck(this)" name="interest" value="등산"> 등산</label>
										      <label class="x-large side"><input type="checkbox" onclick="count_ck(this)" name="interest" value="차박"> 차박</label>
										      <label class="x-large side"><input type="checkbox" onclick="count_ck(this)" name="interest" value="캠핑카">캠핑카</label>
										      <label class="x-large side"><input type="checkbox"onclick="count_ck(this)"  name="interest" value="드라이브">드라이브</label>
										      
										      <label class="x-large " style="margin-left:2.3%" ><input type="checkbox" onclick="count_ck(this)"name="interest" value="여행">여행</label>
											  <label class="x-large second"  ><input type="checkbox" onclick="count_ck(this)" name="interest" value="사진">사진</label>
											  <label class="x-large second" ><input type="checkbox" onclick="count_ck(this)" name="interest" value="영상">영상</label>
											  <label class="x-large second" style="margin-left:3.7%"><input type="checkbox" onclick="count_ck(this)" name="interest" value="친구구함">친구구함</label>
  									    	 <label class="x-large side" style="margin-left:4%"><input type="checkbox" onclick="count_ck(this)" name="interest" value="맛집">맛집</label>
										      <label class="x-large side"style="margin-left:2.5%"><input type="checkbox" onclick="count_ck(this)" name="interest" value="반려동물과함께">반려동물과함께</label>		
<<<<<<< Updated upstream
<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
  												<!-- 끝 -->
  												<div class="label--desc" style="margin-bottom: 50px;">최대 5개까지 선택 가능합니다.</div>		

											</div>			
			                        </div>
			                        <div class="form-row">
			                            <div class="name">Message</div>
			                            <div class="value">
										</div>
			                        </div>
			                        <div class="form-row">
			                            <div class="name">프로필 사진 등록</div>
			                            <div class="value">
			                                <div class="input-group js-input-file">
			                                    <input class="input-file" type="file" name="file_cv" id="file">
			                                </div>
			                                <div class="label--desc">얼굴이 선명하게 나온 사진을 올려주세요. 파일의 최대 크기는 15mb입니다.</div>
			                            </div>
			                        </div>
			                    </form>
			                </div>
			                <div class="card-footer">
<<<<<<< Updated upstream
<<<<<<< Updated upstream
<<<<<<< Updated upstream
			                    <button class="btn btn--radius-2 btn--blue-2" type="submit" style="margin-left: 45%">등록하기</button>
			                </div>
			            </div>
=======
=======
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
			                    <button class="btn btn--radius-2 btn--blue-2" onclick="formCheck();" style="margin-left: 35%">등록하기</button>	                 
			                </div>
			            </div>
			            </form>
			            <!-- 폼 마지막 -->
<<<<<<< Updated upstream
<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
			        </div>
			    </div>
		</div>
</section>	
</body>
</html>