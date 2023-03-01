<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.1/css/all.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.1/css/all.css">
</head>
<body>
	<div class="container">
		<div id="end" class="flex-center flex-column">
			<h1 id="finalScore">0</h1>
			<form class="end-form-container">
				<h2 id="end-text">Enter your name below to save your score!</h2>
				<input type="text" name="name" id="username" placeholder="Enter	your name">
				<button class="btn btn-primary" id="saveScoreBtn" type="submit"	>Save</button>
			</form>
			<a href="startgame" class="btn">Play Again</a>
			<a href="index"	class="btn">Go Home<i class="fas fa-home"></i></a>
		</div>
	</div>
</body>
</html>