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
    <title>Title</title>
            <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="Timer.js"></script>


</head>
<body>

<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/mainpage">Home Panrty</a>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
                <a class="nav-link" href="${pageContext.request.contextPath}/product" >All available products <span class="sr-only">(current)</span></a>
                <a class="nav-link" href="${pageContext.request.contextPath}/recipie" >All available recipies</a>
                <a class="nav-link" href="${pageContext.request.contextPath}/UserProduct" >Show my products</a>
                <a class="nav-link" href="${pageContext.request.contextPath}/shoppingBag" >Show my shopping list</a>
                <a class="nav-link" href="${pageContext.request.contextPath}/logout" >Logout</a>
    </div>
    <div id="timer"></div>
</nav>
</body>
</html>
