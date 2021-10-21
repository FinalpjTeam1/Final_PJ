<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>친구 찾기 | Hi-Camper</title>
	<!-- Bootstrap core JS-->
      <!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">	
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	
	<!-- CSS -->
	<link type="text/css" rel="stylesheet" href="../assets/css/juri.css">
	
	<script type="text/javascript">
	$(document).ready(function() {
		  $('.list-group-item').click(function(e) {
			    e.preventDefault();
			    $('.list-group-item').removeClass('active');
			    $(this).addClass('active');
			  });
		});
	</script>
</head>
<body>

	<section>
		<div class="container-fluid " style=" margin-top: 20%; padding-left: 10%; border : 1px solid black;">
			
			<div class = "row">
				<div class="col-md-3 center">
					<div id="card">
						  <img src="https://raw.githubusercontent.com/talha08/talha08.github.io/master/images/photo.jpg" alt="John" style="width:100%">
						  <br>
						  <h3><b>MD. ABU TALHA</b></h3>
						  <p id="profile_title">Full Stack Web Developer</p>
						  <p>InfancyIT</p>
							  <div style="margin: 24px 0;">
							    <a href="https://www.linkedin.com/in/md-abu-talha/" target="_blank" id="profile_a"><i class="fa fa-linkedin"></i></a>
							    <a href="https://www.facebook.com/talha.sust.cse" target="_blank"><i class="fa fa-facebook"></i></a>
							    <a href="https://github.com/talha08" target="_blank"><i class="fa fa-github"></i></a>
							    <a href="https://medium.com/@talhaqc" target="_blank"><i class="fa fa-medium"></i></a>
							  </div>
						  <p><a href="talha08.github.io" id="profile_button">Profile</a></p>
					</div>			
  				</div>
			</div>
			
		</div>
	</section>
</body>
</html>