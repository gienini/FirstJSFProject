<%@page import="DAO.ActivitatJNDIDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.Connection"  %>
<%@ page import="javax.naming.Context"  %>
<%@ page import="javax.naming.InitialContext"  %>
<%@ page import="javax.sql.DataSource"  %>
<%@ page import="java.sql.PreparedStatement"  %>
<%@ page import="java.sql.ResultSet"  %>
<%@ page import="java.util.ArrayList"  %>


<% Context init = new InitialContext(); 
Context env = (Context) init.lookup("java:comp/env");
DataSource ds = (DataSource) env.lookup("jdbc/bbdd");
Connection con = ds.getConnection();
ActivitatJNDIDAO aj = new ActivitatJNDIDAO(con);
ArrayList<beans.Activitat> lista = aj.getAll();
for (beans.Activitat a : lista){
	out.println(a.getNom());
	out.println("TOMA TOMA <br>");
	
}%>




</body>
</html>