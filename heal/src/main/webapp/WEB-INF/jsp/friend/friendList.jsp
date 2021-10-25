<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	
	<!-- CSS -->
	<link type="text/css" rel="stylesheet" href="../css/juri.css">
	<style type="text/css">
		
	h5 {
	    font-size: 1.28571429em;
	    font-weight: 700;
	    line-height: 1.2857em;
	    margin: 0;
	}
	
	.card {
	    font-size: 1em;
	    overflow: hidden;
	    padding: 0;
	    border: none;
	    border-radius: .28571429rem;
	    box-shadow: 0 1px 3px 0 #d4d4d5, 0 0 0 1px #d4d4d5;
	}
	
	.card-block {
	    font-size: 1em;
	    position: relative;
	    margin: 0;
	    padding: 1em;
	    border: none;
	    border-top: 1px solid rgba(34, 36, 38, .1);
	    box-shadow: none;
	}
	
	.card-img-top {
	    display: block;
	    width: 100%;
	    height: auto;
	}
	
	.card-title {
	    font-size: 1.28571429em;
	    font-weight: 700;
	    line-height: 1.2857em;
	}
	
	.card-text {
	    clear: both;
	    margin-top: .5em;
	    color: rgba(0, 0, 0, .68);
	}
	
	.card-footer {
	    font-size: 1em;
	    position: static;
	    top: 0;
	    left: 0;
	    max-width: 100%;
	    padding: .75em 1em;
	    color: rgba(0, 0, 0, .4);
	    border-top: 1px solid rgba(0, 0, 0, .05) !important;
	    background: #fff;
	}
	
	.card-inverse .btn {
	    border: 1px solid rgba(0, 0, 0, .05);
	}
	
	.profile {
	    position: absolute;
	    top: -12px;
	    display: inline-block;
	    overflow: hidden;
	    box-sizing: border-box;
	    width: 25px;
	    height: 25px;
	    margin: 0;
	    border: 1px solid #fff;
	    border-radius: 50%;
	}
	
	.profile-avatar {
	    display: block;
	    width: 100%;
	    height: 100%;
	    border-radius: 50%;
	}
	
	.profile-inline {
	    position: relative;
	    top: 0;
	    display: inline-block;
	}
	
	.profile-inline ~ .card-title {
	    display: inline-block;
	    margin-left: 4px;
	    vertical-align: top;
	}
	
	.text-bold {
	    font-weight: 700;
	}
	
	.meta {
	    font-size: 1em;
	    color: rgba(0, 0, 0, .4);
	}
	
	.meta a {
	    text-decoration: none;
	    color: rgba(0, 0, 0, .4);
	}
	
	.meta a:hover {
	    color: rgba(0, 0, 0, .87);
	}
	
	/* Tabs Card */
	.tab-card {
	  border:1px solid #eee;
	}
	
	.tab-card-header {
	  background:none;
	}
	/* Default mode */
	.tab-card-header > .nav-tabs {
	  border: none;
	  margin: 0px;
	}
	.tab-card-header > .nav-tabs > li {
	  margin-right: 2px;
	}
	.tab-card-header > .nav-tabs > li > a {
	  border: 0;
	  border-bottom:2px solid transparent;
	  margin-right: 0;
	  color: #737373;
	  padding: 2px 15px;
	}
	
	.tab-card-header > .nav-tabs > li > a.show {
	    border-bottom:2px solid #007bff;
	    color: #007bff;
	}
	.tab-card-header > .nav-tabs > li > a:hover {
	    color: #007bff;
	}
	
	.tab-card-header > .tab-content {
	  padding-bottom: 0;
	}
	</style>
</head>
<body>
<section>
		<div class="container-fluid " style=" margin-top: 20%; height:50%; width:80%; border : 1px solid black;">
				<div class="row">
					<!-- 카드 콘텐츠 -->
					<div class="col-sm-6 col-md-4 col-lg-3 mt-4">
			                <div class="card">
			                    <img class="card-img-top" src="https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et.jpg">
			                    <div class="card-block">
			                        <figure class="profile">
			                            <img src="https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et.jpg" class="profile-avatar" alt="">
			                        </figure>
			                        <h4 class="card-title mt-3">아이유</h4>
			                       <span style="float:right;"><button  type="button" class="btn btn-danger btn-circle "><i class="glyphicon glyphicon-heart"></i></button></span> 
			                        <div class="meta">
			                            <a>연령대:20대</a>
			                        </div>
			                        <div class="card-text">
										안녕하세용 
			                        </div>
			                    </div>
			                     <div class="card-footer">
			                        <small>Last updated 3 mins ago</small>
			                        <button class="btn btn-secondary float-right btn-sm">show</button>
			                        <a class="btn btn-secondary float-right btn-sm" href="friendDetail" >자세히</a>
			                    </div>
			                </div>
			            </div>
			            
			            <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
			                <div class="card">
			                    <img class="card-img-top" src="https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et.jpg">
			                    <div class="card-block">
			                        <figure class="profile">
			                            <img src="https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et.jpg" class="profile-avatar" alt="">
			                        </figure>
			                        <h4 class="card-title mt-3">아이유</h4>
			                        <div class="meta">
			                            <a>연령대:20대</a>
			                        </div>
			                        <div class="card-text">
										안녕하세용 
			                        </div>
			                    </div>
			                     <div class="card-footer">
			                        <small>Last updated 3 mins ago</small>
			                        <button class="btn btn-secondary float-right btn-sm">show</button>
			                    </div>
			                </div>
			            </div>
			            
			            <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
			                <div class="card">
			                    <img class="card-img-top" src="https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et.jpg">
			                    <div class="card-block">
			                        <figure class="profile">
			                            <img src="https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et.jpg" class="profile-avatar" alt="">
			                        </figure>
			                        <h4 class="card-title mt-3">아이유</h4>
			                        <div class="meta">
			                            <a>연령대:20대</a>
			                        </div>
			                        <div class="card-text">
										안녕하세용 
			                        </div>
			                    </div>
			                     <div class="card-footer">
			                        <small>Last updated 3 mins ago</small>
			                        <button class="btn btn-secondary float-right btn-sm">show</button>
			                    </div>
			                </div>
			            </div>
			            
			            <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
			                <div class="card">
			                    <img class="card-img-top" src="https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et.jpg">
			                    <div class="card-block">
			                        <figure class="profile">
			                            <img src="https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et.jpg" class="profile-avatar" alt="">
			                        </figure>
			                        <h4 class="card-title mt-3">아이유</h4>
			                        <div class="meta">
			                            <a>연령대:20대</a>
			                        </div>
			                        <div class="card-text">
										안녕하세용 
			                        </div>
			                    </div>
			                     <div class="card-footer">
			                        <small>Last updated 3 mins ago</small>
			                        <button class="btn btn-secondary float-right btn-sm">show</button>
			                    </div>
			                </div>
			            </div>
			            <!-- 카드 콘텐츠 끝 -->
				</div>
				
				<!-- 페이징 -->
				<div class="pagination" style="margin-left: 35%">
					  <a href="#">&laquo;</a>
					  <a href="#">1</a>
					  <a href="#" class="active">2</a>
					  <a href="#">3</a>
					  <a href="#">4</a>
					  <a href="#">5</a>
					  <a href="#">6</a>
					  <a href="#">&raquo;</a>
					</div>
			</div>
	</section>		
			
</body>
</html>