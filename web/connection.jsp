<%-- 
    Document   : connection
    Created on : 6 Jun, 2019, 4:15:57 PM
    Author     : G KY SHASTRY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JDBC Connection</title>
    
</head>
    
    <body style="background-color:#EBEBEB">
<%@page import="java.sql.*"%>
    
    <%@page import="java.io.*" %>
    
    <%! Connection con;%>
      
 <% Class.forName("com.mysql.jdbc.Driver");
 
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_voting","root","root");
    
    
        %>
        
    </body>
</html>
