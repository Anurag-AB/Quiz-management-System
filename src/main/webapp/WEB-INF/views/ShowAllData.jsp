<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<center><h2>All ${name} Detail Data</h2></center>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
      <th scope="col">roleName</th>
      <th scope="col">Delete</th>
      <th scope="col">Update</th>
    </tr>
  </thead>
  
  
  <tbody class="table-group-divider">
  <c:forEach var="one" items="${users}">
    <tr>
      
      <td>${one.id}</td>
      <td>${one.username }</td>
      <td>${one.email }</td>
      <td>${one.password}</td>
       <td>${one.role_Entity.name}</td>
      <td><a href="delete?id=${one.id}">Delete</a></td>
      <td><a href="update?id=${one.id}&roleName=${one.role_Entity.name}">Update</a></td>
      
    </tr>
  </c:forEach>

  </tbody>
</table>


<center><b>
<c:choose>
    <c:when test="${name eq 'faculty'}">
        <a href="/Admin">Go Back</a>
    </c:when>
    <c:when test="${name eq 'admin'}">
        <a href="/Admin">Go Back</a>
    </c:when>
    <c:otherwise>
        <a href="/Student">Go Back</a>
    </c:otherwise>
</c:choose>


</b></center>

 
</body>
</html>