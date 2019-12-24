<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function queryItems() {
		document.itemsForm.action = "${pageContext.request.contextPath}/item/queryItems.action";
		document.itemsForm.method = post;
		document.itemsForm.submit();
	}
	function deleteItems() {
		document.itemsForm.action = "${pageContext.request.contextPath}/item/deleteItems.action";
		document.itemsForm.method = post;
		document.itemsForm.submit();
	}
	function updateItemsQuery() {
		document.itemsForm.action = "${pageContext.request.contextPath}/item/updateItemsQuery.action";
		document.itemsForm.method = post;
		document.itemsForm.submit();
	}
</script>

<body>
	<form action="" name="itemsForm">
		<table border="1" style="border-collapse: collapse;">
		<tr>
			<td><c:if test="${userName!=null&&userName!=''}">欢迎回来，${userName}</c:if><c:if test="${userName==null||userName==''}">当前未<a href="${pageContext.request.contextPath}/login.jsp">登录</a></c:if></td>
			<c:if test="${userName!=null&&userName!=''}"><td><a href="${pageContext.request.contextPath}/user/logout.action">注销</a></td></c:if>
		</tr>
			<tr>
				<td colspan="7">商品列表</td>
			</tr>
			<tr>
				<td colspan="7">
					商品名称: 
					<input type="text" name="itemCustom.itemName" />
					<select>
						<c:forEach items="${itemTypes}" var="type">
							<option value="${type.key}">${type.value}</option>
						</c:forEach>
					</select>
					<button onclick="queryItems()">查询</button>
					<button onclick="updateItemsQuery()">批量修改</button>
					<button onclick="deleteItems()">删除所选项</button>
				</td>
			</tr>
			<tr>
				<td>选择</td>
				<td>商品ID</td>
				<td>商品名称</td>
				<td>价格</td>
				<td>备注</td>
				<td>生产日期</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${itemList}" var="item">
				<tr>
					<td><input type="checkbox" name="checked"
						value="${item.itemId}" /></td>
					<td>${item.itemId}</td>
					<td>${item.itemName}</td>
					<td>${item.price}¥</td>
					<td>${item.detail}</td>
					<td><fmt:formatDate value="${item.productDate}"
							pattern="yyyy-MM-dd HH:mm:ss" /></td>
					<td><a
						href="${pageContext.request.contextPath}/item/getItemById.action?id=${item.itemId}">修改</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>

</html>