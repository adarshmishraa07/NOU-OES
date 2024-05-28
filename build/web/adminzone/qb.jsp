<%-- 
    Document   : qb refrences from adminhome.jsp
    Created on : 21 Sep, 2023, 1:49:56 PM
    Author     : mishr
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%
    if(session.getAttribute("adminid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NALNDA OPEN UNIVERCITY</title>
        <link href="../css/bootstrap.css" rel="stylesheet">
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
                <div class="row">
                    <div class="col-sm-12" style="background-color: pink;min-height: 600px;">
                        <form class="form-group" method="post" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="qb"/>
                   <h2 class="fw-bold border-2 border-bottom text-center p-2">Question Bank Management</h2>
                        <table class="table table-bordered" style="background-color: white; border-radius: 10px 10px 10px 10px; margin: auto;width: 70%">
                            <tr>
                                <td>Select Course</td>
                                <td>
                                    <select name="coursename" class="form-control">
                                        <%
//                                         DbManager dm=new DbManager();
//                                         ResultSet rs=dm.select("select * from course");
                                         DbManager dm=new DbManager();
                                         ResultSet rs=dm.select("select * from course");
                                         while(rs.next())
                                         {
                                        %>
                                        <option><%=rs.getString("coursename")%></option>
                                        <% } %>
                                    </select>
                                </td>
                            </tr> 
                             <tr>
                                <td>Enter Question</td>
                                <td>
                                    <textarea name="question" class="form-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>Option 1</td>
                                <td>
                                    <textarea name="opt1" class="form-control"></textarea>
                                </td>
                            </tr>
                             <tr>
                                <td>Option 2</td>
                                <td>
                                    <textarea name="opt2" class="form-control"></textarea>
                                </td>
                            </tr>
                             <tr>
                                <td>Option 3</td>
                                <td>
                                    <textarea name="opt3" class="form-control"></textarea>
                                </td>
                            </tr>
                             <tr>
                                <td>Option 4</td>
                                <td>
                                    <textarea name="opt4" class="form-control"></textarea>
                                </td>
                            </tr>
                             <tr>
                                <td>Correct Option</td>
                                <td>
                                    <textarea name="correct" class="form-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="viewqb.jsp">
                                        <button type="button"class="btn btn-success">View Questions</button>
                                    </a>
                                </td>
                            <td>
                                <button type="submit" class="btn btn-success">Submit</button>
                            </td>
                            </tr>
                        </table>  
                    </form>    
                    </div>
                </div>
            </div>
            
        </div>
        <div class="row">
                <div class="col-sm-6" style="background-color: grey;color: #ffc107;font-size: 30px;text-align: center;line-height: 80px; min-height: 80px;text-shadow: 1px 3px 2px red;">
                    Copyright &copy; To Nalanda Open University
                </div>
                <div class="col-sm-6" style="background-color: grey; min-height: 80px;color: #ffc107;font-size: 30px;text-align: center;line-height: 80px;text-shadow: 1px 3px 2px red;">
                    Developed By :- Adarsh Mishra
                </div>
            </div>
    </body>
</html>
<% }%>