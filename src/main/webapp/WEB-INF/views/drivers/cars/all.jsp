<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 class="table_dark">Current cars:</h1>
<table border="1" class="table_dark">
  <tr>
    <th>ID</th>
    <th>Model</th>
    <th>Manufacturer name</th>
    <th>Manufacturer country</th>
  </tr>
  <c:forEach var="car" items="${current_cars}">
    <tr>
      <td>
        <c:out value="${car.id}"/>
      </td>
      <td>
        <c:out value="${car.model}"/>
      </td>
      <td>
        <c:out value="${car.manufacturer.name}"/>
      </td>
      <td>
        <c:out value="${car.manufacturer.country}"/>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
