<%--
  Created by IntelliJ IDEA.
  User: Lê Phước Hoàng
  Date: 6/28/2022
  Time: 10:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head>
    <title> Calculator </title>
  </head>
  <body>
  <h1> Simple Calculator </h1>
  <form method="post" action="/calculate">
    <fieldset style="width: 50%">
      <legend> Calculator </legend>
      <table>

        <tr>
          <td> Firt opreand : </td>
          <td><input name="first-operand" type="text"></td>
        </tr>

        <tr>
          <td> Operator : </td>
          <td>
            <select name="operator">
              <option value="+"> Addition </option>
              <option value="-"> Subtraction </option>
              <option value="*"> Multiplication </option>
              <option value="/"> Division </option>
            </select>
          </td>
        </tr>

        <tr>
          <td> Second operand : </td>
          <td>
            <input name="second-operand" type="text">
          </td>
        </tr>

        <tr>
          <td></td>
          <td>
            <input type="submit" value="Calculate">
          </td>
        </tr>
      </table>

    </fieldset>

  </form>
  </body>
</html>
