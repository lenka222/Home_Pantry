<%--
  Created by IntelliJ IDEA.
  User: milena
  Date: 31.07.18
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Recipies</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="background-color:#ffffcc">
<form:form method="post" modelAttribute="recipie">
    Choose products:
<form:select multiple="true" items="${produkty}" path="ingredients"
    itemValue="id" itemLabel="name"/>
<form:textarea path="howToPrepare" placeholder="howToPrepare"/>
    <input type="submit" value="Save" />
</form:form>
</body>
</html>

