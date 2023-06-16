<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Registration and Login</title>
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/style.css"/>
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body class="p-3">
	<div class="container">
		<h1 style="color: purple;">Book Club</h1>
	
		<div class="d-flex">
			<div class="container">
				<h2>Register</h2>
				<form:form action="/register" modelAttribute="newUser" class="form">
				
					<form:errors path="userName" class="text-danger"/>
					<div class="form-row">
						<form:label for="userName" path="userName">User Name:</form:label>
						<form:input type="text" path="userName" class="form-control"/>
					</div>
					
					<form:errors path="email" class="text-danger"/>
					<div class="form-row">						
						<form:label for="email" path="email">Email:</form:label>
						<form:input type="text" path="email" class="form-control"/>
					</div>
					
					<form:errors path="password" class="text-danger"/>
					<div class="form-row">
						<form:label for="password" path="password">Password:</form:label>
						<form:input type="password" path="password" class="form-control"/>
					</div>
					
					<form:errors path="confirm" class="text-danger"/>
					<div class="form-row">
						<form:label for="" path="confirm">Confirm:</form:label>
						<form:input type="password" path="confirm" class="form-control"/>
					</div>
					
					<input type="submit" value="Submit" class="btn btn-primary float-end my-2"/>
					
					
				</form:form>
			</div>
			
			<div class="container">
				<h2>Log In</h2>
				<form:form action="/login" modelAttribute="newLogin" class="form">
					
					<form:errors path="email" class="text-danger"/>
					<div class="form-row">
						<form:label for="email" path="email">Email:</form:label>
						<form:input type="text" path="email" class="form-control"/>
					</div>
					
					<form:errors path="password" class="text-danger"/>
					<div>
						<form:label for="password" path="password">Password:</form:label>
						<form:input type="password" path="password" class="form-control"/>
					</div>
					
					<input type="submit" value="Submit" class="btn btn-primary float-end my-2"/>
				
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>