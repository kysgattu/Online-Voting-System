<%-- 
    Document   : checkresult
    Created on : 22 Jun, 2019, 10:25:49 AM
    Author     : KYSGATTU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script type="text/javascript"language="javascript">  
   function redirect(){
		location.replace("final_result.jsp");
   }
   function redirect1(){
       location.replace("404.jsp");
   }
   function CompareDate() {  
       var todayDate = new Date(); //Today Date  
       var dateOne = new Date(2019, 05, 28);  
       if (todayDate > dateOne) {  
            redirect();
        }else {  
            redirect1();  
        }  
    }  
    CompareDate();  
</script>
</html>