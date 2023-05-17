<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Fruity Loops</title>
	
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/style.css"/>
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<h1 class="pink mx-5 my-2">Fruity Store</h1>
	<div class="container pink-border mx-5 my-4">
		<table class="table">
			<tr>
				<th>Name</th>
				<th>Price</th>
			</tr>
			<c:forEach var="fruit" items="${fruits}">
				<tr>
					<c:if test="${fruit.name.startsWith('G') == true}">
						<td style="color: orange;"><c:out value="${fruit.name}"></c:out></td>	
					</c:if>	
					<c:if test="${fruit.name.startsWith('G') == false}">
						<td><c:out value="${fruit.name}"></c:out></td>
					</c:if>
					<td><c:out value="$ ${fruit.price}"></c:out></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>