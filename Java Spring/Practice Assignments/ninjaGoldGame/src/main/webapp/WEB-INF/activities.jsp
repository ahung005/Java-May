<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Activities</title>
	
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/style.css"/>
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<c:forEach var="activity" items="${ activities }">
		<c:if test="${ activity.contains('earned') }">
			<p style="color: green;"><c:out value="${ activity }"/></p>
		</c:if>
		<c:if test="${ activity.contains('lost') }">
			<p style="color: red;"><c:out value="${ activity }"/></p>
		</c:if>
	</c:forEach>
</body>
</html>