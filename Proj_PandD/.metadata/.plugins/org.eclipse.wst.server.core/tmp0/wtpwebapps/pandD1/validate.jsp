<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

  <%
String username=request.getParameter("UserName");
String password=request.getParameter("Password");
if(username != null && password != null && ("pandd").equals(username) && ("PandD1234").equals(password))
{
	
	response.sendRedirect("upload.html");
	
	
}
else
{%>
<script type="text/javascript">
			alert("you are not permited!!!.");				
			window.location="admin.html";
			</script>
			
	
<%
}
%>

 
 </body>
</html>