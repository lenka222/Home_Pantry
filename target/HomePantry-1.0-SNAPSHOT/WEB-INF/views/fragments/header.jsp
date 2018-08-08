<%--
  Created by IntelliJ IDEA.
  User: milena
  Date: 02.08.18
  Time: 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title
            <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<p><a href="${pageContext.request.contextPath}/product" >All available products</a></p>
<p><a href="${pageContext.request.contextPath}/recipie" >All available recipies</a></p>
<p><a href="${pageContext.request.contextPath}/UserProduct" >Show my products</a></p>
<p><a href="${pageContext.request.contextPath}/shoppingBag" >Show my shopping list</a></p>
<p><a href="${pageContext.request.contextPath}/logout" >Logout</a></p>

</body>
</html>
