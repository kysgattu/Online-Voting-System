<%-- 
    Document   : contestants
    Created on : 18 Jun, 2019, 3:59:05 PM
    Author     : G KY SHASTRY
--%>


<%@ include file="connection.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contestants List</title>
    </head>
    <script>
            function voting()
            {
                location.replace("checkvoting.jsp");
            }
            function back()
            {
                location.replace("user_home.jsp");
            }

    </script>
    
    <body style="background-color:#EBEBEB">
        <h2 align="center">Available Candidates For Voting</h2>
        <center>
            <table border="1">
                <tr>
                    <td>Name</td>
                    <td>Age</td>
                    <td>Gender</td>
                    <td>Party</td>                    
               </tr>
            <tbody>
                <%
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select name,age,gen,party from cand_reg");
                    while(rs.next())
                     {
                %>
                <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    
                    
                </tr>
                <%
                      }
                %>


            </tbody>
           </table>
       </center>
    <br><br>
    <table align="center">
        <tr><th>Click For Voting:</th><td><button  onclick="voting()">Voting</button></td></tr>
        <tr><th>Click to go back:</th><td><button  onclick="back()">Go back</button></td></tr>
    </table>


</body>
</html>