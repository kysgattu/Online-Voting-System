<%-- 
    Document   : cand_logchck
    Created on : 17 Jun, 2019, 3:08:59 PM
    Author     : KYSGATTU
--%>

<%@ include file="connection.jsp" %>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Candidate Login Backend</title>
    </head>
    <body style="background-color:#EBEBEB">
       <%
           Statement st=con.createStatement();
           String CHCKID=request.getParameter("CHCKID");
           String CHCKPWD=request.getParameter("CHCKPWD");
           

           session.setAttribute("sid",CHCKID);
           
           String s=(String)session.getAttribute("sid");

           
           ResultSet rs=st.executeQuery("select cid,pwd from cand_reg where cid='"+CHCKID+"'");
           if(rs.next())
               {
               String u=rs.getString(1);
               String p=rs.getString(2);
               if(u.equals(CHCKID)&&p.equals(CHCKPWD))
                   {
                   %>
                   <jsp:forward page="cand_home.jsp"/>
                   <%
                  }
               else
                
               {%>
               <jsp:forward page="error.jsp"/>
               <%
               }
               } 
               else
               {
                  %>
                  <jsp:forward page="error.jsp"/>
                  <%
               }
       
       %>
       
       
                   
     </body>
</html>
