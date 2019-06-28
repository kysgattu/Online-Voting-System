<%-- 
    Document   : cand_list
    Created on : 13 Jun, 2019, 3:34:57 PM
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
        <title>Change User Password Backend</title>
    </head>
    <script>
            function back()
            {
                location.replace("user_home.jsp");
            }

    </script>
    
    <body style="background-color:#EBEBEB">
       <%
           Statement st=con.createStatement();
           String CHCKID=request.getParameter("CHCKID");
           String CHCKPWD=request.getParameter("CHCKPWD");
           String pwd=request.getParameter("NWPWD");
           String cnfpwd=request.getParameter("CNFNWPWD");
           

           session.setAttribute("sid",CHCKID);
           
           String s=(String)session.getAttribute("sid");

           
           ResultSet rs=st.executeQuery("select uid,pwd from user_reg where uid='"+CHCKID+"'");
           if(rs.next())
               {
               String u=rs.getString(1);
               String p=rs.getString(2);
               if(u.equals(CHCKID)&&p.equals(CHCKPWD))
                   {
       %>
       <%            
                   PreparedStatement ps=con.prepareStatement("UPDATE user_reg set pwd=?,cnfpwd=? where uid='"+CHCKID+"'");
                   ps.setString(1,pwd);
                   ps.setString(2,cnfpwd);
                   ps.executeUpdate();
                   
       %>          
       <h4 align="center">Password Changed Successfully!!!</h2>            
       <p align="center"><button  onclick="back()">Go Back</button></p>
       <%
                  }
               else
                
                  {
       %>
               <jsp:forward page="error.jsp"/>
       <%
               }
               } 
               else
               {
       %>
                  <jsp:forward page="home.jsp"/>
       <%
               }
       
       %>
       
       
                   
     </body>
</html>
