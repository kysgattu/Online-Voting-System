<%-- 
    Document   : admin_home
    Created on : 16 Jun, 2019, 5:02:04 PM
    Author     : KYSGATTU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Election Administrator</title>
    </head>
    <script>
            function view_user()
            {
                location.replace("view_user.jsp");
            }
            function view_cand()
            {
                location.replace("view_cand.jsp");
            }
            function del_user()
            {
                location.replace("del_user.jsp");
            }
            function del_cand()
            {
                location.replace("del_cand.jsp");
            }
            function viewresult()
            {
                location.replace("result.jsp");
            }

    </script>
    
<body style="background-color:#EBEBEB">
        <h1 align="center"><u>Online Voting</u></h1>
        <table align="center" cellspacing="7">
            <tr><td align="left">View Enrolled Voters</td>
                <td align="left"><button onclick="view_user()">Voters List</button>
            </tr>        
            <tr><td align="left">View Candidates Nominated</td>
                <td align="left"><button onclick="view_cand()">Candidates List</button>
            </tr>
            <tr><td align="left">Remove Voters from List</td>
                <td align="left"><button onclick="del_user()">Delete Voters</button>
            </tr>
            <tr><td align="left">Disqualify Candidates</td>
                <td align="left"><button onclick="del_cand()">Delete Candidates</button>
            </tr>
            <tr><td align="left">Election Status</td>
                <td align="left"><button onclick="viewresult()">Election Status</button>
            </tr>
            
            
        </table>
    </body>
</html>
