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
	<title>Edit Project</title>
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/style.css"/>
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Edit a Project</h2>
		
		<form:form action="/project/${project.id}" method="PUT" modelAttribute="project" class="w-75">
			<div class="form-row">
				<form:label for="title" path="title">Title:</form:label>				
				<form:input type="text" path="title" class="form-control"/>
				<form:errors path="title" class="text-danger"/>
			</div>
			<div class="form-row">
				<form:label for="description" path="description">Description:</form:label>				
				<form:input type="text" path="description" class="form-control"/>
				<form:errors path="description" class="text-danger"/>
			</div>
			<div class="form-row">
				<form:label for="dueDate" path="dueDate">Due Date:</form:label>				
				<form:input type="date" path="dueDate" class="form-control"/>
				<form:errors path="dueDate" class="text-danger"/>
			</div>
			
			<form:input type="hidden" path="teamLead" value="${project.teamLead}" />
			
			<div>
				<input type="submit" value="Submit"/>
			</div>
		</form:form>
	</div>
</body>
</html>