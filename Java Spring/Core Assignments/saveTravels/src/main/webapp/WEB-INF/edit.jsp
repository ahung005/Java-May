<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
	<title>Edit Expense</title>
	
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/style.css"/>
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body class="p-5">
	<h1>Edit Expense</h1>
	<div class="text-end">
		<a href="/expenses">Go back</a>
	</div>
	<br>
		<div>
			<form:form action="/expenses/edit/${expense.id}" method="POST" modelAttribute="expense">
				<div class="py-2">
					<div class="d-flex justify-content-between">
						<form:label path="name" >Expense Name: </form:label><br />
						<form:input class="w-75" path="name"/>
					</div>
					<form:errors path="name" class="text-danger"/>
				</div>
				<div class="py-2">
					<div class="d-flex justify-content-between">
						<form:label path="vendor">Vendor: </form:label><br />
						<form:input class="w-75" path="vendor"/>
					</div>
					<form:errors path="vendor" class="text-danger"/>
				</div>
				<div class="py-2">
					<div class="d-flex justify-content-between">
						<form:label path="amount">Amount: </form:label><br />
						<form:input class="w-75" type="number" step="0.01" min="0" path="amount"/>
					</div>
					<form:errors path="amount" class="text-danger"/>
				</div>
				<div class="py-2">
					<div class="d-flex justify-content-between">
						<form:label path="description">Description: </form:label><br />
						<form:textarea class="w-75" rows="3" path="description"/>
					</div>
					<form:errors path="description" class="text-danger"/>
				</div>
				<div class="py-2">
					<input type="submit" value="Submit"/>
				</div>
			</form:form>
		</div>
</body>
</html>