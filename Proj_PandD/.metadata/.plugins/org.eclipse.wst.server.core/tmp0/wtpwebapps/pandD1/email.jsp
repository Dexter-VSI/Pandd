
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%

   String result;
int flag=0;
 String client_name=request.getParameter("name");
 String client_email=request.getParameter("email");
 String client_subject=request.getParameter("subject");
 String client_mob_no=request.getParameter("contactNo");
 String client_msg=request.getParameter("message");
 
 StringBuilder sb = new StringBuilder();
 sb.append("Client Name             : "+client_name).append(System.lineSeparator());
 sb.append("Client Email Address : "+client_email ).append(System.lineSeparator());
 sb.append("Client Mobile No.      : "+client_mob_no).append(System.lineSeparator());
 sb.append("Client Message         : "+client_msg);
 
   // Get system properties object
        Properties props = System.getProperties();

   // Setup mail server
        String host = "smtp.gmail.com";
        String from = "ca.pandd123@gmail.com";
        String pass = "PandD@123456#";
        String to = "info@pandd.in";
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.user", from);
        props.put("mail.smtp.password", pass);
        props.put("mail.smtp.port", "587");     //try 465, 25, 587
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.timeout", "25000");

   // Get the default Session object.
        Session mailsession = Session.getDefaultInstance(props);

   try{
      // Create a default MimeMessage object.
        MimeMessage message = new MimeMessage(mailsession);
      
        message.setFrom(new InternetAddress(from));  

        message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

        // Set Subject: header field
        message.setSubject(client_subject);
      
        // Now set the actual message
      
        message.setText(sb.toString() );
        
        
        //  if you want to send HTML page use  setContent(msg, "text/html");
      // message.setContent("<h1>This is actual message</h1>", "text/html" );
        // Send message
        Transport transport = mailsession.getTransport("smtp");
        transport.connect(host, from, pass);
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();
        result = "Sent message successfully....";
        flag=1;
    }catch (MessagingException mex) {
      mex.printStackTrace();
         result = "Error: unable to send message....";
    }
%>
<%-- <html>
<head>
<title>Send Email using JSP</title>
</head>
<body>
<center>
<h1>Send Email using JSP</h1>
</center>
<p align="center">
<%
   out.println("Result: " + result + "\n");
response.sendRedirect("contact.jsp");
%>
</p>
</body>
</html> --%>
<%if(flag==1)
{ %>
<script type="text/javascript">
			alert("Message Sent successfully!!");				
			window.location="contact.jsp";
			</script>
<%}
else
{ %>
<script type="text/javascript">
			alert("Trouble Sending Message!!!");				
			window.location="contact.jsp";
			</script>
	<%} %>
