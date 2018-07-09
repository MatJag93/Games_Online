<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Card Database</title>
</head>
<body bgcolor="#E6E6FA">
Nowa wiadomość do:
<c:out value="${sendTo.username }" /><br>
	<f:form action="" method="post" modelAttribute="message">
		<f:hidden path="id" value="0"/>
		<f:textarea rows="10" columns="30" path="text" />
		<div>
			<input type="submit" value="Send" />
		</div>
	</f:form>
</body>
</html>