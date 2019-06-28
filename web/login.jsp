<%-- 
    Document   : login
    Created on : 16 Jun, 2019, 9:30:49 AM
    Author     : KYSGATTU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
</head>    
    <body style="background-color:#EBEBEB">
<h2 align="center"><b><u>LOGIN</u></b></h2>
<table frame="box" border="3" align="center">
    <tr><td align="center">
            <b><u>Voter Login</b></u>
    </td></tr>
    <tr>
        <td>
            <form action="user_logchck.jsp" method="post" name="form">
            <table align="center">
                <tr><td><b>Username:</b>
                    <td><input type="text" name="CHCKID">
                <tr><td><b>Password:</b>
                    <td><input type="password" name="CHCKPWD">
            </table>
            
            <p align="center"> <button>SIGN IN </button></p>
            </form>
        </td>
    </tr>
    <tr><td align="center">
            <b><u>Candidate Login</u></b>
    </td></tr>
    <tr>
        <td>
            <form action="cand_logchck.jsp" method="post" name="form">
            <table align="center">
                <tr><td><b>Username:</b>
                    <td><input type="text" name="CHCKID">
                <tr><td><b>Password:</b>
                    <td><input type="password" name="CHCKPWD">
            </table>
            
            <p align="center"> <button>SIGN IN </button></p>
            </form>
        </td>
    </tr>
    <tr><td align="center">
            <b><u>Admin Login</u></b>
    </td></tr>
    <tr>
        <td>
            <form action="admin_logchck.jsp" method="post" name="form">
            <table align="center">
                <tr><td><b>Username:</b>
                    <td><input type="text" name="CHCKID">
                <tr><td><b>Password:</b>
                    <td><input type="password" name="CHCKPWD">
            </table>
            
            <p align="center"> <button>SIGN IN </button></p>
            </form>
        </td>
    </tr>
</table>

</body>
</html>