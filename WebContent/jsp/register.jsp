<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%
	session = request.getSession(false);
	if(session.getAttribute("user")!=null && !(null==session)){System.out.println("Null NAHI HAI");
		response.sendRedirect(getServletContext().getContextPath()+"/jsp/index.jsp");
	}
	else{
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
</head>
<body>
<center>
	<form action="http://localhost:8080/SHAS/RegisterUserServlet" method="post">
	<fieldset style="width: 400px">
	<legend>Register to SHAS</legend>
	<table>
	<tr>
			<td> First Name : </td>
			<td> <input type="text" name ="fname">
		</tr>
		<tr>
			<td> Last Name : </td>
			<td> <input type="text" name ="lname">
		</tr>
		<tr>
			<td> Username : </td>
			<td> <input type="text" name ="username">
		</tr>
		<tr>
			<td> Password : </td>
			<td> <input type=password name ="password">
		</tr>
		<tr>
			<td> Email : </td>
			<td> <input type="email" name ="email">
		</tr>
		<tr>
			<td> Phone : </td>
			<td> <input type="tel" name ="phone">
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
<%}%>
