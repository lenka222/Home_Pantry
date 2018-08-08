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
    <title>Add new product</title>
</head>
<body>

<form:form method="post" modelAttribute="product">

    <form:input path="name" placeholder="name"/>

    <div><form:radiobutton path="category" placeholder="Friut" value="Fruit"/>Fruit</div>
    <div> <form:radiobutton path="category" placeholder="Vegetable" value="Vegetable"/>Vegetable</div>
    <div><form:radiobutton path="category" placeholder="Loose product" value="Loose product"/>Loose product</div>
    <div> <form:radiobutton path="category" placeholder="Milk product" value="Milk product"/>Milk product</div>
    <div><form:radiobutton path="category" placeholder="Meat" value="Meat"/>Meat</div>
    <div> <form:radiobutton path="category" placeholder="Spices" value="Spice"/>Spice</div>
    <input type="submit">
</form:form>
</body>
</html>