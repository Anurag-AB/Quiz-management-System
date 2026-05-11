<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    if("Faculty".equals(session.getAttribute("role"))) {
    } else {
        response.sendRedirect("login");
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty Dashboard</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>

    *{
        margin:0;
        padding:0;
        box-sizing:border-box;
    }

    body{
        background:#f4f6f9;
        font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    /* ================= NAVBAR ================= */

    .navbar{
        background:linear-gradient(90deg,#0f2027,#203a43,#2c5364);
        padding:15px 30px;
        box-shadow:0 3px 12px rgba(0,0,0,0.15);
    }

    .navbar-brand{
        color:white !important;
        font-size:28px;
        font-weight:bold;
        letter-spacing:1px;
    }

    .navbar-nav .nav-item{
        margin-right:15px;
    }

    .custom-btn{
        border:none;
        border-radius:30px;
        padding:10px 22px;
        font-size:15px;
        font-weight:600;
        transition:0.3s ease;
        text-decoration:none !important;
        display:inline-block;
    }

    .add-btn{
        background:#ffffff;
        color:#203a43 !important;
    }

    .question-btn{
        background:#ffc107;
        color:#000 !important;
    }

    .logout-btn{
        background:#dc3545;
        color:white !important;
    }

    .custom-btn:hover{
        transform:translateY(-2px);
        box-shadow:0 5px 15px rgba(0,0,0,0.2);
    }

    /* ================= WELCOME ================= */

    .welcome-section{
        text-align:center;
        margin-top:50px;
    }

    .welcome-section h1{
        font-size:42px;
        color:#203a43;
        font-weight:bold;
        margin-bottom:10px;
    }

    .welcome-section p{
        color:#666;
        font-size:18px;
    }

    /* ================= DASHBOARD CARDS ================= */

    .dashboard-container{
        display:flex;
        justify-content:center;
        flex-wrap:wrap;
        gap:35px;
        margin-top:50px;
        padding-bottom:40px;
    }

    .dashboard-card{
        width:320px;
        background:white;
        border:none;
        border-radius:18px;
        overflow:hidden;
        box-shadow:0 6px 20px rgba(0,0,0,0.08);
        transition:0.3s ease;
    }

    .dashboard-card:hover{
        transform:translateY(-8px);
        box-shadow:0 10px 30px rgba(0,0,0,0.15);
    }

    .card-body{
        padding:35px 25px;
        text-align:center;
    }

    .card-icon{
        font-size:50px;
        margin-bottom:20px;
    }

    .student-icon{
        color:#007bff;
    }

    .question-icon{
        color:#28a745;
    }

    .card-title{
        font-size:24px;
        font-weight:600;
        color:#203a43;
        margin-bottom:15px;
    }

    .card-count{
        font-size:42px;
        font-weight:bold;
        color:#333;
    }

    /* ================= FOOTER ================= */

    .footer{
        text-align:center;
        padding:18px;
        background:white;
        margin-top:50px;
        color:#777;
        font-size:14px;
        box-shadow:0 -2px 10px rgba(0,0,0,0.05);
    }

</style>

</head>

<body>

<!-- ================= NAVBAR ================= -->

<nav class="navbar navbar-expand-lg navbar-dark">

    <a class="navbar-brand" href="Faculty">
        <i class="fa-solid fa-user-graduate"></i> Faculty Dashboard
    </a>

    <button class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarNav"
        aria-controls="navbarNav"
        aria-expanded="false"
        aria-label="Toggle navigation">

        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">

        <!-- LEFT SIDE -->
        <ul class="navbar-nav mr-auto">

            <li class="nav-item">
                <a class="custom-btn add-btn"
                   href="AddQuestion">

                   <i class="fa-solid fa-plus"></i>
                   Add Question
                </a>
            </li>

            <li class="nav-item">
                <a class="custom-btn question-btn"
                   href="AllQuestion">

                   <i class="fa-solid fa-list"></i>
                   All Questions
                </a>
            </li>

        </ul>

        <!-- RIGHT SIDE -->
        <ul class="navbar-nav ml-auto">

            <li class="nav-item">
                <a class="custom-btn logout-btn"
                   href="logout">

                   <i class="fa-solid fa-right-from-bracket"></i>
                   Logout
                </a>
            </li>

        </ul>

    </div>

</nav>

<!-- ================= WELCOME SECTION ================= -->

<div class="container">

    <div class="welcome-section">

        <h1>Welcome to Faculty Dashboard</h1>

        <p>
            Manage students and questions efficiently through a modern dashboard.
        </p>

    </div>

    <!-- ================= CARDS ================= -->

    <div class="dashboard-container">

        <!-- STUDENT CARD -->
        <div class="card dashboard-card">

            <div class="card-body">

                <div class="card-icon student-icon">
                    <i class="fa-solid fa-users"></i>
                </div>

                <h5 class="card-title">
                    Total Students
                </h5>

                <div class="card-count">
                    ${studentCount}
                </div>

            </div>

        </div>

        <!-- QUESTION CARD -->
        <div class="card dashboard-card">

            <div class="card-body">

                <div class="card-icon question-icon">
                    <i class="fa-solid fa-circle-question"></i>
                </div>

                <h5 class="card-title">
                    Total Questions
                </h5>

                <div class="card-count">
                    ${qnCount}
                </div>

            </div>

        </div>

    </div>

</div>

<!-- ================= FOOTER ================= -->

<div class="footer">
    © 2026 Faculty Management System | All Rights Reserved
</div>

<!-- Bootstrap JS -->

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>