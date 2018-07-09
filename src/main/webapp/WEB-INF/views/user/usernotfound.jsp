<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Card Database</title>
</head>
<body bgcolor="#E6E6FA">
<div>
	<div>
		<span>Jesteś zalogowany jako: ${user.username}</span>
		<a href="<c:url value="/user/logout" />" >Wyloguj</a>
	</div>
	<h3>Użytkownik nie znaleziony</h3>
	<div>
		<a href="<c:url value="/card/list" />" >Powrót do listy kart </a>
	</div>
</div>
</body>
</html>