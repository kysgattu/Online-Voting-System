<%-- 
    Document   : voting
    Created on : 13 Jun, 2019, 3:56:37 PM
    Author     : KYSGATTU
--%>

<%@ include file="connection.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Election</title>
    </head>
<body style="background-color:#EBEBEB">
<h2 align="center"><b><u>Election</u></b></h2>
<form action="voting_ins.jsp" name="form" method="post">


<table cellspacing="7" align="center">
<tr><td align="right"><b>Enter Your User ID:</b>
    <td> <input type="text" name="VID" value="" size="20" align="left">                                                        
<tr><td align="right"><b>Vote For A Candidate From Below:</b>
    <td>
        <%
          Statement statement = con.createStatement() ;
          ResultSet rs =statement.executeQuery("select name from cand_reg") ;
        %>

        <select name="CAND">
        <option value=""></option>    
        <%  while(rs.next()){ %>
        <option value="<%= rs.getString(1)%>"><%= rs.getString(1)%></option>
        <% } %>
        </select> 
</table>


<table cellspacing="10" align="center">
<tr>
    <td> <input type="submit" name="submit" value="submit" align="right" >
    <td> <input type="reset" name="cancel" value="cancel" align="left">
</table>
<br>

</form>
</body>
</html>
