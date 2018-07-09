<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Logging into Card Database</title><style type="text/css">
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
  <f:form action="login" method="post" modelAttribute="loginForm">
  	
    <div>
      Login: <f:input type="text" path="username"/>
      <f:errors path="username" cssClass="error" element="div"/>
    </div><br>
    <div>
      Password: <f:input type="password" path="password"/>
      <f:errors path="password" cssClass="error" element="div"/>
    </div><br>
    <div>
      <button type="submit" class="btn btn-outline-info">Zaloguj się</button>
    </div><br>
    <div>
      Nie masz jeszcze konta?? <a class="btn btn-outline-info" href="register" role="button">Zarejestruj się</a>
    </div>  
  </f:form>
</div>
<%@ include file="../bootstrap/js.jspf" %>

</body>
</html>