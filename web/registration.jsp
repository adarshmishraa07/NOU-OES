<%-- 
    Document   : registartion
    Created on : 14 Sep, 2023, 2:06:43 PM
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
            <script>
                function validate()
                {
                    var p=document.getElementById("password");
                    var cp=document.getElementById("confirmpassword");
                    var rollno=document.getElementById("rollno");
                    var name=document.getElementById("name");
                    var fname=document.getElementById("fname");
                    var mname=document.getElementById("mname");
                    var address=document.getElementById("address");
                    var contactno=document.getElementById("contactno");
                    var emailaddress=document.getElementById("emailaddress");                   
                    
                     if(rollno.value=="" || rollno.value==null)
                    {
                        alert('Please Enter Roll No');
                        rollno.focus();
                    }
                    else if(name.value=="" || name.value==null)
                    {
                        alert('Please Enter Name');
                        name.focus();
                    }
                    else if(fname.value=="" || fname.value==null)
                    {
                        alert('Please Enter Father Name');
                        fname.focus();
                    }
                    else if(mname.value=="" || mname.value==null)
                    {
                        alert('Please Enter Mother Name');
                        mname.focus();
                    }
                    else if(address.value=="" || address.value==null)
                    {
                        alert('Please Enter Address');
                        address.focus();
                    }
                    else if(contactno.value=="" || contactno.value==null)
                    {
                        alert('Please Enter Contact No');
                        contactno.focus();
                    }
                    else if(emailaddress.value=="" || emailaddress.value==null)
                    {
                        alert('Please Enter Email Address');
                        emailaddress.focus();
                    }
                    else if(p.value=="" || p.value==null)
                    {
                        alert('Please Enter Password');
                        p.focus();
                    }
                    else if(cp.value=="" || cp.value==null)
                    {
                        alert('Please Enter Confirm Password');
                        cp.focus();
                    }
                    else if(p.value!==cp.value)
                    {
                        alert('Please enter same password in both section');
                        cp.focus();
                    }
                    else
                    {
                        document.getElementById("frmregistration").submit();
                    }
                }
            </script>
            <jsp:include page="header.jsp"/>
                <div class="row mt-2">
                    <div class="col-sm-4" style="min-height: 600px;background-color: aqua;"></div>
                    <div class="col-sm-8" style="min-height: 600px;background-color: burlywood;"> 
                        <h2 style="text-align: center;color: black;">Student Registration Form</h2>
                        <form class="form-group" id="frmregistration" method="post" action="controller.jsp" onsubmit="event.preventDefault();validate();">
                            <input type="hidden" name="page" value="registration"/>
                            <table class="table table-border" style="margin: auto;width: 80%;">
                                <tr>
                                    <td>Enter Roll No</td>
                                    <td>
                                        <input type="number" name="rollno" class="form-control" id="rollno"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter Name</td>
                                    <td>
                                        <input type="text" name="name" class="form-control" id="name"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter Father Name</td>
                                    <td>
                                        <input type="text" name="fname" class="form-control" id="fname"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter Mother Name</td>
                                    <td>
                                        <input type="text" name="mname" class="form-control" id="mname"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Select Gender</td>
                                    <td>
                                        <input type="radio" name="gender" value="Male" class="form-check-input" id="gender"/>Male
                                        <input type="radio" name="gender" value="Female" class="form-check-input" id="gender"/>Female
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter Address</td>
                                    <td>
                                        <textarea name="address" class="form-control" id="address"></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Select Program</td>
                                    <td>
                                        <select name="program" class="form-control" id="program">
                                            <option selected>-Select Program-</option>
                                            <option value="B.Tech.">B.Tech.</option>
                                            <option value="M.Tech.">M.Tech.</option>
                                            <option value="Diploma">Diploma</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Select Branch</td>
                                    <td>
                                        <select name="branch" class="form-control" id="branch">
                                            <option selected>-Select Branch</option>
                                            <option value="CS">CS</option>
                                            <option value="IT">IT</option>
                                            <option value="EC">EC</option>
                                            <option value="EE">EE</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Select Year</td>
                                    <td>
                                        <select name="year" class="form-control" id="year">
                                            <option selected>-Select Year-</option>
                                            <option value="First Year">First Year</option>
                                            <option value="Second Year">Second Year</option>
                                            <option value="Third Year">Third Year</option>
                                            <option value="Final Year">Final Year</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter Contact No</td>
                                    <td>
                                        <input type="number" name="contactno" class="form-control" id="contactno"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter Email Address</td>
                                    <td>
                                        <input type="text" name="emailaddress" class="form-control" id="emailaddress"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter Password</td>
                                    <td>
                                        <input type="password" name="password" class="form-control" id="password"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Re-enter Password</td>
                                    <td>
                                        <input type="password" name="confirmpassword" class="form-control" id="confirmpassword"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <button type="submit" class="btn btn-warning">Register</button>
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
