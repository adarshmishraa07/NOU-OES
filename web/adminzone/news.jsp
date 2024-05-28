<%-- 
    Document   : news references taken adminhome.jsp
    Created on : 19 Sep, 2023, 3:20:43 PM
    Author     : Adarsh mishra
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
                    <h2 style="color: black;text-align: center;">News Management</h2>
                    <form class="form-group" method="post" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="news"/>
                        <table class="table table-bordered" style="width: 70%;margin: 0px auto;">
                            <tr>
                                <td>Enter News</td>
                                <td>
                                    <textarea name="newstext" class="form-control" placeholder="Enter News Here"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-primary">Add News</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                    <br/>
                        <table class="table table-bordered" style="width: 80%; margin:auto;">
                            <tr>
                                <th>Id</th>
                                <th>News Text</th>
                                <th>Posted Date</th>
                                <th>Delete</th>
                                
                            </tr>
                            <% 
                              DbManager dm=new DbManager();
                              ResultSet rs=dm.select("select * from news");
                              while(rs.next())
                              {
                            %>
                            <tr>
                                <td><%=rs.getString("id")%></td>
                                <td><%=rs.getString("newstext")%></td>
                                <td><%=rs.getString("posteddate")%></td>
                                <th>
                                    <a href="delnews.jsp?id=<%=rs.getString("id")%>">
                                        <button class="btn btn-danger">Delete</button>
                                    </a>
                                </th>
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
  
  
  
  
  
  
  
  
  
  
  