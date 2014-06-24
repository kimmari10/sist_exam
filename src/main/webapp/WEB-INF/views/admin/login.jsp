<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>admin</title>
	<link rel="stylesheet" type="text/css"	href="resources/admin/css/bootstrap.css">
</head>
<body>
	<h1> Admin Login </h1>
	<form action="loginProc" class="form_box" method="post">
		<label for="uid" >ID</label>
		<input type="text" name="uid" /><br />
		
		<label for="pwd">Password</label>
		<input type="password" name="pwd" /><br />
		
		<input type="submit" value="login" />
	</form>
		<a href="join"><button>Join</button></a>
</body>
</html>