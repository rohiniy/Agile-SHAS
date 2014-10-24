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
<title>Login Form</title>
</head>
<body>
<center>
	<form action="http://localhost:8080/SHAS/LoginServlet" method="post">
	<fieldset style="width: 400px">
	<legend>Login to SHAS</legend>
	<table>
	<% //if(request.getParameter("error")=="invalidUser"){ 
	if(request.getParameter("error")!=null){ %>
	<tr><td colspan = 2> Invalid Username/Password. Please try again.</td> </tr>
	<%} %>
		<tr>
			<td> Username </td>
			<td> <input type="username" name ="username">
		</tr>
		<tr>
			<td> Password </td>
			<td> <input type=password name ="password">
		</tr>
		<tr>
		</tr>
		<tr>
			<td> <input type="submit" value =Submit> </td>
			<td> <input type="reset" value = Refresh> </td>
		</tr>
	</table>
	</fieldset>
	</form> <br/>
	<a href="http://localhost:8080/SHAS/jsp/register.jsp">Register</a> now to get started!!.
</center>
</body>

</html>
<%}%>