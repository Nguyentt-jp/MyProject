<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.1/css/all.css">
</head>
<body>
    <div class="container">
        <div class="row">
        	<div class="col-lg-12 col-sm-12 col-md-12">
        		<form class="" action="highscore?score=${score}" method="post">
		            <h1 style="font-size: 56px;">Register</h1>
		            <div>
		            <label style="margin-bottom: 20px ; font-size: 22px;">Team Name</label>
		                <input class="form-control" type="text" name="team-name" id="">
		            </div>
		            <div style="padding-top: 50px;">
		                <input class="btn btn-primary" type="submit" name="" value="Sign Up">
		            </div>
        		</form>
        	</div>
        </div>
    </div>
</body>
</html>