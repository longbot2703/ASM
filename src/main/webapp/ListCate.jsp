<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 4/15/2021
  Time: 6:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="c" value="${requestScope.lscate}" />
<html>
<head>
  <title>Title</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">


    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<table class="w3-table w3-striped">
    <form type="hidden" action="category" method="post">
        <div class="form-group">
            <input type="text" name="name" class="form-control" placeholder="Enter Category Name" required style="width: 500px; text-align: center; margin: 0 auto;">
        </div>
        <div class="form-group">
            <input type="text" name="title" class="form-control" placeholder="Enter Category Title" required style="width: 500px; text-align: center; margin: 0 auto;">
        </div>
        <div class="form-group">
            <input type="text" name="url-image" class="form-control" placeholder="Enter Category Image Url" required style="width: 500px; text-align: center; margin: 0 auto;">
        </div>
        <div class="form-group">
            <input type="submit" value="Add New Category" class="btn btn-primary py-3 px-5" style=" text-align: center; margin: 0 auto;">
        </div>
    </form>
    <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Title</th>
    <th>Image</th>
    <th>Action</th>
  </tr>
  <c:forEach var="cate" items="${c}">
  <tr>
      <td>${cate.id}</td>
      <td>${cate.name}</td>
      <td>${cate.title}</td>
      <td>${cate.url_image}</td>
      <td>
          <button type="submit"><i class="fa fa-trash" aria-hidden="true"></i></button>
          <button type="submit"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
      </td>
  </tr>
  </c:forEach>
</table>
</body>
</html>
