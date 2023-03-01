<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body>
    <div class="container">
        <div class="row">
        	<div class=".col-xl-12 col-lg-12 col-sm-12 col-md-12 col-12">
        		<form action="input" method="post">
		            <div class="login-form">
		            	<h1 style="font-size: 80px;">Login</h1>
			            <div class="form-group">
			                <label style="font-size: 22px" >Username:</label>
			                <input style="height: 50px;" class="form-control" type="text" name="username" id="">
			            </div>
			            <div class="form-group">
			                <label style="font-size: 22px" >Password:</label>
			                <input style="height: 50px;" class="form-control" type="password" name="password" id="">
			            </div>
			            <div class="form-group">
			            	<input class="btn btn-primary" style="width: 100px" type="submit" value="Login">
			            </div>
		            </div>
        		</form>
        	</div>
        </div>
    </div>
</body>
</html>