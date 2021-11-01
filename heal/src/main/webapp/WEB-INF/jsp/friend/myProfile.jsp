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
	 
	 <!-- Google Font -->
	 <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
	
	<script type="text/javascript">
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


	</script>
	
	<style>
		h1, h2, h3, h4, h5, h6, p, label{
	     font-family: 'Nanum Gothic', sans-serif; !important;
	    }
	    
	    .x-large{
	    font-size: medium;
	   }
	    
	    .side{
	     margin-left:5%; margin-right:5%
	    }
	    .second{
	    	margin-left:5%; margin-right:5%
	    }
	    .image_container{
	    	height: 50px; width:100px;
	    }
	</style>	

</head>
<body>

<section>
		<div class="container-fluid " style=" margin-top: 20%; height:50%; width:80%; ">
		
			<div class="page-wrapper bg-dark p-t-100 p-b-50">
			        <div class="wrapper wrapper--w900">
			        
			        <!-- 폼 처음 -->
			        <form name = "profileForm" action="/saveProfile" method="post"  enctype="multipart/form-data">
			            <div class="card card-6">
			                <div class="card-heading">
			                    <h2 class="title" >프로필 작성</h2>
			                </div>
			                <div class="card-body">
			                        <div class="form-row">
			                            <div class="name">자기소개</div>
			                            <div class="value">
			                                <input class="input--style-6" type="text" name="intro" id="intro"  >
			                                <div class="label--desc">최대 20글자까지 작성해주세요.</div>
			                                <div id="imagePreview"><img id="img" /></div>
			                            </div> 
			                        </div>
			                        
			                        <div class="form-row">
			                            <div class="name">관심사</div>
				                        	 <div class="value" style="width:600px; height: 100px;">
												 <!-- 처음 -->
											  <label class="x-large side" ><input type="checkbox" name="interest" value="camping">캠핑</label>
										      <label class="x-large side"><input type="checkbox" name="interest" value="mountain"> 등산</label>
										      <label class="x-large side"><input type="checkbox" name="interest" value="car"> 차박</label>
										      <label class="x-large side"><input type="checkbox" name="interest" value="campingCar">캠핑카</label>
										      <label class="x-large side"><input type="checkbox" name="interest" value="drive">드라이브</label>
										      
										      <label class="x-large " style="margin-left:2.3%" ><input type="checkbox" name="interest" value="solo">여행</label>
											  <label class="x-large second"  ><input type="checkbox" name="interest" value="solo">사진</label>
											  <label class="x-large second" ><input type="checkbox" name="interest" value="solo">영상</label>
											  <label class="x-large second" style="margin-left:3.7%"><input type="checkbox" name="interest" value="solo">친구구함</label>
  									    	 <label class="x-large side" style="margin-left:4%"><input type="checkbox" name="interest" value="camping">맛집</label>
										      <label class="x-large side"style="margin-left:2.5%"><input type="checkbox" name="interest" value="mountain">반려동물과함께</label>		
  												<!-- 끝 -->
											</div>			
			                        </div>
			                        <div class="form-row">
			                            <div class="name">프로필 사진 등록</div>
			                            <div class="value">
			                                <div class="input-group js-input-file">
			                                    <input class="input-file" type="file" name="file" id="file"  accept="image/*" onchange="setThumbnail(event, this); " required>

			                                </div>
			                                <div class="label--desc">얼굴이 선명하게 나온 사진을 올려주세요. 파일의 최대 크기는 15mb입니다.</div>
			                            	<div id="image_container" ></div>
			                            	
			                            </div>
			                        </div>
			                </div>
			                <div class="card-footer">
			                    <button class="btn btn--radius-2 btn--blue-2" type="submit" style="margin-left: 43%">등록하기</button>
			                </div>
			            </div>
			            </form>
			            <!-- 폼 마지막 -->
			            
			        </div>
			    </div>
		</div>
</section>	
</body>
</html>