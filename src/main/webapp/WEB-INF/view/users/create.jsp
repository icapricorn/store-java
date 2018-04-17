<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<html>
	<head>
		<%@ page isELIgnored="false" %>
		<title>Create new user</title>
	</head>
	<body>
		<form method="POST">
			Role<input type="text" name="role" /><br/>
			Name<input type="text" name="name" /><br/>
			Phone number<input type="text" name="phone" /><br/>
			VIP No.<input type="text" name="vipNumber" /><br/>
			Customer No.<input  type="text" name="customerNumber" /><br/>
			Email address<input  type="text" name="email" /><br/>
			Company<input  type="text" name="company" /><br/>
			Address<input  type="text" name="address" />
			<input type="submit" value="Save" />
		</form>
	</body>
</html>