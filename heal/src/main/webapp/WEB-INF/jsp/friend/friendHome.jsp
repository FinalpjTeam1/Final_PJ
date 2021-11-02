<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ģ�� ã�� | Hi-Camper</title>
	<!-- Bootstrap core JS-->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
      <!-- �������� �ּ�ȭ�� �ֽ� CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- �������� �ּ�ȭ�� �ֽ� �ڹٽ�ũ��Ʈ -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

		 <!-- Google Font -->
	 <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
	

	<!-- CSS -->
	<link type="text/css" rel="stylesheet" href="/css/juri.css">
	
		<style>
		h1, h2, h3, h4, h5, h6, p, label{
	     font-family: 'Nanum Gothic', sans-serif; !important;
	    }
	    </style>
	    
		<script>
	
		function profileDelete() {
		var cancel = confirm("[�ȳ�] �������� �����Ͻðڽ��ϱ�?");
		
		if(cancel == true){		
			alert('[�ȳ�] ���� �Ǿ����ϴ�.');
	    	$('#deleteForm').submit();
		}else{
			return false;
		}
	}

	</script>

</head>
<body>

	<section>
		<div class="container-fluid " style=" margin-top: 20%; height:50%; width:80%; border : 1px solid black;">
			
			<!-- �� ������ �κ� -->
			<div class = "row">
					<div class="col-md-3 center">
						<div id="card">
							 <!-- �������� ������� �� -->
							  <c:if test="${empty profile}">
								  <img src="/img/none.png" alt="user" style="width:100%">
								  <br>
								  <h3 class="center"><b>�̸�����</b></h3>
								  <p id="profile_title"></p>
								  <p></p>
								  <span class="tag"></span>
								  <p><a href="myProfile" id="profile_button">������ �߰�</a></p>
							</c:if>
							<c:if test="${!empty profile}">
							  <img src="/profile/${profile.fileName} " alt="user" style="width:100%">
								  <br>
								  <h3 class="center"><b>${profile.nick} </b></h3>
								  <p id="profile_title">${profile.age}</p>
								  <p>${profile.intro}</p>
								  <span class="tag">${profile.interest} </span>
								  <p><a href="/friend/editProfile" id="profile_button">������ ����</a></p>
							   	<button type="button" class="btn btn-danger btn-block" onclick="profileDelete();">�����ϱ�</button>
							</c:if>
						</div>
  				</div>
  				 <form action="/deleteProfile" method="post" name="deleteForm" id="deleteForm">
  					<input type="hidden" id='id' name="id" value="${profile.id} ">  					
  				</form>
  			<!-- �� ������ �κ� ��  -->	
  			
  				<div class="col-md-4 " style="height: 200px">
  				<h3 class="text-center"><b>ģ�� ���</b><hr></h3>
		  				
		  				<c:if test="${empty friendProfile }">
		  				<h5 class="center" style="margin-top:20%;">ģ�� �߰��� ������ �����ϴ�.</h5>
		  				</c:if>
		  				
		  				<c:if test="${!empty friendProfile}">
				   			 <table class="table table-striped custab">
								    <thead>
									        <tr>
									            <th>�г���</th>
									            <th>���ɴ�</th>
									            <th class="text-center">����</th>
									        </tr>
								    </thead>
								<c:forEach var="list" items="${friendProfile}" varStatus="status"> 
								            <tr>
									                <td>${list.nick }</td>
									                <td>${list.age }</td>
									                <td class="text-center">
										                <a class='btn btn-info btn-xs' href="/friend/friendDetail?id=${list.id }"><span class="glyphicon glyphicon-zoom-in"></span>�ڼ���</a> 
										                <a href="/friend/friendDelete?id=${list.id }" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span>����</a>
									                </td>
								            </tr>
								   </c:forEach>
								   		<tr>
									                <td colspan="3" class="text-center">
									                <a href="/friend/friendList" type="button"  class="btn" id="profile_button"> ģ�� ��ü ����</a>      	
									                </td>
									  </tr>
							 </table>
						</c:if>	 
  				</div>
  					<div class="col-md-5 center" >
	  					<h3 class="center"> <b>* ģ�� ã�� �ȳ� ���� *</b><hr></h3>
	  					<h5 class="center">1. Ÿ���� ������ �������� ������. </h5>
	  					<h5 class="center">2. �弳 / �ο� / ������ �����ϰ� ����� ����  ������ <br> ���� �Ű� ������ �ش� ���񽺸� �̿��� �� �����ϴ�.</h5>
	  					<h5 class="center">3. ���� ����, ���Ȱ�� ����ġ�� ���ų� �����ϴ� ���� �������ּ���.</h5>
  					</div>
  				
  				<div class="col-md-5 center" style=" cursor: pointer; border:1px solid red;" onclick="location.href='/friend/findFriend'">
    				<div class="page">
					  <button class="fun-btn">ģ�� ã��</button>
					</div>				
  				</div>
  				
  				<div class="col-md-10 center" style="background-color: gray; width: 800px; height: 300px;" >
  					<div > 
  					<h2 class="center">ä�ù� �κ�</h2>   					
  					</div>
  				</div>
			</div>
		</div>
		
				<div style="margin-top: 20%">
			</div>
	</section>
</body>
</html>