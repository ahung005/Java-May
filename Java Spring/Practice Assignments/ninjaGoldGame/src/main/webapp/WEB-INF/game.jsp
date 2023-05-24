<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Ninja Gold Game</title>
	
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/style.css"/>
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body class="p-3">
	<div>
		<p>Your Gold: <c:out value="${ gold }"/></p>
	</div>
	<div class="d-flex justify-content-evenly">
		<div class="border box py-4">
			<h3 class="text-center">Farm</h3>
			<p class="text-center">(earns 10-20 gold)</p>
			<form action="/" method="POST" class="text-center">
				<button class="btn btn-primary" name="farm">Find Gold!</button>
			</form>
		</div>
		<div class="border box py-4">
			<h3 class="text-center">Cave</h3>
			<p class="text-center">(earns 5-10 gold)</p>
			<form action="/" method="POST" class="text-center">
				<button class="btn btn-primary" name="cave">Find Gold!</button>
			</form>
		</div>
		<div class="border box py-4">
			<h3 class="text-center">House</h3>
			<p class="text-center">(earns 2-5 gold)</p>
			<form action="/" method="POST" class="text-center">
				<button class="btn btn-primary" name="house">Find Gold!</button>
			</form>
		</div>
		<div class="border box py-4">
			<h3 class="text-center">Quest</h3>
			<p class="text-center">(earns/takes 0-50 gold)</p>
			<form action="/" method="POST" class="text-center">
				<button class="btn btn-primary" name="quest">Find Gold!</button>
			</form>
		</div>
	</div>
	<div>
		<p>Activities:</p>
		<iframe src="/activities" class="border w-100 px-2"></iframe>
	</div>
</body>
</html>