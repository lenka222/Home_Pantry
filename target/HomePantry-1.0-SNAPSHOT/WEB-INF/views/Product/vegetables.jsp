<%--
  Created by IntelliJ IDEA.
  User: milena
  Date: 31.07.18
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Vegetables</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="background-color:#ffffcc">

<c:import url="../fragments/header.jsp"/>
<p><a href="${pageContext.request.contextPath}/product/form" >Add Product</a></p>
<p><a href="${pageContext.request.contextPath}/product" >Show all products</a></p>
<p><a href="${pageContext.request.contextPath}/product/Vegetable" >Show all vegetables</a></p>
<p><a href="${pageContext.request.contextPath}/product/Fruit" >Show all friuts</a></p>
<p><a href="${pageContext.request.contextPath}/product/Milk%20product" >Show all milk products</a></p>
<p><a href="${pageContext.request.contextPath}/product/Spices" >Show all Spices</a></p>
<p><a href="${pageContext.request.contextPath}/product/Loose%20product" >Show all Loose product</a></p
<p><a href="${pageContext.request.contextPath}/product/Meat" >Show all Meat</a></p>
<p><a href="${pageContext.request.contextPath}/product/Other" >Show other</a></p>

All products:
<ul>
    <c:forEach items="${product}" var="product">
        <li>${product.name}
            <form method="get">
                <input type="hidden" name="addToShoppingBag" value="${product.name}"/>
                <input type="submit" value="Add to shopping list"/>
                <input type="submit" value="Add to my pantry"/>
            </form> </li>
    </c:forEach>
</ul>
</body>
</html>