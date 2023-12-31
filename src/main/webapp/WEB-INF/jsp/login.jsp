<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Log in with your account</title>
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
</head>

<body class = "body-login">
<sec:authorize access="isAuthenticated()">
  <% response.sendRedirect("/"); %>
</sec:authorize>
<div class="login-main-container">
  <form method="POST" action="/login">
    <h2>Вход в систему</h2>
    <div class="form-group">
      <input name="username" type="text" placeholder="Логин" class="large-input" autofocus="true"/>
    </div>
    <div class="form-group">
      <input name="password" type="password" placeholder="Пароль" class="large-input"/>
    </div>
    <div class="form-group">
      <button type="submit" class="btn">Войти</button>
    </div>
  </form>
</div>

</body class = "body-login">
</html>