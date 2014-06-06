<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>admin</title>
	<link rel="stylesheet" type="text/css"	href="resources/admin/css/bootstrap.css">
</head>
<body>
	<h1> Admin Login </h1>
	<form action="admin_main">
		<label for="id" >ID</label>
		<input type="text" id="id" />
		
		<label for="pwd">Password</label>
		<input type="password" id="pwd" />
		
		<input type="submit" value="login" />
	</form>
		<a href="join"><button>Join</button></a>
</body>
</html>