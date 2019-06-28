<%-- 
    Document   : del_user
    Created on : 16 Jun, 2019, 5:20:15 PM
    Author     : KYSGATTU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Voters</title>
    </head>
<body style="background-color:#EBEBEB">
        <h1 align="center"><u>Delete Voters</u></h1>
        <form action="del_user_ins.jsp" onsubmit="return checkForm(this)" name="form" method="post">
        <table align="center" cellspacing="7">
            <tr><td align="right">Enter the User Id Of the Voter to be removed</td>
                <td align="left"><input type="text" name="DUID" value="" size="50" align="left">                                                        
            </tr>        
        </table>
        
        <p align="center"><input type="submit" name="submit" value="submit" align="right" >
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <input type="reset" name="cancel" value="cancel" align="left"></p>
        </form>
    </body>
</html>
