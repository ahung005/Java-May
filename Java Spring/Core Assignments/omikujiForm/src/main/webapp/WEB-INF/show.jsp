<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<title>Omikuji Show</title>
	
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/style.css"/>
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<h1 class="my-2 text-center">Here's your Omikuji!</h1>
	<div class="w-50 p-4 my-2 bg-info container border border-5 border-dark">
		<h3>In <c:out value="${number}"/> years, you will live in <c:out value="${city}"/> with <c:out value="${person}"/> 
			as your roommate, <c:out value="${hobby}"/> for a living. The next time you see a <c:out value="${livingThing}"/>, 
			you will have good luck. Also, <c:out value="${nice}"/>
		</h3>
	</div>
	<div class="my-5 text-center">
		<a href="/omikuji">Go Back</a>
	</div>
</body>
</html>