<%--
  Created by IntelliJ IDEA.
  User: Lê Phước Hoàng
  Date: 6/27/2022
  Time: 2:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Currency Converter</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
  <body>
  <h2> Currency Converter </h2>
  <form method="post" action="/convert">
    <label> Rate : </label> <br>
    <input type="text" name="rate" placeholder="RATE" value="22000"> <br>
    <labe> USD : </labe> <br>
    <input type="text" name="usd" placeholder="USD" value="0"> <br>
    <input type="submit" id="submit" value="Converter">
  </form>
  </body>
</html>