<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>내 프로필 | Hi-Camper</title>
	<!-- Bootstrap core JS-->
      <!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	
	<!-- CSS -->
	 <link  rel="stylesheet" href="../css/profileForm.css" media="all">
	<link type="text/css" rel="stylesheet" href="../css/juri.css">

	<style>

	</style>

</head>
<body>

<section>
		<div class="container-fluid " style=" margin-top: 20%; height:50%; width:80%; border : 1px solid black;">
		
			<div class="page-wrapper bg-dark p-t-100 p-b-50">
			        <div class="wrapper wrapper--w900">
			            <div class="card card-6">
			                <div class="card-heading">
			                    <h2 class="title" >프로필 작성</h2>
			                </div>
			                <div class="card-body">
			                    <form method="POST">
			                        <div class="form-row">
			                            <div class="name">자기소개</div>
			                            <div class="value">
			                                <input class="input--style-6" type="text" name="full_name">
			                            </div>
			                        </div>
			                        <div class="form-row">
			                            <div class="name">관심사</div>
				                        	 <div class="value" style="width:600px; height: 200px; border:1px solid red; ">
												 <!-- 처음 -->
													<div class="form-check">
														  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
														  <label class="form-check-label" for="flexCheckDefault">
														    Default checkbox
														  </label>
													</div>					
													
													<input type="checkbox" id="hi">
													 <label for ="hi"></label>
													
  												<!-- 끝 -->
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
			                    <button class="btn btn--radius-2 btn--blue-2" type="submit" style="margin-left: 45%">등록하기</button>
			                </div>
			            </div>
			        </div>
			    </div>
		</div>
</section>	
</body>
</html>