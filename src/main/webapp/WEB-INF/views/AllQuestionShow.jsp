<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>All Questions</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

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
    }

    .nav-btn{
        border:none;
        border-radius:30px;
        padding:10px 22px;
        font-weight:600;
        text-decoration:none !important;
        transition:0.3s ease;
        margin-left:10px;
        display:inline-block;
    }

    .back-btn{
        background:#ffffff;
        color:#203a43 !important;
    }

    .logout-btn{
        background:#dc3545;
        color:white !important;
    }

    .nav-btn:hover{
        transform:translateY(-2px);
        box-shadow:0 5px 15px rgba(0,0,0,0.2);
    }

    /* ================= PAGE TITLE ================= */

    .page-header{
        text-align:center;
        margin-top:40px;
        margin-bottom:35px;
    }

    .page-header h2{
        font-size:40px;
        font-weight:bold;
        color:#203a43;
    }

    .page-header p{
        color:#666;
        font-size:16px;
    }

    /* ================= QUESTION CARD ================= */

    .question-card{
        background:white;
        border-radius:18px;
        padding:25px;
        margin-bottom:25px;
        box-shadow:0 5px 20px rgba(0,0,0,0.08);
        transition:0.3s ease;
    }

    .question-card:hover{
        transform:translateY(-5px);
        box-shadow:0 10px 25px rgba(0,0,0,0.12);
    }

    .question-title{
        font-size:22px;
        font-weight:600;
        color:#203a43;
        margin-bottom:20px;
    }

    .option-list{
        list-style:none;
        padding-left:0;
    }

    .option-list li{
        background:#f8f9fa;
        padding:12px 18px;
        border-radius:10px;
        margin-bottom:12px;
        font-size:16px;
        color:#333;
    }

    .delete-btn{
        background:#dc3545;
        color:white !important;
        text-decoration:none;
        padding:10px 22px;
        border-radius:25px;
        font-weight:600;
        transition:0.3s ease;
        display:inline-block;
        margin-top:10px;
    }

    .delete-btn:hover{
        background:#bb2d3b;
        transform:translateY(-2px);
    }

    /* ================= PAGINATION ================= */

    .pagination{
        justify-content:center;
        margin-top:40px;
    }

    .page-link{
        color:#203a43;
        border-radius:10px !important;
        margin:0 5px;
        font-weight:600;
    }

    .page-link:hover{
        background:#203a43;
        color:white;
    }

    /* ================= FOOTER ================= */

    .footer{
        text-align:center;
        margin-top:50px;
        padding:20px;
        color:#777;
        font-size:14px;
    }

</style>

</head>

<body>

<!-- ================= NAVBAR ================= -->

<nav class="navbar navbar-expand-lg navbar-dark">

    <a class="navbar-brand" href="Faculty">
        <i class="fa-solid fa-user-graduate"></i>
        Faculty Dashboard
    </a>

    <div class="ms-auto">

        <a href="/Faculty"
           class="nav-btn back-btn">

           <i class="fa-solid fa-arrow-left"></i>
           Go Back
        </a>

        <a href="logout"
           class="nav-btn logout-btn">

           <i class="fa-solid fa-right-from-bracket"></i>
           Logout
        </a>

    </div>

</nav>

<!-- ================= PAGE HEADER ================= -->

<div class="container">

    <div class="page-header">

        <h2>
            <i class="fa-solid fa-circle-question"></i>
            All Questions
        </h2>

        <p>
            View and manage all available quiz questions.
        </p>

    </div>

    <!-- ================= QUESTIONS ================= -->

    <c:forEach var="one" items="${all}">

        <div class="question-card">

            <!-- QUESTION -->

            <div class="question-title">

                <i class="fa-solid fa-question"></i>

                Question:
                ${one.qname}

            </div>

            <!-- OPTIONS -->

            <ul class="option-list">

                <li>
                    <i class="fa-solid fa-check"></i>
                    ${one.opt1}
                </li>

                <li>
                    <i class="fa-solid fa-check"></i>
                    ${one.opt2}
                </li>

                <li>
                    <i class="fa-solid fa-check"></i>
                    ${one.opt3}
                </li>

                <li>
                    <i class="fa-solid fa-check"></i>
                    ${one.opt4}
                </li>

            </ul>

            <!-- DELETE BUTTON -->

            <a href="deleteQuestion?qid=${one.qid}"
               class="delete-btn">

               <i class="fa-solid fa-trash"></i>
               Delete

            </a>

        </div>

    </c:forEach>

    <!-- ================= PAGINATION ================= -->

    <nav aria-label="Page navigation">

        <ul class="pagination">

            <!-- PREVIOUS -->

            <c:if test="${page.hasPrevious()}">

                <li class="page-item">

                    <a class="page-link"
                       href="?page=${page.getNumber()-1}">

                       Previous

                    </a>

                </li>

            </c:if>

            <!-- PAGE NUMBERS -->

            <c:forEach var="i"
                       begin="0"
                       end="${page.getTotalPages()-1}">

                <li class="page-item">

                    <a class="page-link"
                       href="?page=${i}">

                       ${i+1}

                    </a>

                </li>

            </c:forEach>

            <!-- NEXT -->

            <c:if test="${page.hasNext()}">

                <li class="page-item">

                    <a class="page-link"
                       href="?page=${page.getNumber()+1}">

                       Next

                    </a>

                </li>

            </c:if>

        </ul>

    </nav>

</div>

<!-- ================= FOOTER ================= -->

<div class="footer">
    © 2026 Faculty Management System | All Rights Reserved
</div>

<!-- Bootstrap JS -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>