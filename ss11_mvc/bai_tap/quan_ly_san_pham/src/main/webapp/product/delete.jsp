<%--
  Created by IntelliJ IDEA.
  User: Lê Phước Hoàng
  Date: 6/29/2022
  Time: 4:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting Product</title>
</head>
<body>
<h1>Delete Product</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <h3>Are you sure</h3>
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td>${product.name}</td>
            </tr>
            <tr>
                <td>Detail: </td>
                <td>${product.detail}</td>
            </tr>
            <tr>
                <td>Price: </td>
                <td>${product.price}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete Product"></td>
                <td><a href="/product">Back to customer list</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>

