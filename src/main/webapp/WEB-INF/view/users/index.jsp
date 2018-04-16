<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>Users</title>
	</head>
	<body>
		<h1>This is Users page.</h1>
		<table>
			<c:forEach items="${userList}" var="user">
				<tr>
					<td><a href="<c:url value="/users/${user.id}"/> ">${user.id}</a></td>
		 			<td>${user.name}</td>
		 			<td>${user.email}</td>
	 			</tr>
			</c:forEach>
		</table>
		
	</body>
</html>