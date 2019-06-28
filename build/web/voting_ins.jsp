<%-- 
    Document   : voting_ins
    Created on : 13 Jun, 2019, 4:19:01 PM
    Author     : KYSGATTU
--%>

<%@ include file="connection.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Voting Backend</title>
    </head>
    <script>
            function redirect()
            {
                location.replace("home.jsp");
            }
    </script>    
    <body style="background-color:#EBEBEB">
        
        
        
        <%
        String uid=request.getParameter("VID");
        String name=request.getParameter("CAND");
        
        PreparedStatement ps=con.prepareStatement("INSERT INTO voting VALUES(?,?)");
        ps.setString(1,uid);
        ps.setString(2,name);
        ps.executeUpdate();

                
        %>
        <h2 align="center"><b><u>Your vote has been casted succesfully...</u></b></h2>
        <p align="center"><button  onclick="redirect()">Go To Home</button></p>
        
    </body>
</html>       