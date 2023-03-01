<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>High Scores</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/highScores.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.1/css/all.css">
</head>

<body>
	<div class="container">
		<div id="highScores" class="flex-center flex-column">
			<h1 id="finalScore">Leaderboard</h1>
			<table class="table table-bordered">
	          <tr>
	            <th>Name</th>
	            <th>Score</th>
	          </tr>
	        <c:forEach items="${listName}" var="itemname">
          		<tr>
			        <td>${itemname.teamname}</td>
		            <td>${itemname.scores}</td>
          		</tr>
			</c:forEach>
        	</table>
			<a href="index" class="btn btn-primary">Go Home<i class="fas fa-home"></i></a>
		</div>
	</div>
</body>
</html>