<%-- 
    Document   : del_cand
    Created on : 16 Jun, 2019, 5:39:36 PM
    Author     : KYSGATTU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Candidates</title>
    </head>
<body style="background-color:#EBEBEB">
        <h1 align="center"><u>Delete Candidates</u></h1>
        <form action="del_cand_ins.jsp"  name="form" method="post">
        <table align="center" cellspacing="7">
            <tr><td align="right">Enter the Candidate Id Of the Candidate to be removed</td>
                <td align="left"><input type="text" name="DCID" value="" size="50" align="left">                                                        
            </tr>        
        </table>
        
        <p align="center"><input type="submit" name="submit" value="submit" align="right" >
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <input type="reset" name="cancel" value="cancel" align="left"></p>
        </form>
    </body>
</html>
