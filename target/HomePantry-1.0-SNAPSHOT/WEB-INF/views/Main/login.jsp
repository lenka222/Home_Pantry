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
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
</head>
<%--<body background = https://cdn.pixabay.com/photo/2017/09/12/16/12/mason-jars-2742757_960_720.jpg--%>
<%--background-repeat = no-repeat;--%>
<%--background-position = center;>--%>
<body link rel="stylesheet" type="text/css" href="css/style.css">
<h4>Login:</h4>
<form method="post">
    <input path  ="text" name="nick" placeholder="nick"/>
<input type="password" path="password" name="password" placeholder="password"/>
    <input type="submit" value="login">
    <p><a href="${pageContext.request.contextPath}/user/form" >Register</a></p>
</form>
</body>
</html>
