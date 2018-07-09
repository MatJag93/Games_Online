<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<style type="text/css">
.error {
  color: red;
}
</style>
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
  <f:form action="register" method="post" modelAttribute="user">
    <div>
      Username: <f:input path="username" required="required"/><f:errors path="username" cssClass="error"/>
    </div><br>
    <div>
      Password: <f:password path="password" required="required"/><f:errors path="password" cssClass="error"/>
    </div><br>
    <div>
      E-mail: <f:input type="email" path="email" required="required"/><f:errors path="email" cssClass="error"/>
    </div><br>
    <div>
      <button type="submit" class="btn btn-outline-info">Zarejestruj się</button>
    </div><br>
    Masz juz konto? <a class="btn btn-outline-info" href="login" role="button">Zaloguj się</a>
  </f:form>
  </div>
  <%@ include file="../bootstrap/js.jspf" %>
</body>
</html>