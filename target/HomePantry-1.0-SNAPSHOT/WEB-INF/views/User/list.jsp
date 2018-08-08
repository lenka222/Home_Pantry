<%--
  Created by IntelliJ IDEA.
  User: milena
  Date: 31.07.18
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Products</title>
</head>
<body>
<c:import url="../fragments/header.jsp"/>

<p><a href="${pageContext.request.contextPath}/user/form" >Add User</a></p>
<ul>
    <c:forEach items="${users}" var="user">
        <li>${user.nick}</li>
    </c:forEach>
</ul>
</body>
</html>