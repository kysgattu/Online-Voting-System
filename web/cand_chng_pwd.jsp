<%-- 
    Document   : cand_chng_pwd
    Created on : 22 Jun, 2019, 9:57:24 AM
    Author     : KYSGATTU
--%>

<%@ include file="connection.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Candidate Password</title>
    </head>
    <script>
            function back()
            {
                location.replace("cand_home.jsp");
            }

    </script>
    
<form name="ChangePasswordForm" method="post" action="cand_chng_pwd_ins.jsp" >
<body>
        <h1 align="center"><u>Online Voting</u></h1>    
<table border="1" align="center">
<tr>
<td>Candidate ID</td>
<TD><input name="CHCKID" type="text"  size="20"></td>
</tr>
<tr>
<td>OLD PASSWORD</td>
<TD><input name="CHCKPWD" type="password"  size="20"></td>
</tr>
<tr>
<td>New Password</td>
<td><input name="NWPWD" type="password" >
</td>
</tr>
<tr>
<td>Confirm Password</td>
<td><input name="CNFNWPWD" type="password" >
</td>
</tr></table>
<br>
<p align="center">
<input type="submit" name="Submit" value="Save"> 
<input type="reset" name="cancel" value="cancel"></p>
</form>
<center><button  onclick="back()">Go back</button></center>        
</body>
</html>
