<%--
  Created by IntelliJ IDEA.
  User: milena
  Date: 01.08.18
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:import url="../fragments/header.jsp"/>

<p><a href="${pageContext.request.contextPath}/UserProduct/form" >Add new product do pantry</a></p>

My products:
<ul>
    <c:forEach items="${myproducts}" var="product">
        <li>${product.name}</li>
    </c:forEach>
</ul>

</body>
</html>
