<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Card Database</title>
</head>
<body bgcolor="#E6E6FA">
	<div>
		<span>Jesteś zalogowany jako: ${user.username}</span> <a
			href="<c:url value="/user/logout" />">Wyloguj</a>
	</div>
	<hr>
	<h5>Messages</h5>
	<div>
		From: ${message.sender.username} To: ${message.addressee.username} <small>${message.created}</small>
		<br>
		<c:out value="${message.text}"></c:out>
		<br>
	</div>
	
	<div>
		<f:form action="" method="post" modelAttribute="message">
			<div>
				<input type="submit" value="powrót do wiadomości" />
			</div>
		</f:form>
	</div>

</body>
</html>