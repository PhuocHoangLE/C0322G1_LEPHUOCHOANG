<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title> Product List </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
<body>
<h2> Product </h2>
<p class="fw-bolder">
    <a href="/products?action=create">Create new Product</a>
</p>

<table border="1" class="table table-dark table-hover">
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>DETAIL</td>
        <td>PRICE</td>
        <td>EDIT</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${productList}" var="product">
        <tr>
            <td>${product.getId()}</td>
            <td><a style="text-decoration: none" href="/products?action=view&id=${product.getId()}">${product.getName()} </a></td>
            <td>${product.getDetail()}</td>
            <td>${product.getPrice()}</td>
            <td><a style="text-decoration: none" href="/products?action=update&id=${product.getId()}">UPDATE</a></td>
            <td><a style="text-decoration: none" href="/products?action=delete&id=${product.getId()}">DELETE</a></td>

        </tr>
    </c:forEach>
</table>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
</html>
