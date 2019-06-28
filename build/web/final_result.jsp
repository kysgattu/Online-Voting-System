<%-- 
    Document   : result
    Created on : 16 Jun, 2019, 12:32:54 PM
    Author     : KYSGATTU
--%>

<%@ include file="connection.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Election Result</title>
    </head>
    <body style="background-color:#EBEBEB">
        <center>
                <%
                    Statement st1=con.createStatement();     
                    ResultSet rs1=st1.executeQuery("select count(*) as Total_Votes from voting");
                    while(rs1.next())
                    {
                    
                %>
                <h3 align="center">Total Votes Casted=<%=rs1.getString("Total_Votes")%></h3>
                <%}%>

            
            <table border="1">
                <tr>
                    <td>Candidate Name</td>
                    <td>Votes Gained</td>
               </tr>
            <tbody>
                <%
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select name,count(name) as Votes from voting group by name");
                    while(rs.next())
                    {
                %>
                
                <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                </tr>
                <%
                      }
                %>
            </tbody>
           </table>
       </center>
                <%
                    Statement st2=con.createStatement();     
                    ResultSet rs2=st2.executeQuery("select name,count(name) as votes from voting group by name order by votes desc limit 1");
                    while(rs2.next())
                    {
                    
                %>
                <h3 align="center">Maximum Number Of Votes are gained by <%=rs2.getString("name")%></h3>
                <h2 align="center">Winner of Election is "<u><i><font color="red"><%=rs2.getString("name")%></font></i></u>"<h2>
                <%}%>
            
  </body>
</html>