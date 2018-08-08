<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: milena
  Date: 02.08.18
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>

</head>
<body>
<h4>Login:</h4>
<form method="post">
    <input path="text" name="nick" placeholder="nick"/>
<input type="password" path="password" name="password" placeholder="password"/>
    <input type="submit" value="login">
    <p><a href="${pageContext.request.contextPath}/user/form" >Register</a></p>
</form>
</body>
</html>
