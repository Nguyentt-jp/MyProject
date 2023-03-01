<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Quiz page</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value='css\style.css'/>">
<link rel="stylesheet" href="<c:url value='css\game.css'/>">
<style type="text/css">
.hud-item p{
	font-size: 25px;
}
@media screen and (max-width: 480px) {
	h1{
		text-align: center;
		font-size: 18px;
		padding: 8px 8px;
	}
	.btn{
		font-size: 15px;
	}
	.hud-item p{
		font-size: 12px;
	}
	.choice button{
		font-size: 16px;
	}
}
</style>
<%
	String ans = (String)request.getAttribute("answer");
%>

</head>
<body>
<!-- <audio autoplay>
  <source src="sounds/win.mp3" type="audio/mpeg">
  Your browser does not support the audio element.
</audio> -->
<audio id="ok" preload="auto" src="sounds/win.mp3" type="audio/mp3"></audio>
<audio id="ng" preload="auto" src="sounds/false.mp3" type="audio/mp3"></audio>
	<div class="container">
		<div class="row">
			<div id="game" class="justiy-center flex-column col-xl-12 col-lg-12 col-sm-12 col-md-12 col-12">
				<div id="hud">
					<div class="hud-item">
						<p id="progressText">Question ${k} of ${size}</p>
						<div style="padding-top: 6px;">
							<div class="progress" style="height:30px; border-radius: 10px;">
    							<div class="progress-bar" style="width: ${k*10}%;height:30px; "></div>
  							</div>
						</div>
					</div>
					<div class="hud-item">
						<p >Score</p>
						<h2 class="hud-main-text
						" id="score">${score}</h2>
					</div>
				</div>
				<c:forEach items="${listQues}" var="itemList">
						<div >
							<h1 id="question" style="text-align: center; padding: 15px 15px;">${itemList.question_name}</h1>
						</div>
					<div  class="choice">
						<a onclick="answer1()" href="startgame?page=${page}&&option1=A">
							<button style="padding: 15px 15px;" class="btn-primary btn" id="option1" value="A" >${itemList.option_1}</button>
						</a>
						<a onclick="answer2()" href="startgame?page=${page}&&option2=B">
							<button style="padding: 15px 15px;" class="btn-primary btn" id="option2" value="B" >${itemList.option_2}</button>
						</a>
						<a onclick="answer3()" href="startgame?page=${page}&&option3=C">
							<button style="padding: 15px 15px; background-color: " class="btn-primary btn" id="option3" value="C" >${itemList.option_3}</button>
						</a>
						<a onclick="answer4()"  href="startgame?page=${page}&&option4=D">
							<%-- <input type="button" class="choice-text" name="option4" value="${itemList.option_4}"> --%>
							<button style="padding: 15px 15px;" class="btn-primary btn" id="option4" value="D" >${itemList.option_4}</button>
						</a>
					</div>
				</c:forEach>
				<c:if test="${k==size}">
					<div style="display: flex; align-items: flex-end; flex-direction: column;">
						<a href="signup?score=${score}">
							<button class="btn btn-primary" style="height: 50px; background: #007bff; width: 100px; font-size: 18px; " >End</button>
						</a>
					</div>
				</c:if>
			</div>
		</div>
	</div>
<script type="text/javascript">
	function answer1() {
		var win = "${score}";
		var kotae = "${answerdata}";
		var answer1 = $("#option1").val();
		console.log(win);
		console.log(kotae);
		console.log(answer1);
		if( kotae == answer1) {
			$("#ok").get(0).play();
		}else {
			$("#ng").get(0).play();
		}

		return false;
	}
	function answer2() {
		var win = "${score}";
		var kotae = "${answerdata}";
		var answer1 = $("#option2").val();
		console.log(win);
		console.log(kotae);
		console.log(answer1);
		if( kotae == answer1) {
			$("#ok").get(0).play();
		}else {
			$("#ng").get(0).play();
		}

		return false;
	}
	function answer3() {
		var win = "${score}";
		var kotae = "${answerdata}";
		var answer1 = $("#option3").val();
		console.log(win);
		console.log(kotae);
		console.log(answer1);
		if( kotae == answer1) {
			$("#ok").get(0).play();
		}else {
			$("#ng").get(0).play();
		}

		return false;
	}
	function answer4() {
		var win = "${score}";
		var kotae = "${answerdata}";
		var answer1 = $("#option4").val();
		console.log(win);
		console.log(kotae);
		console.log(answer1);
		if( kotae == answer1) {
			$("#ok").get(0).play();
		}else {
			$("#ng").get(0).play();
		}

		return false;
	}
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>
</html>