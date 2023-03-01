<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home page</title>
<link rel="stylesheet" href="<c:url value='css\style.css'/>">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.1/css/all.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div style="padding-top: 50px;" id="home" class="col-lg-12 col-sm-12 col-md-12">
				<h1 style=" text-align: center; padding-bottom: 30px;"  class="">Are you Ready?</h1>
				<a href="cate" style="height: 100px; font-size: 32px; padding-top: 25px; " class=" btn-primary btn">Play</a>
				<a href="login" style="height: 100px; font-size: 32px; padding-top: 25px;" class=" btn-primary btn">Login</a>
				<a href="highscore" style="height: 100px; font-size: 32px; padding-top: 25px;" id="highscore-btn" class=" btn-warning btn">High Scores<i class="fas fa-crown"></i></a>
			</div>
		</div>
	</div>
</body>
</html>