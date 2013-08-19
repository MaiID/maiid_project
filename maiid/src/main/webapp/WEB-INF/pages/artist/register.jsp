<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url value="/artist/do_register" var="artist_sendregister_url" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link
	href="http://code.jquery.com/ui/1.10.3/themes/hot-sneaks/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script>

	$(document).ready(function() {
		$("#class").tabs();

		$('#dateofbirth').datepicker({
			showOn : 'both',
			buttonImageOnly : true,
			autoSize : true
		}).datepicker( "option", "showAnim","slideDown");

		$("#sub").button().click(function(event) {
			$("#rform").submit();
		});

		$("#height").spinner();
		$("#weight").spinner();
		$("#chest").spinner();
		$("#waist").spinner();
		$("#hip").spinner();

		$("#next1").button().click(function(event) {
			event.preventDefault();
			$("#class").tabs("option", "active", 1);
		});
		$("#next2").button().click(function(event) {
			event.preventDefault();
			$("#class").tabs("option", "active", 2);
		});

		$("#back1").button().click(function(event) {
			event.preventDefault();
			$("#class").tabs("option", "active", 0);
		});
		$("#back2").button().click(function(event) {
			event.preventDefault();
			$("#class").tabs("option", "active", 1);
		});
	});
</script>
</head>
<body>
	<center>
		<h1>Maiid Engine</h1>
		<form id="rform" action="${artist_sendregister_url}" method="POST">
			<div id="class" style="width: 700px;">
				<ul>
					<li><a href="#class-1">Class A - Basic information</a></li>
					<li><a href="#class-2">Class B - Details</a></li>
					<li><a href="#class-3">Confirmation</a></li>
				</ul>
				<div id="class-1">
					<table>
						<tr>
							<td>Email:</td>
							<td><input type="text" id="email" size="25" name="email" /></td>
						</tr>
						<tr>
							<td>Password</td>
							<td><input type="text" id="password" size="17"
								name="password" /></td>
						</tr>
						<tr>
							<td>Confirm password:</td>
							<td><input type="text" id="confirm_password" size="17"
								name="confirm_password" /></td>
						</tr>
						<tr>
							<td>Lastname:</td>
							<td><input type="text" id="lastname" size="15"
								name="lastname" /></td>
						</tr>
						<tr>
							<td>Firstname:</td>
							<td><input type="text" id="firstname" size="15"
								name="firstname" /></td>
						</tr>
						<tr>
							<td>Gender:</td>
							<td><input type="text" id="gender" size="15" name="gender" /></td>
						</tr>
						<tr>
							<td>Date of birth:</td>
							<td><input type="text" id="dateofbirth" size="15"
								name="dateofbirth" readonly /></td>
						</tr>
						<tr>
							<td>District:</td>
							<td><input type="text" id="district" size="15"
								name="district" /></td>
						</tr>
					</table>
					<input type="submit" href="#class-2" id="next1" value="Next" />
				</div>
				<div id="class-2">
					<table>
						<tr>
							<td>Name of crew/company:</td>
							<td><input type="text" id="crew" size="15" name="crew" /></td>
						</tr>
						<tr>
							<td>Height:</td>
							<td><input type="text" id="height" size="5" name="height" />
								cm</td>
						</tr>
						<tr>
							<td>Weight</td>
							<td><input type="text" id="weight" size="5" name="weight" />
								cm</td>
						</tr>
						<tr>
							<td>Chest:</td>
							<td><input type="text" id="chest" size="5" name="chest" />
								inch</td>
						</tr>
						<tr>
							<td>Waist:</td>
							<td><input type="text" id="waist" size="5" name="waist" />
								inch</td>
						</tr>
						<tr>
							<td>Hip:</td>
							<td><input type="text" id="hip" size="5" name="hip" /> inch</td>
						</tr>
						<tr>
							<td>Dress Size:</td>
							<td><input type="text" id="dresssize" size="15"
								name="dresssize" /></td>
						</tr>
						<tr>
							<td>Hair Color:</td>
							<td><input type="text" id="haircolor" size="15"
								name="haircolor" /></td>
						</tr>
					</table>
					<input type="submit" href="#class-1" id="back1" value="Back" /> <input
						type="submit" href="#class-3" id="next2" value="Next" />
				</div>
				<div id="class-3">
					<input type="submit" href="#class-1" id="back2" value="Back" /> <input
						id="sub" type="submit" value="Submit" />
				</div>
			</div>
		</form>
	</center>
</body>
</html>