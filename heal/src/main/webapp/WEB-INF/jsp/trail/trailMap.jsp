<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>등산로 </title>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bd05da10602829a175491ee97133a73a"></script>
	<script type="text/javascript" src="/js/trailMap.js"></script>
</head>
<body>
	<h3>지도 API 연결 테스트 성공!</h3>
	<div id="kakaomap" style="width:60%;height:700px;"></div>    


</body>
</html>