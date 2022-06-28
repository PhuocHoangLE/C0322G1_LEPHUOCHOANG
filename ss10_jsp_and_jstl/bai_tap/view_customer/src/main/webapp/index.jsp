<%--
  Created by IntelliJ IDEA.
  User: Lê Phước Hoàng
  Date: 6/27/2022
  Time: 4:51 PM
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title> Hiển Thị Dánh Sách Khách Hàng </title>
    <style>
      table{
        margin: 0 auto ;
        text-align: center;
      }
      img{
        width: 100px ;
        height: 70px ;
      }
    </style>

  </head>
  <body>
  <form action="index.jsp" method="post">
  <table border="1">
    <tr>
      <th colspan="4"> Danh Sách Khách Hàng </th>
    </tr>
    <tr>
      <th>Tên</th>
      <th>Ngày Sinh</th>
      <th>Địa Chỉ</th>
      <th>Ảnh</th>
    </tr>

    <c:forEach var="i" items="${list}">
      <tr>
        <td>
            ${i.name}
        </td>

        <td>
            ${i.dateOfBirth}
        </td>
        <td>
            ${i.address}
        </td>
        <td>
          <img src="${i.picture}">
        </td>
      </tr>

    </c:forEach>

  </table>
  </form>

  </body>
</html>
