<%@page import="org.springframework.http.HttpRequest"%>
<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#submitButton {
	width: 100px;
	height: 30px;
}

#img:hover{
cursor: pointer;
}
</style>
</head>
<script type="text/javascript">
	function submit(){
		
	}
	function back(){
		window.location.href="${pageContext.request.contextPath}/item/queryItems.action";
	}
</script>
<script type="text/javascript" src="../js/jquery-2.1.0.js"></script>
<body>
	<c:if test="${Errors!=null}">
		<c:forEach items="${Errors}" var="error">
			${error.defaultMessage}</br>
		</c:forEach>
	</c:if>
	<form action="${pageContext.request.contextPath}/item/updateItem.action" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>商品ID</td>
				<td style="text-align: center">${items.itemId}
				<input type="hidden" name="itemId" value="${items.itemId}" /></td>
			</tr>
			<tr>
				<td>商品名称</td>
				<td><input name="itemName" value="${items.itemName}"
					class="updateInput"></td>
			</tr>
			<tr>
				<td>价格</td>
				<td><input name="price" value="${items.price}"
					class="updateInput"></td>
			</tr>
			<tr>
				<td>备注</td>
				<td><input name="detail" value="${items.detail}"
					class="updateInput"></td>
			</tr>
			<tr>
				<td>生产日期</td>
				<td><input name="productDate"
					value='<fmt:formatDate value="${items.productDate}" pattern="yyyy-MM-dd HH:mm:ss"/>'
					class="updateInput"></td>
			</tr>
			<tr>
				<td>商品图片</td>
				<td>
					
						<img id="img"
							<c:if test="${items.pic!=null}">alt="${items.pic}" src="/pic/${items.pic}"</c:if> 
							<c:if test="${items.pic==null}">src="${pageContext.request.contextPath}/pic/select.jpg"</c:if>
							width="100px"  onclick="$('#imgInput').click()"
							>
						<br/>
					
					<input id="imgInput" name="item_pic" type="file" accept="image/*" hidden="true" onchange="showImg(this)"<c:if test="${items.pic!=null}">value="/pic/${items.pic}"</c:if> />
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center">
					<input type="submit" value="提交" id="submitButton" onclick="submit()">
					<input type="button" value="取消" id="submitButton" onclick="back()">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>