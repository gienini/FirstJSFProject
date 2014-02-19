<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="javax.jws.soap.InitParam"%>
<%@page import="test.Tiempo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>



<%!Tiempo t = new Tiempo();
String base = getServletContext().getRealPath("/");%>
<%
	t.start();
%>
 
  
  
<%@ taglib uri="../WEB-INF/lib/CustomTag.jar" prefix="ct" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<fmt:formatNumber value="12">

		</fmt:formatNumber>


	<c:if test="${fn:contains('HOLA','HOLA')}">
		<p>SE CONTIENE</p>
	</c:if>

	<c:if test="${fn:contains('HOLA2','MAHALO')}">
		<p>SE CONTIENE</p>
	</c:if>
	<c:if test="${fn:contains('HOLA2','MAHALO')}">
		<p>SE CONTIENE</p>
	</c:if>
	<%
		out.print("Temps de carrega de la pagina: "+String.valueOf(t.interrumpe())+" milisegons");
	%>
	  <h2 align="center"><ct:today format="MMMM dd, yyyy"/></h2>
	
</body>
</html>