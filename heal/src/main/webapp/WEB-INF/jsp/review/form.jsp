<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Travel HTML-5 Template </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.png">
    <!-- Place favicon.ico in the root directory -->
    
  <!-- CSS here -->
  <jsp:include page="../inc/css.jsp" />

  <style>
.star-rating {
  display:flex;
  flex-direction: row-reverse;
  font-size:1.5em;
  justify-content:space-around;
  padding:0 .2em;
  text-align:center;
  width:5em;
}

.star-rating input {
  display:none;
}

.star-rating label {
  color:#ccc;
  cursor:pointer;
}

.star-rating :checked ~ label {
  color:#f90;
}

.star-rating label:hover,
.star-rating label:hover ~ label {
  color:#fc0;
}
  	</style>
	﻿<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

</head>
    <body>
    <header>
 	<jsp:include page="../inc/header.jsp" />
    </header>
        
        <!-- 등록 여부 알림창 -->
        <script type="text/javascript">
        function finalCheck() {
        	alert("입력하신 정보로 글을 작성하시겠습니까?");
        }
        </script>
        
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="justify-content-center">
     <form action="/review/formDone" method="post">
  	<fieldset>
	<div class="justify-content-center text-center">
	<h2>
	<legend>후기 글을 작성해주세요!</legend>
    </h2>
	<br>
	<br>
	</div>
	
	<!-- 제목 -->
    <div class="form-group">
      <label for="exampleInputTitle" class="form-label mt-4">제목</label>
      <input type="text" class="form-control" id="re_title" name="re_title" aria-describedby="title" placeholder="제목은 2글자 이상, 20글자 이하로 작성해주세요."
      minlength="2" maxlength="21" required="required">
    </div>
	
	
	<!--  아이디 -->
	<div class="form-group">
      <label for="exampleInputWriter" class="form-label mt-4">작성자</label>
      <input type="text" class="form-control" id="re_writer" name="re_writer" aria-describedby="writer" value="${dto.id}" readonly required="required">
      <small id="writer" class="form-text text-muted"></small>
    </div>
	
	<!-- 별점 -->
	<label for="exampleInputAdress" class="form-label mt-4">별점</label>
   <div class="star-rating">
  	<input type="radio" id="5-stars" name="re_star" value="5" />
  	<label for="5-stars" class="star">&#9733;</label>
  	<input type="radio" id="4-stars" name="re_star" value="4" />
  	<label for="4-stars" class="star">&#9733;</label>
  	<input type="radio" id="3-stars" name="re_star" value="3" />
  	<label for="3-stars" class="star">&#9733;</label>
  	<input type="radio" id="2-stars" name="re_star" value="2" />
  	<label for="2-stars" class="star">&#9733;</label>
  	<input type="radio" id="1-star" name="re_star" value="1" />
  	<label for="1-star" class="star">&#9733;</label>
	</div>
      </div>

    <br>
    <!-- 사진 -->
    <div class="form-group">
    	<label class="form-label mt-4">사진</label>&nbsp
    	<input multiple="multiple" type="file" id="re_img" name="re_img" value="re_img">
    </div>
    
    <!-- 내용 -->
    <div class="form-group">
      <label for="exampleTextarea" class="form-label mt-4">내용</label>
      <textarea class="form-control" id="re_content" name="re_content" placeholder="솔직한 후기를 작성해주세요. (500자 이내로 작성 가능합니다.)" rows="3" maxlength="501" required="required"></textarea>
	<br>
	<br>
	
	
	<input type="hidden" id="re_like" name="re_like" value="0">
	
	<!-- 등록 / 취소 -->
	<div class="justify-content-center text-center">
    <input type="submit" value="등록" class="button boxed-btn" onclick="finalCheck()">
	<a href="list"><input type="button" value="취소" class="button boxed-btn"></a>
	</div>
 	 </fieldset>
	</form>
     </div>
      </div>
			<br>
			<br>	
        </section>
        
<!-- footer & js -->
<jsp:include page="../inc/footer.jsp" />
<jsp:include page="../inc/js.jsp" />

    </body>
</html>
