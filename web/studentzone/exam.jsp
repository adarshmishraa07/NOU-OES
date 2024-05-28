<%-- 
    Document   : exam references from studenthome.jsp
    Created on : 22 Sep, 2023, 9:30:41 AM
    Author     : mishr
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
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
        <title>Nalanda Open University</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/> 
            
            <div class="row">
                <div class="col-sm-12" style="min-height: 600px;background-color: pink;">
                    <h2 style="color: black;text-align: center;">Examination Module</h2>
                    <form class="form-group" method="post" action="studentcontroller.jsp">
                        <input type="hidden" name="page" value="exam"/>
                    <table class="table table-bordered" style="width: 60%;margin: auto;">
                        <tr>
                            <td>Select Course</td>
                            <td>
                                <select name="coursename" class="form-control">
                            <% 
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
                            <td colspan="2">
                                <ul>
                                    <li>All Questions are compulsory.</li>
                                    <li>Each Question carry 1 mark.</li>
                                    <li>No Negative marking.</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
<!--                                <a href="start.jsp">
                                    <button type="button" class="btn btn-success">Start</button>
                                </a>-->
                             <button type="submit" class="btn btn-success">Start</button>
                            </td>
                        </tr>
                    </table>
                    </form>                  
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
