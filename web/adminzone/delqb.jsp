<%-- 
    Document   : delqb  
    Created on : 21 Sep, 2023, 5:08:22 PM
    Author     : Adarsh mishra
--%>

<%@page import="dbpack.DbManager"%>
<%
    String qid=request.getParameter("qid");
    DbManager dm=new DbManager();
    String query="delete from qb where qid='"+qid+"'";
    if(dm.insertUpdateDelete(query)==true)
    {
        out.print("<script>alert('Question is Deleted');window.location.href='viewqb.jsp';</script>");
    }
    else
    {
         out.print("<script>alert('Question is not Deleted');window.location.href='viewqb.jsp';</script>");
    }
%>