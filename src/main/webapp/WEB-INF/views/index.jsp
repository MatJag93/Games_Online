<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Card Database</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	<style>
		.content {
			width:100%;
			margin: auto;
			text-align: center;
		}
	</style>
</head>
<body>
<div class="jumbotron jumbotron-fluid content">
	<h2>Zaloguj się, aby wejść do świata gier!</h2>
	<div>
		<span>Masz juz konto? <a class="btn btn-outline-info" href="user/login" role="button">Zaloguj się</a></span>
	</div>
	<div>
		<span>Nowy na tej stronie? <a class="btn btn-outline-info" href="user/register" role="button">Zarejestruj się</a></span>
	</div>
</div>
</body>
</html>