<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url value="/artist/logout" var="artist_logout" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Artist</title>
</head>
<body>
	Welcome back! ${artist.lastname} ${artist.firstname}
	<a href="${artist_logout}">Logout</a>
	<center>
		<h1>MaiID Engine</h1>
		<div style="width:800px;">
			<div style="width:800px;float:left;height: 200px;border:1px solid #000;margin:5px;">
				<h2>My account</h2>
			</div>
			<div style="width:800px;float:left;height: 50px;border:1px solid #000;margin:5px;"><h5>Card list</h5></div>
		</div>
	</center>
</body>
</html>