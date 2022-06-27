<%--
  Created by IntelliJ IDEA.
  User: Lê Phước Hoàng
  Date: 6/27/2022
  Time: 2:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title> Product Discount Calculator </title>
  </head>
  <body>
  <form method="post" action="/display">
    <input type="text" name="product" placeholder="Mô tả sản phẩm">
    <br>
    <input type="text" name="price" placeholder="Giá niêm yết">
    <br>
    <input type="text" name="discount" placeholder="Tỷ lệ chiết khấu">
    <br>
    <input type="submit" value="Discount">

  </form>
  </body>
</html>
