<%@page import="test.Logiando"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! Logiando l = new Logiando(System.getProperty("catalina.base"));%>
	<form action="login.jsp">
		<%@ page isErrorPage="true"%>
		<h3>Sorry an exception has occured!</h3>
		Exception is:
		<%=exception%>
		<br /> <input type="submit" value="Re-Compute" />
	</form>
	<%Logiando.l.error(exception); %>
</body>
</html>