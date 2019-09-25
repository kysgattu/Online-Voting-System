<%-- 
    Document   : cand_reg
    Created on : 13 Jun, 2019, 3:16:40 PM
    Author     : KYSGATTU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Candidate Nomination</title>
    </head>
    <script type="text/javascript">
    function checkForm(form)
	{
		if(form.CID.value === "")
		{
			alert("Error: Username cannot be blank!");
			form.CID.focus();
			return false;
		}
                if(form.PWD.value === "")
		{
			alert("Error: Password cannot be blank!");
			form.PWD.focus();
			return false;
		}
                if(form.CNFPWD.value === "")
		{
			alert("Error: Please cofirm your password!");
			form.CNFPWD.focus();
			return false;
		}
		if(form.PWD.value !== form.CNFPWD.value)
		{
			alert("Error:Passwords doesn't match");
                        form.PWD.focus();
			form.CNFPWD.focus();
			return false;
		}
	}	
</script>
<body style="background-color:#EBEBEB">
<h2 align="center"><b><u>Candidate Registration</u></b></h2>
<form action="cand_ins.jsp" name="form" onsubmit="return checkForm(this)" method="post">
    
<table frame="box" cellspacing="7" align="center">
<tr><td align="right"><b>Full Name<sup><font color="red">*</font></sup>:</b>
    <td> <input type="text" name="NAME" value="" size="50" align="left">
<tr><td align="right"><b>Age<sup><font color="red">*</font></sup>:</b>
    <td> <input type="text" name="AGE"value="" size="50" align="left">
<tr><td align="right"><b>Gender<sup><font color="red">*</font></sup>:</b>
    <td>Male:<input type="radio" name="GEN" value="male">
        Female:<input type="radio" name="GEN" value="female">
        Other:<input type="radio" name="GEN" value="other">
<tr><td align="right"><b>Address<sup><font color="red">*</font></sup>:</b>
    <td> <input type="text" name="ADDRESS" value="" size="50" align="left">
<tr><td align="right"><b>City<sup><font color="red">*</font></sup>:</b>
    <td> <input type="text" name="CITY" value="" size="50" align="left">
<tr><td align="right"><b>State<sup><font color="red">*</font></sup>:</b>
    <td> 
        <select name="STATE">
            <option value=""></option>
            <option value="Telangana">Telangana</option>
            <option value="Andhra pradesh">Andhra pradesh</option>
            <option value="Delhi">Delhi</option>
            <option value="Maharastra">Maharastra</option>
            <option value="Tamil nadu">Tamil nadu</option>
            <option value="Kerala">Kerala</option>
            <option value="Karnataka">Karnataka</option>
        </select> 
<tr><td align="right"><b>Pin Code<sup><font color="red">*</font></sup>:</b>
    <td> <input type="text" name="PINCODE" value="" size="50" align="left">
<tr><td align="right"><b>Mobile Number<sup><font color="red">*</font></sup>:</b>
    <td> <input type="text" name="MOBNO" value="" size="50" align="left">
<tr><td align="right"><b>E-mail<sup><font color="red">*</font></sup>:</b>
    <td> <input type="email" name="EMAIL" value="" size="50" align="left">
<tr><td align="right"><b>Political Party<sup><font color="red">#</font></sup>:</b>
    <td> <input type="text" name="PARTY" value=""  align="left">
<tr><td align="right"><b>Candidate ID<sup><font color="red">*</font></sup>:</b>
    <td> <input type="text" name="CID" value="" size="50" align="left">                                                        
<tr><td align="right"><b>Create Password<sub><font color="red">*</font></sub>:</b>
    <td> <input type="password" name="PWD" value="" size="50" align="left">
<tr><td align="right"><b>Confirm Password<sup><font color="red">*</font></sup>:</b>
    <td> <input type="password" name="CNFPWD" value="" size="50" align="left">
<tr><td><td align="right"><small>Fields with <font color="red">* </font>are mandatory. </small>
<tr><td><td align="right"><small><font color="red">#</font>Leave this if you doesn't belong to any party </small>    
</table>
    

    <p align="center"><input type="submit" name="submit" value="submit" align="right" >
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="cancel" value="cancel" align="left"></p>

<br>

</form>
</body>
</html>
