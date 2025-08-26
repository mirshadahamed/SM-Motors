<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<link rel="stylesheet" href="css\adminlog.css">
</head>

<body>

 <jsp:include page="header.jsp" />

<div class="wrapper">
	<div class="container">
		<h1>WelcomeAdmin</h1>
	
					<form class="login100-form validate-form" action="Systemprofile" method="POST">

			<input type="text" placeholder="Mail" name="mail_id">
			<input type="password" placeholder="Password"  name="pasdword">
			<button type="submit" value="Submit" id="login-button">Login</button>
		</form>
	</div>
	
</div>


</body>
</html>
	


