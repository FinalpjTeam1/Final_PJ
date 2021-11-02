<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	 	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
     <!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	<!-- CSS -->
	<link type="text/css" rel="stylesheet" href="../css/juri.css">
	
			 <!-- Google Font -->
	 <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
	
	
	<style>
	
			h1, h2, h3, h4, h5, h6, p, label{
	     font-family: 'Nanum Gothic', sans-serif; !important;
	    }
	    
		.portfolio{
		padding:6%;
		text-align:center;
	}
	.heading{
		background: #fff;
		padding: 1%;
		text-align: left;
		box-shadow: 0px 0px 4px 0px #545b62;
	}
	.heading img{
		width: 10%;
	}
	.bio-info{
		padding: 5%;
		background:#fff;
		box-shadow: 0px 0px 4px 0px #b0b3b7;
	}
	.name{
		font-family: 'Charmonman', cursive;
		font-weight:600;
	}
	.bio-image{
		text-align:center;
	}
	.bio-image img{
		border-radius:50%;
	}
	.bio-content{
		text-align:left;
	}
	.bio-content p{
		font-weight:600;
		font-size:30px;
	}
	</style>
</head>
<body>

	<section>
		<div class="container-fluid portfolio " style=" margin-top: 20%; height:50%; width:80%; border : 1px solid black;">
				<div class="row">
					<div class="col-md-12">
						<div class="heading">				
							<img src="https://image.ibb.co/cbCMvA/logo.png" />
						</div>
					</div>	
				</div>
				<div class="bio-info">
					<div class="row">
						<div class="col-md-6">
							<div class="row">
								<div class="col-md-12">
									<div class="bio-image" >
										<img src="/profile/${profile.fileName}" style="height: 300px; width: 300px;" alt="image" />
									</div>			
								</div>
							</div>	
						</div>
						<div class="col-md-6">
							<div class="bio-content">
								<h4 style="margin-top: 20%;">${profile.nick } 님 </h4>
								<h4>관심사 : ${profile.interest }</h4>
								<p>${profile.intro }</p>
							</div>
						</div>
				</div>
			</div>
		</div>
	</section>		
</body>
</html>