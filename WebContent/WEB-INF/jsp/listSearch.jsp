<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
<title>用AJAX以JSON方式获取数据</title> 
<script type="text/javascript" src="jquery.min.js"></script> 
</head> 
<body> 
<div style="width: 500px; margin: 0px auto; text-align: center">
	<table align='center' border='1' cellspacing='0'>
		<tr>
			<td>id</td>
			<td>name</td>
			<td>编辑</td>
			<td>删除</td>
		</tr>
		<c:forEach items="${ss}" var="s" varStatus="st">
			<tr>
				<td>${s.id}</td>
				<td>${s.name}</td>
				<td><a href="editCategory?id=${s.id}">编辑</a></td>
				<td><a href="deleteCategory?id=${s.id}">删除</a></td>
			</tr>
		</c:forEach>
	</table>
	<div style="text-align: center">
		<a href="?start=0">首 页</a> <a
			<c:if test="${page.start-page.count>=0}"> href="?start=${page.start-page.count}"</c:if>>上一页</a>
		<a
			<c:if test="${page.start-page.count!=page.last-5}"> href="?start=${page.start+page.count}"</c:if>>下一页</a>
		<a href="?start=${page.last}">末 页</a>
	</div>


	<div style="text-align: center; margin-top: 40px">

		<form method="post" action="searchlistCategory">
			名称： <input name="string" id="stringname" value="" type="text"> <br>
			<br> <input type="button" value="搜索" id="sender">
		</form>

	</div>

</div>
</body> 
    
</body>
</html>