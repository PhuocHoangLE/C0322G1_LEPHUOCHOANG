<%--
  Created by IntelliJ IDEA.
  User: Lê Phước Hoàng
  Date: 7/4/2022
  Time: 4:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link
            href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css"
            rel="stylesheet"
    />

</head>
<body>
<!-- Phần header website -->

<div class="card-header bg-white" style="height: 120px">
    <div class="row">
        <div class="col-auto col-sm-5 col-lg-3 d-flex align-items-center bestel-logo" style="margin-bottom: 10px">
            <a href="#" class="header-logo">
                <img src="https://furamavietnam.com/wp-content/uploads/2018/10/logo.png"
                     alt="logo" class="img-fluid" height="90" width="70">
            </a>
        </div>

        <div class="col col-md-auto col-lg-3 d-flex">
        </div>

        <div class="col-sm-3 d-none d-lg-block bg-white">
            <p style="font-size: 13px"><i style="color: #046056" class="ri-map-pin-2-fill"></i>
                103 – 105 Đường Võ Nguyên Giáp,<br> Phường Khuê Mỹ, Quận Ngũ hành Sơn,<br>
                Tp. Đà Nẵng, Việt Nam
            </p>
            <p class="txt-sm" style="font-size: 13px">
                <span style="color: #005cbf">7.0 km</span> từ Sân bay Quốc tế Đà Nẵng </p>
        </div>

        <div class="col-sm-3 d-none d-lg-block">
            <div class="header-contact d-flex">
                <div class="header-contact-icon"><i class="icon-telephone"></i></div>
                <div class="header-contact-txt">
                    <p class="txt-lg" style="font-size: 15px">
                        <i style="color: #046056" class="ri-phone-fill"></i>
                        84-236-3847 333/888 </p>
                </div>
            </div>
            <div class="header-contact d-flex">
                <div class="header-contact-icon"><i style="color: #046056" class="icon-closed-envelope"></i></div>
                <div class="header-contact-txt" style="font-size: 13px">
                    <i style="color: #046056" class="ri-mail-fill"></i>
                    <a style="color: black" href="mailto:reservation@furamavietnam.com">
                        reservation@furamavietnam.com </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Kết thúc phần header website -->
<!--phần navbar-->
<div>
    <h1 style="text-align: center"> Danh Sách khách hàng </h1>
    <tr class="table-success" >
        <th>ID</th>
        <th>Customer Type</th>
        <th>Name</th>
        <th>Birthday</th>
        <th>Gender</th>
        <th>ID Card</th>
        <th>Phone</th>
        <th>Email</th>
        <th>Address</th>
    </tr>

    <c:forEach var="customer" items="${customerList}" >
        <tr>
            <td><c:out value="${customer.customerId}"/></td>
            <td><c:out value="${customer.customerName}"/></td>
            <td><c:out value="${customer.customerBirthDay}"/></td>

            <c:if test="${customer.gender == 0}">
                <td><c:out value="Female"/></td>
            </c:if>

            <c:if test="${customer.gender == 1}">
                <td><c:out value="Male"/></td>
            </c:if>

            <td><c:out value="${customer.customerIdCard}"/></td>
            <td><c:out value="${customer.customerPhoneNumber}"/></td>
            <td><c:out value="${customer.customerEmail}"/></td>
            <td><c:out value="${customer.customerAddress}"/></td>
            <td><c:out value="${customer.customerTypeId}"/></td>
            <td>
                <a href="/customer?action=editCustomer&id=${customer.customerId}"
                   class="btn btn-outline-info"><i class="fa-solid fa-pen-clip"></i> Edit</a>
                <!-- Button delete trigger modal -->
                <button type="button" class="btn btn-primary" data-toggle="modal"
                        onclick="setIdDelete(${customer.customerId})" data-target="#exampleModal">
                    <i class="fa-solid fa-trash-can"></i>Delete
                </button>
            </td>
        </tr>


    </c:forEach>
    
    


</div>
<footer class="bg-dark py-3">
    <div class="container text-white text-center">
        Copyright &copy; by Le Phuoc Hoang
    </div>
</footer>


<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
        crossorigin="anonymous"></script>
</body>
</html>
