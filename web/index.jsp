<%-- 
    Document   : index
    Created on : 10 Sep, 2023, 1:40:43 PM
    Author     : Adarsh mishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Examination System</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="js/bootstrap.bundle.js"></script>
        
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>
                <div class="row mt-2">
                    <div class="col-sm-4" style="min-height: 600px;background-color: aqua;"></div>
                    <div class="col-sm-8" style="min-height: 600px;background-color: burlywood;"></div>
                </div>
            <jsp:include page="footer.jsp"/>  
        </div>  
    </body>
</html>
