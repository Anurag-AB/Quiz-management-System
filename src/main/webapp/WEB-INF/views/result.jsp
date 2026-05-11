<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Quiz Result</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .result-container {
            max-width: 500px;
            margin: 100px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .result-text {
            font-size: 24px;
            font-weight: bold;
            color: #333;
        }
        .percentage {
            font-size: 20px;
            font-weight: bold;
            color: #007bff;
        }
        .message {
            font-size: 18px;
            font-weight: bold;
            margin-top: 10px;
        }
        .fail {
            color: red;
        }
        .btn-try-again {
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 18px;
        }
    </style>
</head>
<body>

<div class="result-container">
    <h2>📊 Exam Result</h2>

    <!-- Score & Percentage -->
    <p class="result-text">Your Score: <c:out value="${score}" /></p>
    <p class="percentage">Percentage: <c:out value="${percentage}" />%</p>

    <!-- Performance Message -->
    <c:choose>
        <c:when test="${percentage >= 90}">
            <p class="message text-success">🎉 Excellent! You did a fantastic job! 🚀</p>
        </c:when>
        <c:when test="${percentage >= 80}">
            <p class="message text-primary">😊 Very Good! Keep up the great work!</p>
        </c:when>
        <c:when test="${percentage >= 70}">
            <p class="message text-info">👍 Good! But you can do even better!</p>
        </c:when>
        <c:when test="${percentage >= 40}">
            <p class="message text-warning">😐 You passed, but there’s room for improvement!</p>
        </c:when>
        <c:otherwise>
            <p class="message fail">❌ You Failed. Try Again and Do Better Next Time!</p>
        </c:otherwise>
    </c:choose>

    <!-- Try Again Button -->
    <a href="getQuestion" class="btn btn-primary btn-try-again">🔄 Try Again</a>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
