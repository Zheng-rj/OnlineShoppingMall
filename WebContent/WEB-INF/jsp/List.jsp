<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Items List</title>
</head>
	<table border=1>
		<tr>
			<td>商品名称</td>
			<td>价格</td>
		</tr>
		<c:forEach items="${items }" var="item">
		<tr>
			<td>${item.itemName }</td>
			<td>${item.price }</td>
		</tr>
		</c:forEach>
	</table>
<body>
</body>

</html>