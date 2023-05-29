<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
	<title>Show Expense</title>
	
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/style.css"/>
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body class="p-5">
	<h1>Expense Details</h1>
	<div class="text-end">
		<a href="/expenses">Go back</a>
	</div>
	<div class="py-2">
		<h5>Expense Name: <c:out value="${expense.name}"></c:out></h5>
		<h5>Expense Description: <c:out value="${expense.description}"></c:out></h5>
		<h5>Vendor: <c:out value="${expense.vendor}"></c:out></h5>
		<h5>Amount Spent: $<fmt:formatNumber type="number" minFractionDigits="2" value="${expense.amount}"/></h5>
	</div>
</body>
</html>