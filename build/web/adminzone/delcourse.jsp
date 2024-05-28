<%-- 
    Document   : delcourse
    Created on : 21 Sep, 2023, 3:00:55 PM
    Author     : mishr
--%>

<%@page import="dbpack.DbManager"%>
<% 
//  <%@page import="dbpack.DbManager"%>
<%
    String id=request.getParameter("id");
//    DbManager dm=new DbManager();
    DbManager  dm=new DbManager();
    String query="delete from course where id='"+id+"'";
    if(dm.insertUpdateDelete(query)==true)
    {
        out.print("<script>alert('Course is Deleted');window.location.href='course.jsp';</script>");
    }
    else
    {
         out.print("<script>alert('Course is not Deleted');window.location.href='course.jsp';</script>");
    }
%>
%>