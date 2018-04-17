<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<%@ page isELIgnored="false" %>
		<title>Users</title>
	</head>
	<body>
		<h1>This is Users page.</h1>
		<table>
			<thead>
				<tr>
					<th></th>
					<th>Name</th>
					<th>VIP No.</th>
					<th>Customer No.</th>
					<th>Profile</th>
					<th>Role</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${userList}" var="user">
					<tr>
						<td><a href="<c:url value="/users/${user.id}"/> ">${user.id}</a></td>
			 			<td>${user.name}</td>
			 			<td>${user.vipNumber}</td>
			 			<td>${user.customerNumber}</td>
			 			<td></td>
			 			<td>${user.role}</td>
			 			<td><a href="<c:url value="/users/${user.id}/edit"/>">Edit</a></td>
			 			<td><a href="#">Delete</a></td>
		 			</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</body>
</html>