<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Burger Tracker 1</title>
	
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/style.css"/>
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body class="text-center">
	<h1>Burger Tracker</h1>
	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th>Burger Name</th>
				<th>Restaurant Name</th>
				<th>Rating (out of 5)</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>		
			<c:forEach var="burger" items="${burgers}">
				<tr>
					<td>
						<c:out value="${burger.name}"/>
					</td>
					<td>
						<c:out value="${burger.restaurant}"/>
					</td>
					<td>						
						<c:out value="${burger.rating}"/>
					</td>
					<td>
						<a href="/edit/${burger.id}">edit</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<h2>Add new burger</h2>
	<form:form action="/addBurger" method="POST" modelAttribute="burger">
		<div>
			<form:label path="name">Burger Name: </form:label><br>
			<form:errors path="name" class="text-danger" />
			<form:input path="name" style="width: 250px;" />
		</div>
		<div>
			<form:label path="restaurant">Restaurant Name: </form:label><br>
			<form:errors path="restaurant" class="text-danger" />
			<form:input path="restaurant" style="width: 250px;" />
		</div>
		<div>
			<form:label path="rating">Rating: </form:label><br>
			<form:errors path="rating" class="text-danger" />
			<form:input path="rating" style="width: 250px;" />
		</div>
		<div>
			<form:label path="notes">Notes: </form:label><br>
			<form:errors path="notes" class="text-danger" />
			<form:textarea path="notes" rows="3" style="width: 250px;" />
		</div>
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>