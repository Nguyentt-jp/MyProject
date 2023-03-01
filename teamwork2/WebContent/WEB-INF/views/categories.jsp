<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Document</title>
<link rel="stylesheet" href="<c:url value='css\style.css'/>">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
	    <div class="row">
	    	<div style="padding-top: 50px;" class="flex-column justiy-center col-lg-12 col-sm-12 col-md-12">
		        <c:forEach items="${listCate}" var="itemCate">
		        	<!-- <div class="choice-container btn-group"> -->
		            	<a style="height: 75px; font-size: 27px; padding-top: 15px; min-width: 300px " class="btn-primary btn" href="startgame?cate_id=${itemCate.id_category}">${itemCate.category_name}
		            		<%-- <button  class="choice-text btn btn-primary" style="font-size: 18px;width: 95%;">${itemCate.category_name}</button> --%>
		            	</a>
		        	<!-- </div> -->
		        </c:forEach>
	    	</div>
	    </div>
    </div>
</body>
</html>