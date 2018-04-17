<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<head>
		<%@ page isELIgnored="false" %>
		<title>User</title>
	</head>
	<body>
	<body>
		<form method="POST">
			Role<input type="text" name="role" value="${user.role}" /><br/>
			Name<input type="text" name="name" value="${user.name}" /><br/>
			Phone number<input type="text" name="phone" value="${user.phone}" /><br/>
			VIP No.<input type="text" name="vipNumber" value="${user.vipNumber}" /><br/>
			Customer No.<input  type="text" name="customerNumber" value="${user.customerNumber}" /><br/>
			Email address<input  type="text" name="email" value="${user.email}" /><br/>
			Company<input  type="text" name="company" value="${user.company}" /><br/>
			Address<input  type="text" name="address" value="${user.address}" />
			<input type="submit" value="Update" />
		</form>
	</body>
</html>