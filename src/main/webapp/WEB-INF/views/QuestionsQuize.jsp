<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exam Paper</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .exam-container {
            max-width: 800px;
            margin: 50px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .question {
            margin-bottom: 20px;
        }
        .options li {
            list-style: none;
        }
        .submit-btn {
            display: block;
            width: 50%;
            margin: 20px auto;
            font-size: 18px;
        }
    </style>
</head>
<body>

<div class="exam-container">
    <h2 class="text-center mb-4">Online Quize Examination</h2>

    <form action="checkAns" method="post">
        <ol type="1">
            <c:forEach var="question" items="${Questions}">
                <li class="question">
                    <h4>${question.qname}</h4>

                    <!-- Hidden input to pass question IDs -->
                    <input type="hidden" name="questionIds" value="${question.qid}">

                    <ul class="options">
    <li>
        <label>
            <input type="radio" value="Option 1" name="${question.qid}">
            ${question.opt1}
        </label>
    </li>
    <li>
        <label>
            <input type="radio" value="Option 2" name="${question.qid}">
            ${question.opt2}
        </label>
    </li>
    <li>
        <label>
            <input type="radio" value="Option 3" name="${question.qid}">
            ${question.opt3}
        </label>
    </li>
    <li>
        <label>
            <input type="radio" value="Option 4" name="${question.qid}">
            ${question.opt4}
        </label>
    </li>
</ul>
                </li>
            </c:forEach>
        </ol>

        <!-- Submit Button -->
        <button type="submit" class="btn btn-success submit-btn">Submit</button>
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
