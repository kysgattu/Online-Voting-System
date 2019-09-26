<%-- 
    Document   : view_user
    Created on : 12 Jun, 2019, 3:17:52 PM
    Author     : G KY SHASTRY
--%>

<%@ include file="connection.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Electoral Roll</title>
    </head>
    <script>
        function home()
        {
            location.replace("home.jsp");
        }
    </script>
    
<body style="background-color:#EBEBEB">
<center>
<font face="Calibri" size="36" color="#2F5496">
<p><u>Online Voting System</u></p></font>
<font face="Calibri Light" size="26" color="#4472C4">
<p><b><u>Electoral Roll</b></u></p></font>
<table border="7" style="border-collapse:collapse;border-spacing:0;border-color:#ccc;border-width:1px;"> <!border="1">
                <tr style="font-weight:bold;font-style:italic;text-decoration:underline;font-size:18px;font-family:"Comic Sans MS";">
                    <td style="color:#4472C4; text-align:center">First Name</td>
                    <td style="color:#4472C4;text-align:center">Last Name</td>
                    <td style="color:#4472C4;text-align:center;">Age</td>
                    <td style="color:#4472C4;text-align:center">Gender</td>
                    <td style="color:#4472C4;text-align:center">Aadhar</td>
                    <td style="color:#4472C4;text-align:center">Address</td>
                    <td style="color:#4472C4;text-align:center">City</td>
                    <td style="color:#4472C4;text-align:center">State</td>
                    <td style="color:#4472C4;text-align:center">Pincode</td>
                    <td style="color:#4472C4;text-align:center">Mobile no</td>
                    <td style="color:#4472C4; text-align:center">Email id</td>
                    
                    
               </tr>
            <tbody>
                <%
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from user_reg");
                    while(rs.next())
                     {
                %>
                <tr bgcolor=#f8f8f8>
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
                    <td><%=rs.getString(11)%></td>
                    
                    
                    
                </tr>
                <%
                      }
                %>


            </tbody>
           </table>
                <br>
<button  onclick="home()">Go Back</button>
       </center>
                
  </body>
</html>
