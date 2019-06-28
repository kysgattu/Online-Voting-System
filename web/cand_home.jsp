<%-- 
    Document   : cand_home
    Created on : 18 Jun, 2019, 4:29:19 PM
    Author     : G KY SHASTRY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Candidate Home</title>
    </head>
    <script>
            function voting_status()
            {
                location.replace("votingstatus.jsp");
            }
            function changepassword()
            {
                location.replace("cand_chng_pwd.jsp");
            }

    </script>
    
<body style="background-color:#EBEBEB">
        <h1 align="center"><u>Online Voting</u></h1>
        <table align="center" cellspacing="7">
            <tr><td align="left">View Voting status</td>
                <td align="left"><button onclick="voting_status()">Voting Status</button>
            </tr>        
            <tr><td align="left">Change Password</td>
                <td align="left"><button onclick="changepassword()">Change Password</button>
            </tr>
        </table>
    </body>
</html>
