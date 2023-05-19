<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Omikuji Form</title>
	
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/style.css"/>
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<h1 class="my-2 text-center">Send an Omikuji!</h1>
	<form action='/formFortune' method='POST' class="w-50 px-4 py-2 my-2 container border border-5 border-dark">
		<div class="my-2">
			<label class="form-label">Pick any number from 5 to 25</label>
		   	<input type="number" name='number' class="w-25 form-control">
	   	</div>
	   	<div class="my-2">
			<label class="form-label">Enter the name of any city.</label>
		   	<input type="text" name='city' class="w-75 form-control">
		</div >
	   	<div class="my-2">		   
		   	<label class="form-label">Enter the name of any real person</label>
		   	<input type="text" name='person' class="w-75 form-control">
		</div>
	   	<div class="my-2">
		   	<label class="form-label">Enter professional endeavor or hobby:</label>
		   	<input type="text" name='hobby' class="w-75 form-control">
		</div>
	   	<div class="my-2">
		   	<label class="form-label">Enter any type of living thing.</label>
		   	<input type="text" name='livingThing' class="w-75 form-control">
		</div>
	   	<div class="my-2">
		   	<label class="form-label">Say something nice to someone:</label>
		   	<textarea type="text" name='nice' class="form-control"></textarea>
		</div>
	   	<p class="my-2">Send and show a friend</p>
	   	<div class="my-2 d-flex justify-content-end">
	   		<button class="btn btn-primary">Send</button>
	   	</div>
    </form>
</body>
</html>