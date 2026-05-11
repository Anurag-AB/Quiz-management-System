<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <title>Product Entry</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        .form-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        input[type="text"], input[type="email"],input[type="password"] {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Student SignUp</h2>
        <form action="AdminAddUser" method="post" modelAttribute="AdminSignUpDto">
<input type="email" name="email" placeholder="Enter Email" required/><br>
<input type="text" name="username" placeholder="Enter userName" required/><br>
<input type="password" name="password" placeholder="Enter Password" required minlength="6"/><br>

<!--  name attributes value must be same with class variable 
 -->
 
 <center><input type="radio" name="role" value="faculty" required>Faculty</center>
  <center><input type="radio" name="role" value="student">Student</center><br>
 
<input type="submit" value="Register">

<br>
 <center><a href="/Admin">Go To Home</a>
 
 </center>

</form>

<br><br>



    </div>
    <center><h2>${message}</h2></center>
</body>
</html>
