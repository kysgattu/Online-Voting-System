<%-- 
    Document   : del_user_ins
    Created on : 16 Jun, 2019, 5:27:07 PM
    Author     : KYSGATTU
--%>

<%@ include file="connection.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete User Backend</title>
    </head>
    <script>
            function redirect()
            {
                location.replace("view_user.jsp");
            }
    </script>
    
    <body style="background-color:#EBEBEB">
     <%
        String user_id=request.getParameter("DUID");
        Statement st=con.createStatement();
        st.executeUpdate("delete from user_reg WHERE uid='"+user_id+"'");
        out.println("Deleted successfully");
     %>   
        <h2 align="center"><b><u>Voter Deleted Successfully</u></b></h2>
        <p align="center"><button  onclick="redirect()">Updated Voters List</button></p>
    </body>
</html>
