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
	<h4>Wiadomości</h4>
	<c:forEach items="${messages}" var="message">
	Od: ${message.sender.username} Do: ${message.addressee.username}
	<small>${message.created}</small>
		<br>
		<c:choose>
			<c:when test="${message.sender.id == user.id }">
				<a href="<c:url value="/message/details/${message.id}"/>">
					${message.heading}</a>
			</c:when>
			<c:when test="${message.read}">
				<a href="<c:url value="/message/details/${message.id}"/>">
					${message.heading}</a>
			</c:when>
			<c:otherwise>
				<b><a href="<c:url value="/message/details/${message.id}"/>">
						${message.heading}</a></b>
			</c:otherwise>
		</c:choose>
		<br>
	</c:forEach>
	<f:form action="" method="post" modelAttribute="message">
		<div>
			<label>Wyślij do:</label>
			<f:select items="${receivers}" path="addressee" itemLabel="username"
				itemValue="id" />
		</div>
		<f:textarea rows="10" columns="40" path="text" />
		<div>
			<input type="submit" value="Send" />
		</div>
	</f:form>

	<div>
		<a href="<c:url value="/card/list" />">Powrót do listy kart </a>
	</div>

</body>
</html>