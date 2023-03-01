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
<link rel="stylesheet" href="css/highScores.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.1/css/all.css">
</head>
<body>
    <div class="container">
        <div class="row">
        	<div class="col-lg-12 col-sm-12 col-md-12">
        		<h1 style="text-align: center;">Question Add</h1>
        		<form class="login-form" action="save" method="post">
		            <div class="form-group">
		                <label style="font-size: 22px">Question Name: </label>
		                <input class="form-control" type="text" name="quesname" id="">
		            </div>
		            <div class="form-group">
		                <label style="font-size: 22px">Option 1: </label>
		                <input class="form-control" type="text" name="option1" id="">
		            </div>
		            <div class="form-group">
		                <label style="font-size: 22px">Option 2: </label>
		                <input class="form-control" type="text" name="option2" id="">
		            </div>
		            <div class="form-group">
		                <label style="font-size: 22px">Option 3: </label>
		                <input class="form-control" type="text" name="option3" id="">
		            </div>
		            <div class="form-group">
		                <label style="font-size: 22px">Option 4: </label>
		                <input class="form-control" type="text" name="option4" id="">
		            </div>
		            <div class="form-group">
		                <label style="font-size: 22px">Correct Answer:</label>
		                <select class="form-control"  name="correct_answer" id="">
		                    <option value="A">Option1</option>
		                    <option value="B">Option2</option>
		                    <option value="C">Option3</option>
		                    <option value="D">Option4</option>
		                </select>
		            </div>
		            <div class="form-group">
		                <label style="font-size: 22px">Categories:</label>
		                <select class="form-control"  name="category">
		                	<c:forEach items="${listCategory}" var="item">
		                		<option value="${item.id_category}">${item.category_name}</option>
		                	</c:forEach>
		                </select>
		            </div>
		            <div style="padding-top: 50px;">
		            	<input class="btn btn-primary" type="submit" name="" value="Save">
		        	</div>
		        </form>
				<div >
					<a href="index"><input class="btn-primary btn" type="submit" name="" value="Go Home"></a>
				</div>
        	</div>
        </div>
    </div>
</body>
</html>