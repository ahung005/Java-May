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
<body>
	<div class="container">
		<div class="text-center">
			<h1 class="text-primary">Project Manager</h1>
			<h6>A place for teams to manage projects</h6>
		</div>
	
		<div class="d-flex">
			<div class="container">
				<h2>Register</h2>
				<form:form action="/register" modelAttribute="newUser" class="form">
				
					<form:errors path="firstName" class="text-danger"/>
					<div class="form-row">
						<form:label for="firstName" path="firstName">First Name:</form:label>
						<form:input type="text" path="firstName" class="form-control"/>
					</div>
					
					<form:errors path="lastName" class="text-danger"/>
					<div class="form-row">
						<form:label for="lastName" path="lastName">Last Name:</form:label>
						<form:input type="text" path="lastName" class="form-control"/>
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
					
					<input type="submit" value="Submit" class="btn btn-primary float-end my-4"/>
					
					
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
					
					<input type="submit" value="Submit" class="btn btn-primary float-end my-4"/>
				
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>