<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Entry</title>
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

input[type="text"], input[type="number"] {
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
		<h2>Update Data</h2>
		<form action="updateSubmit" method="post">
		
						<input type="hidden" name="role" value="${student.role}" > 
<%-- 						<input type="hidden" name="role_Entity" value="${student.role_Entity}" >
 --%>		
			 <input type="text"  name="id" value="${student.id}" required readonly=true>  
				<input type="text" placeholder="Enter Name" name="username" value="${student.username}" required> 
				<input type="text" placeholder="Enter Address" name="password" value="${student.password}" required minlength="6"> 
				<input type="text" placeholder="Enter Fees" name="email" value="${student.email}" required> <br> 
				<input type="submit" value="Update"> <br> <br>

		</form>
	</div>
</body>
</html>
