<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@	include	file="/WEB-INF/fragments/header.jspf"	%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Card Database</title>
</head>
<body bgcolor="#E6E6FA">

	<div class="container">
		<h3>Dane użytkownika</h3>
		<br />

		<div class="row">
			<label class="col-sm-2">ID: ${showUser.id}</label>
		</div>
		<div class="row">
			<label class="col-sm-2">Username: ${showUser.username}</label>
		</div>
		<div class="row">
			<label class="col-sm-2">E-mail: ${showUser.email}</label>
		</div>
		<div class="row">
			<label class="col-sm-2">Liczba dodanych kart: ${twCounter}</label>
		</div>
		<div class="row">
			<label class="col-sm-2">Liczba komentarzy: ${comCounter}</label>
		</div>
	</div>
	<br>
	<c:choose>
		<c:when test="${user.id ne showUser.id}">
			<c:url value="/message/newmessage/${showUser.id }" var="linkMessage" />
			<f:form action="${linkMessage}" method="get" modelAttribute="message">
				<input type="submit" value="send message to ${showUser.username }" />
			</f:form>
		</c:when>
	</c:choose>


	<%-- alternatively
		<f:form action="${pageContext.request.contextPath}/message/newmessage/${showUser.id}"
			method="get">
			<input type="submit" value="send message to ${showUser.username }" />
		</f:form>
 --%>

	<div>
		<table>
			<tr>
				<th>Nr</th>
				<th>Nazwa</th>
				<th>Dodał</th>
				<th>Utworzone</th>
			</tr>
			<c:forEach items="${showUser.cards}" var="card"
				varStatus="LoopStatus">
				<tr>
					<td>${LoopStatus.count}</td>
					<td><a href="<c:url value="/card/details/${card.id}" />">${card.text}</a></td>
					<td><a href="<c:url value="/user/details/${card.user.id}" />">${card.user.username}</a></td>
					<td>${card.created}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div>
		<a href="<c:url value="/card/list" />">Powrót do listy kart </a>
	</div>
</body>
</html>