<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<center>

<h2>Add a new Technology</h2>

<form action="newTech" method="get">

<input type="text" name="tech" placeholder="Enter New Technology"><br><br>
<input type="submit" value="Add">
</form>

${msg }

</center>

</body>
</html>