<%-- 
    Document   : del_cand_ins
    Created on : 16 Jun, 2019, 5:41:53 PM
    Author     : KYSGATTU
--%>

<%@ include file="connection.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Candidate Backend</title>
    </head>
    <script>
            function redirect()
            {
                location.replace("view_cand.jsp");
            }
    </script>
    
    <body style="background-color:#EBEBEB">
     <%
        String cand_id=request.getParameter("DCID");
        Statement st=con.createStatement();
        st.executeUpdate("delete from cand_reg WHERE cid='"+cand_id+"'");
        out.println("Deleted successfully");
     %>   
        <h2 align="center"><b><u>Voter Deleted Successfully</u></b></h2>
        <p align="center"><button  onclick="redirect()">Updated Voters List</button></p>
    </body>
</html>
