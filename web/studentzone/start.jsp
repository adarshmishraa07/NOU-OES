<%-- 
    Document   : start
    Created on : 22 Sep, 2023, 9:57:08 AM
    Author     : Adarsh mishra
--%>

<%@page import="dbpack.Exam"%>
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
                    <h2 style="color: black;text-align: center;">Attempt Examination</h2>
                    <form class="form-group" method="post" action="calc.jsp">
                        <table class="table table-bordered" style="width: 70%; margin: auto;">
                            <% 
                               DbManager dm=new DbManager();
                               ResultSet rs=dm.select("select count(*) as tcount from qb");
                               rs.next();
                               Exam.totalques=rs.getInt("tcount");
                               String query="select * from qb where qid='"+Exam.count+"'";
                               rs=dm.select(query);
                               if(rs.next())
                               {
                            %>
                            <tr>
                                <td><%=rs.getInt("qid")%></td>
                                <td><%=rs.getString("question")%></td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" required name="option" value="<%=rs.getString("opt1")%>"/>
                                </td>
                                <td><%=rs.getString("opt1")%></td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" required name="option" value="<%=rs.getString("opt2")%>"/>
                                </td>
                                <td><%=rs.getString("opt2")%></td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" required name="option" value="<%=rs.getString("opt3")%>"/>
                                </td>
                                <td><%=rs.getString("opt3")%></td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" required name="option" value="<%=rs.getString("opt4")%>"/>
                                </td>
                                <td><%=rs.getString("opt4")%></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <button type="submit" class="btn btn-success"> Submit</button>
                                </td>
                            </tr>
                            <% } %>
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