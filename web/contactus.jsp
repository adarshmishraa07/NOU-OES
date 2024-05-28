<%-- 
    Document   : contactus
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
                    <div class="col-sm-8" style="min-height: 600px;background-color: burlywood;">
                        <h2 style="text-align: center;color: black;">Enquiry Form</h2>
                        <form class="form-group border" method="post" action="controller.jsp">
                            <input type="hidden" name="page" value="contactus"/>
                            <table class="table">
                                <tr>
                                    <td>Enter Name</td>
                                    <td>
                                        <input type="text" name="name" class="form-control"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter Gender</td>
                                    <td>
                                        <input type="radio" name="gender" value="Male" class="form-check-input"/>Male
                                        <input type="radio" name="gender" value="Female" class="form-check-input"/>Female
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter Address</td>
                                    <td>
                                        <textarea name="address" class="form-control"></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter Contact No</td>
                                    <td>
                                        <input type="text" name="contactno" class="form-control"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter Email Address</td>
                                    <td>
                                        <input type="email" name="emailaddress" class="form-control"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter Enquiry Text</td>
                                    <td>
                                        <textarea name="enquirytext" class="form-control"></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <input type="submit" class="btn btn-warning"/>
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
