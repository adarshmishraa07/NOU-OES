<%-- 
    Document   : changepassword
    Created on : 21 Sep, 2023, 6:55:59 PM
    Author     : Adarsh mishra
--%>
<%
  if(session.getAttribute("rollno")==null)
  {
      response.sendRedirect("../login.jsp");
  }
  else
  {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container">
            <script>
                function validate()
                {
                    var op=document.getElementById("oldpassword");
                    var np=document.getElementById("newpassword");
                    var cp=document.getElementById("confirmpassword");
                    if(op.value=="" || op.value==null)
                    {
                        alert('Please enter Old password');
                        op.focus();
                    }
                    else if(np.value=="" || np.value==null)
                    {
                        alert('Please enter New password');
                        np.focus();
                    }
                    else if(cp.value=="" || cp.value==null)
                    {
                        alert('Please enter Confirm password');
                        cp.focus();
                    }
                    else if(np.value!=cp.value)
                    {
                        alert('New Password and Confirm Password are not matched');
                        cp.focus();
                    }
                    else
                    {
                        document.getElementById("frmchangepassword").submit();
                    }
                }
            </script>
            <jsp:include page="header.jsp"/>            
            <div class="row">
                <div class="col-sm-12" style="min-height: 600px;background-color: pink;">
                    <h2 style="color: black; text-align: center;">Change Password </h2>
                    <form class="form-group" method="post" id="frmchangepassword" onsubmit="event.preventDefault();validate();" action="studentcontroller.jsp"> 
                        <input type="hidden" value="changepassword" name="page"/>
                        <table class="table table-bordered" style="margin:auto;width:70%;">
                            <tr>
                                <td>Enter Old Password</td>
                                <td>
                                    <input type="password" name="oldpassword" id="oldpassword" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter New Password</td>
                                <td>
                                    <input type="password" name="newpassword" id="newpassword" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Confirm Password</td>
                                <td>
                                    <input type="password" name="confirmpassword" id="confirmpassword" class="form-control"/>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                   <button type="submit" class="btn btn-warning">Change Password</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6" style="background-color: black;color: #ffc107;font-size: 30px;text-align: center;line-height: 80px; min-height: 80px;text-shadow: 1px 3px 2px red;">
                    Copyright &copy; To Nalanda Open University
                </div>
                <div class="col-sm-6" style="background-color: black; min-height: 80px;color: #ffc107;font-size: 30px;text-align: center;line-height: 80px;text-shadow: 1px 3px 2px red;">
                    Developed By :- Adarsh Mishra
                </div>
            </div>
        </div>
    </body>
</html>
<%
  }
  %>