<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
	<head>
		<title>User</title>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    	<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
	</head>
	<body>
	<body>
		<div class="col-sm-8 col-sm-offset-2">
		<form method="POST">
		
		<div class="form-group">
	    <label class="col-sm-4 control-label text-danger">Name</label>
	    <div class="col-sm-6">
	      <input class="form-control" type="text" name="name" value="${user.name}" />
	      <span class="help-block">This will show as your name.</span>
	    </div>
	  </div>
	  <div class="form-group">
	  	<label class="col-sm-4 control-label text-danger">Phone number</label>
	    <div class="col-sm-6">
	      <input class="form-control" type="text" name="name" value="${user.phone}" />
	    </div>
	  </div>
	  <div class="form-group">
	  	<label class="col-sm-4 control-label text-danger">VIP No.</label>
	    <div class="col-sm-6">
	      <input class="form-control" type="text" name="name" value="${user.vipNumber}" />
	    </div>
	  </div>
	  <div class="form-group">
	  	<label class="col-sm-4 control-label">Customer No.</label>
	    <div class="col-sm-6">
	      <input class="form-control" type="text" name="name" value="${user.customerNumber}" />
	    </div>
	  </div>
	  
	  <div class="form-group">
	  	<label class="col-sm-4 control-label">Email</label>
	    <div class="col-sm-6">
	      <input class="form-control" type="text" name="name" value="${user.email}" />
	    </div>
	  </div>
	  
	  
	  <div class="form-group">
	  	<label class="col-sm-4 control-label">Company</label>
	    <div class="col-sm-6">
	      <input class="form-control" type="text" name="name" value="${user.company}" />
	    </div>
	  </div>
	  
	  <div class="form-group">
	  	<label class="col-sm-4 control-label">Address</label>
	    <div class="col-sm-6">
	      <input class="form-control" type="text" name="name" value="${user.address}" />
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <div class="col-sm-offset-4 col-sm-8">
	      <input class="btn btn-primary" type="submit" value="Update" />
	    </div>
	  </div>
		</form>
		</div>
	</body>
</html>