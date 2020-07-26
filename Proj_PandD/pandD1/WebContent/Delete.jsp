<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="dbModify.DeleteData,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String msg;
DeleteData DDobj=new DeleteData();
String str = request.getParameter("table");
String str2 = request.getParameter("id");

System.out.println("21355555555555555"+str+"id"+str2);
switch(str) 
{ 
    case "link": 
    	DDobj.setQuery(request.getParameter("table"));
    	 msg=DDobj.Deletelink(request.getParameter("id"));
    	 response.sendRedirect("link_table.jsp");

       
        break; 
    case "up":
    	DDobj.setQuery(request.getParameter("table"));
        msg=DDobj.DeleteUpdate(request.getParameter("id"));
        response.sendRedirect("update_table.jsp");
        
       break; 
    case "video": 
    	DDobj.setQuery(request.getParameter("table"));
   	 msg=DDobj.DeleteVideo(request.getParameter("id"));
   	response.sendRedirect("video_table.jsp");
    
       
       break;
    case "photo": 
    	DDobj.setQuery(request.getParameter("table"));
    	String folderPath=getServletContext().getRealPath("/")+"assets\\img\\PhotoBlog"+File.separator+request.getParameter("folderName");
    	System.out.println("QQQQQQQQ"+folderPath);
   	msg=DDobj.DeletePhoto(request.getParameter("id"),folderPath);
   	response.sendRedirect("photo_table.jsp");
     
       
       break;
    default: 
        System.out.println("no match"); 
} 

%>

</body>
</html>