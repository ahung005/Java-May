<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
   
<!DOCTYPE html>
<html>
<head>
	<title>Registration and Login</title>
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/style.css"/>
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body class="px-5 py-3">
	<h1>Welcome!</h1>
	<p>Join our growing community</p>
	
	<form:form action="/register" method="POST" modelAttribute="newUser">
	
		<table class="table table-bordered table-primary">
			<thead>
		    	<tr>
		            <td colspan="2" class="text-center">Register</td>
		        </tr>
		    </thead>
		    <thead>
		    	<tr>
		            <td class="float-left col-1">
		            	<form:label path="userName">Username:</form:label>
		            </td>
		            <td class="float-left col-2">
		            	<form:errors path="userName" class="text-danger"/>
						<form:input class="input d-inline-block w-100" path="userName"/>
		            </td>
		        </tr>
		        <tr>
		            <td class="float-left col-1">
		            	<form:label path="email">Email:</form:label>
		            	</td>
		            <td class="float-left col-2">
		            	<form:errors path="email" class="text-danger"/>
						<form:input class="input d-inline-block w-100" path="email"/>
		            </td>
		        </tr>
		        <tr>
		            <td class="float-left col-1">
		            	<form:label path="password">Password:</form:label>
		            </td>
		            <td class="float-left col-2">
		            	<form:errors path="password" class="text-danger"/>
						<form:input class="input d-inline-block w-100" type="password" path="password"/>
		            </td>
		        </tr>
		        <tr>
		            <td class="float-left col-1">
		            	<form:label path="confirm">Confirm PW:</form:label>
		            </td>
		            <td class="float-left col-2">
		            	<form:errors path="confirm" class="text-danger"/>
						<form:input class="input d-inline-block w-100" type="password" path="confirm"/>
		            </td>
		        </tr>
		        <tr>
		        	<td colspan=2><input class="input d-inline-block w-100" type="submit" value="Submit"/></td>
		        </tr>
		    </thead>
		</table>
	</form:form>
	<form:form action="/login" method="POST" modelAttribute="newLogin" class="py-3">
	
		<table class="table table-bordered table-primary">
			<thead>
		    	<tr>
		            <td colspan="2" class="text-center">Log In</td>
		        </tr>
		    </thead>
		    <thead>
		        <tr>
		            <td class="float-left col-1">
		            	<form:label path="email">Email:</form:label>
		            </td>
		            <td class="float-left col-2">
		            	<form:errors path="email" class="text-danger"/>
						<form:input class="input d-inline-block w-100" path="email"/>
		            </td>
		        </tr>
		        <tr>
		            <td class="float-left col-1">
		            	<form:label path="password">Password:</form:label>
		            </td>
		            <td class="float-left col-2">
		            	<form:errors path="password" class="text-danger"/>
						<form:input class="input d-inline-block w-100" type="password" path="password"/>
		            </td>
		        </tr>
		        <tr>
		        	<td colspan=2><input class="input d-inline-block w-100" type="submit" value="Submit"/></td>
		        </tr>
		    </thead>
		</table>
	</form:form>
</body>
</html>