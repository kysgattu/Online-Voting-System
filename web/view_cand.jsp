<%-- 
    Document   : cand_list
    Created on : 13 Jun, 2019, 3:34:57 PM
    Author     : KYSGATTU
--%>

<%@ include file="connection.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Candidates</title>
    </head>
    <script>
        function admin_home()
        {
            location.replace("admin_home.jsp");
        }
    </script>
    
    <body style="background-color:#EBEBEB">
        <center>
            <h1>ONLINE VOTING</h1>
            <h2>Candidates Nominated</h2>
            <table border="1">
                <tr>
                    <td>Name</td>
                    <td>Age</td>
                    <td>Gender</td>
                    <td>Address</td>
                    <td>City</td>
                    <td>State</td>
                    <td>Pincode</td>
                    <td>Mobile no</td>
                    <td>Email id</td>
                    <td>Party</td>                    
               </tr>
            <tbody>
                <%
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select name,age,gen,address,city,state,pincode,mobno,email,party from cand_reg;");
                    while(rs.next())
                     {
                %>
                <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getString(7)%></td>
                    <td><%=rs.getString(8)%></td>
                    <td><%=rs.getString(9)%></td>
                    <td><%=rs.getString(10)%></td>
                    
                    
                </tr>
                <%
                      }
                %>


            </tbody>
           </table>
                <br>
           <button  onclick="admin_home()">Go Back</button>              

        </center>
  </body>
</html>
