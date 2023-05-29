<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
	<title>Index</title>
	
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/style.css"/>
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body class="p-5">
	<h1>Save Travels</h1>
		<table class="table table-striped table-bordered">
		    <thead>
		        <tr>
		            <th class="text-center">Expense</th>
		            <th class="text-center">Vendor</th>
		            <th class="text-center">Amount</th>
		            <th class="text-center">Actions</th>
		        </tr>
		    </thead>
		    <tbody>
				<c:forEach var="expense" items="${expenses}">
					<tr>
						<td class="text-center"><a href="/expenses/<c:out value="${expense.id}"></c:out>"><c:out value="${expense.name}"></c:out></a></td>
						<td class="text-center"><c:out value="${expense.vendor}"></c:out></td>
						<td class="text-center">$<fmt:formatNumber type="number" minFractionDigits="2" value="${expense.amount}"/></td>
						<td class="text-center"><a href="/expenses/edit/${expense.id}">edit</a> <a href="/expenses/delete/${expense.id}">delete</a></td>
					</tr>	
				</c:forEach>
		    </tbody>
		</table>
	<br>
	<div>
		<h1>Add an expense:</h1>
		<form:form action="/expenses" method="POST" modelAttribute="expense">
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