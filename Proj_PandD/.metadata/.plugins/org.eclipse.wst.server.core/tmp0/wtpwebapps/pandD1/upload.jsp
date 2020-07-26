<%@page import="java.util.Enumeration"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,DataBase.MysqlConnection,dbModify.Upload"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Upload upObj = new Upload();

Enumeration paramNames = request.getParameterNames();
while(paramNames.hasMoreElements()) {
   String paramName = (String)paramNames.nextElement();
   
   if("LinkHeading".equals(paramName))
   {
	 String heading=request.getParameter("LinkHeading");
	 String url=request.getParameter("Link");
	String msg=upObj.link(heading, url);
	System.out.println(msg);
	response.sendRedirect("upload.html");
	
   } 
   
   if("UpdateHeading".equals(paramName))
   {
	 String heading=request.getParameter("UpdateHeading");
	 String url=request.getParameter("Link");
	String msg=upObj.update(heading, url);
	System.out.println(msg);
	response.sendRedirect("upload.html");
   }
   
   if("VideoHeading".equals(paramName))
   {
	 String heading=request.getParameter("VideoHeading");
	 String url=request.getParameter("EmbedLink");
	 String Description=request.getParameter("VideoDescription");
	 String date=request.getParameter("VideoDate");
	String msg=upObj.video(heading, url,Description,date);
	System.out.println(msg);
	response.sendRedirect("upload.html");
   }
   
   out.print("<tr><td>" + paramName + "</td>\n");
   String paramValue = request.getParameter(paramName);
   out.println("<td> " + paramValue + "</td></tr>\n");
}

String heading=request.getParameter("LinkHeading");
String url=request.getParameter("Link");
out.println(heading);

%>
</body>
</html>