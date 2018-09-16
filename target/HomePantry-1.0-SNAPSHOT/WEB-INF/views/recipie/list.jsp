<%--
  Created by IntelliJ IDEA.
  User: milena
  Date: 31.07.18
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>My Products</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<c:import url="../fragments/header.jsp"/>

<p><a href="${pageContext.request.contextPath}/recipie/form" >Add new recipie</a></p>

<table class="table table-hover">

    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Name</th>
        <th scope="col">How to prepare</th>
        <th scope="col">Ingredients</th>
        <th scope="col">Add to make</th>

    </tr>
    </thead>
    <tbody>

    <c:forEach items="${recipesWithIngredients}" var="recipes">
        <tr>
            <th scope="row">${recipes.id}</th>
            <td>${recipes.howToPrepare}</td>
            <td><c:forEach items="${recipes.ingredients}" var="ingredient">
                ${ingredient.name} <br>
            </c:forEach> </td>
            <td><a href="">Add products to shopping list</a></td>

        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
