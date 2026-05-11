<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <% if("Student".equals(session.getAttribute("role")) ){  }
else {response.sendRedirect("login");}%>
<!DOCTYPE html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #F5F5DC; font-size: large; height: 60px;">
    <a class="navbar-brand" href="Student">Student-DashBoard</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
        
        
        <!--    <li class="nav-item active">
                <a class="nav-link" href="allStudent">All Student </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/signUp">Add Student</a>
            </li>   -->  
            
            
            <li class="nav-item">
                <a class="nav-link" href="getQuestion">Start Exam</a>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="logout">Logout</a>
            </li>
        </ul>
    </div>
</nav>

<center><h1>Welcome To Student DashBoard</h1></center>
</body>
</html>