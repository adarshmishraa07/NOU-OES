<%-- 
    Document   : course refrences from admin.jsp
    Created on : 21 Sep, 2023, 2:55:08 PM
    Author     : mishr
--%>

<%
  if(session.getAttribute("adminid")==null)
  {
      response.sendRedirect("../login.jsp");
  }
  else
  {
%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nalanda Open University</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/> 
            <div class="row">
    <div class="col-sm-12" style="background-color:pink; height: 600px;">     
        
<!--                <div class="col-sm-12" style="min-height: 600px;">-->
                    <h2 style="color: black;text-align: center;">Course Management</h2>
                    <form class="form-group" method="post" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="course">
                        <table class="table table-bordered" style="margin: auto;width: 70%; border-radius: 10px 10px 10px 10px;">
                            <tr>
                                <td>Enter course name</td>
                                <td>
                                    <input type="text" name="coursename" class="form-control" required="true"/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success">Submit</button>
                                </td>
                            </tr>
                        </table>   
                    </form>
                    <br>
                    <table class="table table-bordered" style="margin: auto;width:70%; ">
                        <tr>
                            <th>Id</th>
                            <th>Course Name</th>
                            <th>Delete</th>
                        </tr>
                        <%
//                         DbManager dm=new DbManager();
//                         ResultSet rs=dm.select("select * from course");
                           DbManager dm=new DbManager();
                           ResultSet rs=dm.select("select * from course");
                         while(rs.next())
                         {
                             
                         %>
                         <tr>
                             <td><%=rs.getString("id")%></td>
                             <td><%=rs.getString("coursename")%></td>
                             <td>
                                 <a href="delcourse.jsp?id=<%=rs.getString("id")%>">
                                     <button class="btn btn-danger">Delete</button>
                                 </a>
                             </td>
                         </tr>
                     <% }  %>
                    </table>
                <!--</div>-->
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
        </div>
    </body>
</html>
<%
  }
  %>
  
  
  
  
  
  
  
  
  
  
  
