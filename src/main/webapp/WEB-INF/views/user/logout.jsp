<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Logging out from page Card Database</title>
	<%@ include file="../bootstrap/config.jspf" %>
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
	<div>
		<span>Jesteś zalogowany jako: ${user.username}</span>
	</div>
	<f:form action="logout" method="post">
		Naprawdę chcesz nas opuścić?
		<a class="btn btn-outline-info" href="login" role="button">Potwierdz</a>
		<a class="btn btn-outline-info" href="/card/list" role="button">Anuluj</a>
		<!--button type="submit" name="button" value="Confirm">Potwierdź</button-->
		<!--button type="submit" name="button" value="No">Anuluj</button-->

	</f:form>
</div>
	<%@ include file="../bootstrap/js.jspf" %>

</body>
</html>