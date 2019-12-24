<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error!</title>
<script type="text/javascript" src="../js/jquery-2.1.0.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		function leave(){
			window.location.href="${pageContext.request.contextPath}/item/queryItems.action";
		}
		setTimeout(leave,3000);
	});
</script>
</head>
<body>
	<h1>Error!</h1>
	<h2>${message}</h2>
	<hr/>
	<h5>即将跳转回<a href="${pageContext.request.contextPath}/item/queryItems.action">主页</a>……</h5>
</body>
</html>