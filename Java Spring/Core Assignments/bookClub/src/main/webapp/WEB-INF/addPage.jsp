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
	<title>Add Page</title>
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/style.css"/>
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body class="py-3">
	<div class="container">

		<h1>Add to Your Book Shelf</h1>
		
		<div class="text-end">
			<a href="/home">back to shelves</a>
		</div>

		<div class="container">
			<form:form action="/books" modelAttribute="book" class="form" method="post">
				<table class="w-100">
					<tr>
						<td><form:label for="title" path="title" class="">Title:</form:label></td>
						<td><form:errors path="title" class="text-danger"/><form:input type="text" path="title" class="form-control"/></td>
					</tr>
					<tr>
						<td><form:label for="author" path="author">Author:</form:label></td>
						<td><form:errors path="author" class="text-danger"/><form:input type="text" path="author" class="form-control"/></td>
					</tr>
					<tr>
						<td><form:label for="thoughts" path="thoughts">Thoughts:</form:label></td>
						<td><form:errors path="thoughts" class="text-danger"/><form:textarea path="thoughts" class="form-control"/></td>
					</tr>
				</table>
					
				<div class="form-row">
					<form:errors path="user" class="error"/>
					<form:input type="hidden" path="user" value="${user.id}" class="form-control"/>
				</div>
				<input type="submit" value="Submit" class="btn btn-primary float-end my-2"/>
			
			</form:form>
		</div>
	</div>
</body>
</html>