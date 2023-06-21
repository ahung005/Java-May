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
	<title>Dashboard</title>
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/style.css"/>
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Welcome, <c:out value="${user.firstName}" />!</h2>
		<a href="/logout">log out</a>
		<a href="/project/new" class="btn btn-secondary btn-sm">+ new project</a>
		
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<td>Project</td>
					<td>Team Lead</td>
					<td>Due Date</td>
					<td>Actions</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="project" items="${projects}">
					<c:if test = "${project.teamLead.id!=user.id}">
						<tr>
							<td><a href="/project/${project.id}" ><c:out value="${project.title}" /></a></td>
							<td><c:out value="${project.teamLead.firstName}" /></td>
							<td><fmt:formatDate value="${project.dueDate}" pattern="YYYY-MM-dd" /></td>
							<td><a href="/join/${project.id}">Join Team</a></td>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
		
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<td>Project</td>
					<td>Team Lead</td>
					<td>Due Date</td>
					<td>Actions</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="project" items="${joinedProjects}">
					<tr>
						<td><a href="/project/${project.id}" ><c:out value="${project.title}" /></a></td>
						<td><c:out value="${project.teamLead.firstName}" /></td>
						<td><c:out value="${project.dueDate}" /></td>
						<c:if test="${project.teamLead.id==sessionScope.userId}">
							<td><a href="/project/edit/${project.id}">Edit</a></td>
						</c:if>
						<c:if test="${project.teamLead.id!=sessionScope.userId}">
							<td><a href="/leaveTeam/${project.id}">Leave Team</a></td>
						</c:if>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</div>
</body>
</html>