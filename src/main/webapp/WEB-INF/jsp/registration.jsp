<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Регистрация</title>
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
</head>

<body class = "body-login">
<div class="login-main-container">
  <form:form method="POST" modelAttribute="userForm">
    <h2>Регистрация</h2>
    <div class="form-group">
      <form:input type="text" path="username" placeholder="Логин" class="large-input" autofocus="true"></form:input>
      <form:errors path="username"></form:errors>
        ${usernameError}
    </div>
    <div class="form-group">
      <form:input type="password" path="password" placeholder="Пароль" class="large-input"></form:input>
    </div>
    <div class="form-group">
      <form:input type="password" path="passwordConfirm" placeholder="Повторите пароль" class="large-input"></form:input>
      <form:errors path="password"></form:errors>
        ${passwordError}
    </div>
    <button class="btn" type="submit">Зарегистрироваться</button>
  </form:form>
</div>
</body>
</html>