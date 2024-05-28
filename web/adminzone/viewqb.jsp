<%-- 
    Document   : viewqb references from adminhome.jsp
    Created on : 21 Sep, 2023, 3:44:38 PM
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
                <div class="col-sm-12" style="min-height: 600px;background-color: pink;overflow-x: scroll; overflow-y: scroll;">
                    <h2 style="text-align: center;color:black;">View Questions</h2>
                    <table class="table table-bordered">
                        <tr>
                            <td>Id</td>
                            <td>Course Name</td>
                            <td>Question</td>
                            <td>Option 1</td>
                            <td>Option 2</td>
                            <td>Option 3</td>
                            <td>Option 4</td>
                            <td>Correct Answer</td>
                            <td>Delete</td>
                        </tr>
                        <% 
                          DbManager dm=new DbManager();
                          ResultSet rs=dm.select("select * from qb");
                          while (rs.next())
                          {
                        %>
                        <tr>
                            <td><%=rs.getString("qid")%></td>
                            <td><%=rs.getString("coursename")%></td>
                            <td><%=rs.getString("question")%></td>
                            <td><%=rs.getString("opt1")%></td>
                            <td><%=rs.getString("opt2")%></td>
                            <td><%=rs.getString("opt3")%></td>
                            <td><%=rs.getString("opt4")%></td>
                            <td><%=rs.getString("correct")%></td>
                            <td>
                                <a href="delqb.jsp?qid=<%=rs.getString("qid")%>">
                                    <button class="btn btn-danger">Delete</button>
                                </a>
                            </td>
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
  
  
  
  
  
  
  
  
  
  
  