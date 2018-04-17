<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>Users</title>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    	<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
	</head>
	<body>
		<h1>This is Users page.</h1>
		<table id="users-table" class="table sortable">
			<thead>
				<tr>
					<th class="col-sm-1"></th>
					<th class="col-sm-2">Name</th>
					<th class="col-sm-2">VIP No.</th>
					<th class="col-sm-2">Customer No.</th>
					<th class="col-sm-2">Profile</th>
					<th class="col-sm-2">Role</th>
					<th class="col-sm-1"></th>
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
		 			</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</body>
</html>