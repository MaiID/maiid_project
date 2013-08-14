<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url value="/artist/register" var="artist_register_url" />
<spring:url value="/artist/login" var="artist_login_url" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Maiid - Login</title>
</head>
<body>
	<center>
		<h1>Maiid Engine</h1>
		<h2>Artist login</h2>
		<table>
			<tr>
				<td>
					<div>You are not member?</div> <a href="${artist_register_url}"><button
							style="width: 150px; height: 70px; margin: 10px;">Artist
							Register</button></a>
				</td>
				<td>
					<div>
						<form action="${artist_login_url}" method="POST">
							<div>Email: <input id="email" name="email" /></div>
							<div>Password: <input id="password" name="password" /></div>
							<div><input type="submit"/></div>
						</form>
					</div>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>