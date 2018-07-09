<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@	include	file="/WEB-INF/fragments/header.jspf"	%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Card Database</title>
	<%@ include file="../bootstrap/config.jspf" %>
	<style type="text/css">
		.error {
			color: red;
		}
	</style>
</head>
<body>
<div class="container">
	<table class="table">
		<thead class="thead-dark">
		<tr>
			<th>Nr</th>
			<th>Nazwa</th>
			<th>Dodał</th>
			<th>Utworzone</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${cards}" var="card" varStatus="LoopStatus">

			<tr>
				<td>${LoopStatus.count}</td>
				<td><a href="<c:url value="/card/details/${card.id}" />">${card.text}</a></td>
				<td><a href="<c:url value="/user/details/${card.user.id}" />">${card.user.username}</a></td>
				<td><small>${card.created}</small></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
	<div class="form-group">
		<f:form action="list" method="post" modelAttribute="card">
				Nazwa:<f:input type="text" path="text" /><f:errors path="text" cssClass="error"/>
				Opis:<f:input type="text" path="description" /><f:errors path="description" cssClass="error"/>
				<input type="submit" value="Dodaj karte" />
		</f:form>
	</div>
	<%@ include file="../bootstrap/js.jspf" %>
</body>
</html>