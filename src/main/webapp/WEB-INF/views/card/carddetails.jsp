<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@	include	file="/WEB-INF/fragments/header.jspf"	%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Card Database</title>
</head>
<body bgcolor="#E6E6FA">
	<div>

		<div>
			<strong><c:out value="${card.user.username}"></c:out></strong>
			<small><c:out value="${card.created}"></c:out></small><br>
			<h4><c:out value="${card.text}" /></h4>
			
		</div>
		<hr>
		<div>
			<c:forEach items="${card.comments}" var="comment">
				<strong><c:out value="${comment.user.username }" /></strong>
				<small><c:out value="${comment.created }" /></small>
				<br>
				<h4><c:out value="${comment.text }" /></h4>
				<br>
			</c:forEach>
		</div>
		<div>
			<f:form action="" method="post" modelAttribute="comment">
				<div>
					Dodaj komentarz:
					<f:input type="text" path="text" />
					<input type="submit" value="Dodaj" />
				</div>
			</f:form>
		</div>


		<div>
			<a href="<c:url value="/card/list" />">Powrót do listy kart </a>
		</div>
	</div>
</body>
</html>