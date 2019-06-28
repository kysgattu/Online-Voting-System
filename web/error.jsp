<%-- 
    Document   : error
    Created on : 16 Jun, 2019, 8:41:48 AM
    Author     : KYSGATTU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>error</title>
    </head>
    <script>
            function redirect()
            {
                location.replace("login.jsp");
            }
    </script>

    <body style="background-color:#EBEBEB">
        <h1 align="center">INVALID CREDENTIALS</h1>
        <p align="center" ><font color="red"><i>Please check the username and password and try again!</i></p>
        <button align="center" onclick="redirect()">Go Back</button>
    </body>
</html>
