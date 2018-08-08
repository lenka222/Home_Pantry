<%--
  Created by IntelliJ IDEA.
  User: milena
  Date: 31.07.18
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new user</title>
</head>
<body>

<form:form method="post" modelAttribute="user">
    <h4>Register:</h4>
    <form:input path="nick" placeholder="nick"/>
    <form:input type="password" path="password" placeholder="password"/>
    <input type="submit" value="Register">
    <p><a href="${pageContext.request.contextPath}/login" >Login</a></p>

</form:form>
</body>
</html>