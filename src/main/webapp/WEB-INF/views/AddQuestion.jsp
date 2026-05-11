<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Add Question</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

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
        padding:10px 20px;
        font-weight:600;
        transition:0.3s ease;
        text-decoration:none !important;
        margin-left:10px;
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

    /* ================= FORM SECTION ================= */

    .main-container{
        padding:40px 15px;
    }

    .form-card{
        background:white;
        border-radius:20px;
        padding:40px;
        box-shadow:0 8px 25px rgba(0,0,0,0.08);
    }

    .page-title{
        text-align:center;
        margin-bottom:30px;
    }

    .page-title h2{
        color:#203a43;
        font-weight:bold;
        font-size:36px;
    }

    .page-title p{
        color:#666;
        font-size:16px;
    }

    .form-label{
        font-weight:600;
        color:#203a43;
    }

    .form-control,
    .form-select{
        border-radius:12px;
        padding:12px;
        border:1px solid #ced4da;
        transition:0.3s ease;
    }

    .form-control:focus,
    .form-select:focus{
        border-color:#203a43;
        box-shadow:0 0 8px rgba(32,58,67,0.2);
    }

    .submit-btn{
        background:linear-gradient(90deg,#11998e,#38ef7d);
        border:none;
        padding:12px 35px;
        border-radius:30px;
        color:white;
        font-size:18px;
        font-weight:bold;
        transition:0.3s ease;
    }

    .submit-btn:hover{
        transform:translateY(-3px);
        box-shadow:0 8px 20px rgba(0,0,0,0.2);
    }

    .success-msg{
        text-align:center;
        margin-top:20px;
        font-size:20px;
        color:green;
        font-weight:600;
    }

    .footer{
        margin-top:40px;
        text-align:center;
        color:#777;
        font-size:14px;
        padding:15px;
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

<!-- ================= FORM SECTION ================= -->

<div class="container main-container">

    <div class="row justify-content-center">

        <div class="col-lg-8">

            <div class="form-card">

                <!-- TITLE -->

                <div class="page-title">

                    <h2>
                        <i class="fa-solid fa-circle-question"></i>
                        Add Question
                    </h2>

                    <p>
                        Add new quiz questions with options and technology.
                    </p>

                </div>

                <!-- FORM -->

                <form action="saveQuestion" method="POST">

                    <!-- QUESTION -->

                    <div class="mb-4">

                        <label class="form-label">
                            Question
                        </label>

                        <input type="text"
                               class="form-control"
                               name="qname"
                               placeholder="Enter question here"
                               required>

                    </div>

                    <!-- OPTIONS -->

                    <label class="form-label mb-3">
                        Options
                    </label>

                    <div class="mb-3">
                        <input type="text"
                               class="form-control"
                               name="opt1"
                               placeholder="Option 1"
                               required>
                    </div>

                    <div class="mb-3">
                        <input type="text"
                               class="form-control"
                               name="opt2"
                               placeholder="Option 2"
                               required>
                    </div>

                    <div class="mb-3">
                        <input type="text"
                               class="form-control"
                               name="opt3"
                               placeholder="Option 3"
                               required>
                    </div>

                    <div class="mb-4">
                        <input type="text"
                               class="form-control"
                               name="opt4"
                               placeholder="Option 4"
                               required>
                    </div>

                    <!-- CORRECT ANSWER -->

                    <div class="mb-4">

                        <label class="form-label">
                            Correct Solution
                        </label>

                        <select class="form-select"
                                name="correct_Opt">

                            <option value="Option 1">
                                Option 1
                            </option>

                            <option value="Option 2">
                                Option 2
                            </option>

                            <option value="Option 3">
                                Option 3
                            </option>

                            <option value="Option 4">
                                Option 4
                            </option>

                        </select>

                    </div>

                    <!-- TECHNOLOGY -->

                    <div class="mb-4">

                        <label class="form-label">
                            Technology
                        </label>

                        <select class="form-select"
                                name="technoName">

                            <c:forEach var="one" items="${techName}">

                                <option value="${one}">
                                    ${one}
                                </option>

                            </c:forEach>

                        </select>

                    </div>

                    <!-- BUTTON -->

                    <div class="text-center">

                        <button type="submit"
                                class="submit-btn">

                            <i class="fa-solid fa-plus"></i>
                            Add Question

                        </button>

                    </div>

                </form>

                <!-- SUCCESS MESSAGE -->

                <div class="success-msg">
                    ${successMsg}
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>