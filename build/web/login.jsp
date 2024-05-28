<%-- 
    Document   : login
    Created on : 15 Sep, 2023, 1:42:43 PM
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
        <script>
            function validate()
            {
                var userid=document.getElementById("userid");
                var password=document.getElementById("password");
                if(userid.value=="" || userid.value==null)
                {
                    alert('Please Enter userid');
                    userid.focus();
                }
                else if(password.value=="" || password.value==null)
                {
                    alert('Please Enter password');
                    password.focus();
                }
                else
                {
                    document.getElementById("frmlogin").submit();
                }
            }
        </script>
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>
                <div class="row mt-2">
                    <div class="col-sm-4" style="min-height: 600px;background-color: aqua;"></div>
                    <div class="col-sm-8" style="min-height: 600px;background-color: burlywood;">
                        <h2 style="color: black; text-align: center;">Login Form</h2>
                        <form class="form-group" method="post" id="frmlogin" onsubmit="event.preventDefault();validate();" action="controller.jsp">
                            <input type="hidden" name="page" value="login"/>  
                            <table class="table table-bordered" style="margin:auto;width:80%;">
                                <tr>
                                    <td>Enter User Id</td>
                                    <td>
                                        <input type="text" name="userid" class="form-control" id="userid"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter Password</td>
                                    <td>
                                        <input type="password" name="password" class="form-control" id="password"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <button type="submit" class="btn btn-warning">Login</button>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            <jsp:include page="footer.jsp"/>  
                </div>  
    </body>
</html>
