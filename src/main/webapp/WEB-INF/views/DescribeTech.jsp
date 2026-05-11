<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="d-flex justify-content-center flex-wrap">

<c:forEach var="nm" items="${name}">

	
	<div class="card text-bg-secondary mb-3 mt-4" style="max-width: 18rem; margin-left: 20px; margin-right: 20px;">
<!--   <div class="card-header">Header</div>
 -->  <div class="card-body ">
    <h5 class="card-title"><a href="getQuestion?name=${nm.getTechName()}">${nm.getTechName() }</h5>
  </div>
</div>
</c:forEach>
</div>
</body>
</html>