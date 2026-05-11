    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <% if("Admin".equals(session.getAttribute("role")) ){  }
else {response.sendRedirect("login");}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<%@ include file="AdminNavbar.jsp" %>
<center><h2>Welcome To Admin Page</h2></center>

<div class="d-flex justify-content-center align-item-center mt-4 ">

<div class="card text-bg-secondary mb-3 mt-4" style="max-width: 18rem; margin-left: 20px; margin-right: 20px;">
<!--   <div class="card-header">Header</div>
 -->  <div class="card-body">
    <h5 class="card-title">All Student</h5>
    <p class="card-text">${studentCount }<br></p>
  </div>
</div>

<div class="card text-bg-secondary mb-3 mt-4 ms-2" style="max-width: 18rem;  margin-left: 20px; margin-right: 20px;">
<!--   <div class="card-header">Header</div> -->
  <div class="card-body">
    <h5 class="card-title">All Faculty</h5>
    <p class="card-text">${Staffs }</p>
  </div>
</div>

<div class="card text-bg-secondary mb-3 mt-4" style="max-width: 18rem;  margin-left: 20px; margin-right: 20px;">
  <!-- <div class="card-header">Header</div> -->
  <div class="card-body">
    <h5 class="card-title">All Questions</h5>
    <p class="card-text">${qnCount }</p>
  </div>
</div>

<!--
<div class="card text-bg-secondary mb-3 mt-4" style="max-width: 18rem;  margin-left: 20px; margin-right: 20px;">
   <div class="card-header">Header</div> 
  <div class="card-body">
    <h5 class="card-title">No Of Technology</h5>
    <p class="card-text">${tech }</p>
  </div>
  -->
</div>
</div>
</body>
</html>