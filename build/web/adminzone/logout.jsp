<%-- 
    Document   : logout
    Created on : 17 Sep, 2023, 2:32:23 PM
    Author     : Adarsh mishra
--%>
<%
  session.invalidate();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log out</title>
        <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../login.jsp';",1000);
            }
        </script>
    </head>
    <body bgcolor="black" onload="logout()">
        
    </body>
</html>
