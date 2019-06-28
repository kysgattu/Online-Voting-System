<%-- 
    Document   : user_home
    Created on : 17 Jun, 2019, 3:21:18 PM
    Author     : KYSGATTU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Voter Home Page</title>
    </head>
    <script>
            function view_cand()
            {
                location.replace("contestants.jsp");
            }
            function changepassword()
            {
                location.replace("user_chng_pwd.jsp");
            }

    </script>
    
<body style="background-color:#EBEBEB">
        <h1 align="center"><u>Online Voting</u></h1>
        <table align="center" cellspacing="7">
            <tr><td align="left">View Candidates</td>
                <td align="left"><button onclick="view_cand()">Candidates List</button>
            </tr>        
            <tr><td align="left">Change Password</td>
                <td align="left"><button onclick="changepassword()">Change Password</button>
            </tr>
        </table>
    </body>
</html>
