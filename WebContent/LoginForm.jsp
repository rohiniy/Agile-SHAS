<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
</head>
<body>
<center>
	<form action="./LoginServlet" method="post">
	<fieldset style="width: 400px">
	<legend>Login to SHAS</legend>
	<table>
	<tr></tr>
		<tr>
			<td> Username </td>
			<td> <input type="text" name ="userId">
		</tr>
		<tr>
			<td> Password </td>
			<td> <input type=password name =pwd>
		</tr>
		<tr>
		</tr>
		<tr>
			<td> <input type="submit" value =Submit> </td>
			<td> <input type="reset" value = Refresh> </td>
		</tr>
	</table>
	</fieldset>
	</form>
</center>
</body>

</html>