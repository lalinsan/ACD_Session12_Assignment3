<!--  
* Student: Eduardo Aguirre
* Session 12
* Assignment 3
* Java Server Page that shows the use Implicit Objects to call them directly without being explicitly declared 
*/
-->

<%@ page import="java.io.*,java.util.*" %> <!-- Import Java io and Java Util classes -->
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Index JSP Page</title>
</head>
<body>
<h2 align="center">Implicit Objects</h2>
<h4>Hi There</h4> <!-- Welcome Message -->
<strong>Current Time is</strong>: <% out.print(new Date()); %><br><br> <!-- Get Current Date -->

<strong>Request User-Agent</strong>: <%=request.getHeader("User-Agent") %><br><br> <!-- Get User Agent -->

<%response.addCookie(new Cookie("Test","Value")); %>

<strong>User context param value</strong>:<%=application.getInitParameter("User") %><br><br> <!-- Get User Context -->

<strong>User Session ID</strong>:<%=session.getId() %><br><br> <!-- Get Session ID -->

<% pageContext.setAttribute("Test", "Test Value"); %>
<strong>PageContext attribute</strong>: {Name="Test",Value="<%=pageContext.getAttribute("Test") %>"}<br><br>

<strong>Generated Servlet Name</strong>:<%=page.getClass().getName() %>

</body>
</html>