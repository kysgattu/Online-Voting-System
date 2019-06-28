<%-- 
    Document   : cand_ins
    Created on : 13 Jun, 2019, 3:21:26 PM
    Author     : KYSGATTU
--%>

<%@ include file="connection.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Candidate Registration Backend</title>
    </head>
    <script>
            function redirect()
            {
                location.replace("home.jsp");
            }
    </script>

    <body style="background-color:#EBEBEB">

        
        <%
        String name=request.getParameter("NAME");
        String age=request.getParameter("AGE");
        String gen=request.getParameter("GEN");
        String address=request.getParameter("ADDRESS");
        String city=request.getParameter("CITY");
        String state=request.getParameter("STATE");
        String pincode=request.getParameter("PINCODE");
        String mobno=request.getParameter("MOBNO");
        String email=request.getParameter("EMAIL");
        String party=request.getParameter("PARTY");
        String cid=request.getParameter("CID");
        String pwd=request.getParameter("PWD");
        String cnfpwd=request.getParameter("CNFPWD");
        
        PreparedStatement ps=con.prepareStatement("INSERT INTO cand_reg VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)");
        
        ps.setString(1,name);
        ps.setString(2,age);
        ps.setString(3,gen);
        ps.setString(4,address);
        ps.setString(5,city);
        ps.setString(6,state);
        ps.setString(7,pincode);
        ps.setString(8,mobno);
        ps.setString(9,email);
        ps.setString(10,party);
        ps.setString(11,cid);
        ps.setString(12,pwd);
        ps.setString(13,cnfpwd);
        ps.executeUpdate();
        
        %>
        <h2 align="center"><b><u>Nomination For Participating in the Election Successful!!!</u></b></h2>
        <p align="center"><button  onclick="redirect()">Go To Home</button></p>

    </body>
    
</html>       