<%-- 
    Document   : profile references from studenthome.jsp
    Created on : 22 Sep, 2023, 7:00:01 AM
    Author     : Adarsh mishra
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
                    <h2 style="color: black;text-align: center;">Student Profile</h2>
                    <table class="table table-bordered" style="width: 60%;margin: auto;">
                        <% 
                          String rollno=session.getAttribute("rollno").toString();
                          DbManager dm=new DbManager();
                          ResultSet rs=dm.select("select * from studentinfo where rollno='"+rollno+"'");
                          if(rs.next())
                          {
                        %>
                        <tr>
                            <td>Roll No</td>
                            <td><%=rs.getString("rollno")%></td>
                        </tr>
                        <tr>
                            <td>Name</td>
                            <td><%=rs.getString("name")%></td>
                        </tr>
                        <tr>
                            <td>Father Name</td>
                            <td><%=rs.getString("fname")%></td>
                        </tr>
                        <tr>
                            <td>Mother Name</td>
                            <td><%=rs.getString("mname")%></td>
                        </tr>
                        <tr>
                            <td>Gender</td>
                            <td><%=rs.getString("gender")%></td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td><%=rs.getString("address")%></td>
                        </tr>
                        <tr>
                            <td>Program</td>
                            <td><%=rs.getString("program")%></td>
                        </tr>
                        <tr>
                            <td>Branch</td>
                            <td><%=rs.getString("branch")%></td>
                        </tr>
                        <tr>
                            <td>Year</td>
                            <td><%=rs.getString("year")%></td>
                        </tr>
                        <tr>
                            <td>Contact No</td>
                            <td><%=rs.getString("contactno")%></td>
                        </tr>
                        <tr>
                            <td>Email Address</td>
                            <td><%=rs.getString("emailaddress")%></td>
                        </tr>
                        <tr>
                            <td>Reg. Date</td>
                            <td><%=rs.getString("regdate")%></td>
                        </tr>
                        <%  }  %>
                    </table>
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
  
  
