<%-- 
    Document   : delnews
    Created on : 20 Sep, 2023, 4:27:13 PM
    Author     : Adarsh mishra
--%>
<%@page import="dbpack.DbManager"%>
<% 
  String id=request.getParameter("id");
  DbManager dm=new DbManager();
  String query="delete from news where id='"+id+"'"; 
  if(dm.insertUpdateDelete(query)==true)
  {
      out.print("<script>alert('News is Deleted');window.location.href='news.jsp';</script>");
  }
  else
  {
      out.print("<script>alert('News is not deleted');window.location.href='news.jsp';</script>");
  }
%>

