<%-- 
    Document   : calc
    Created on : 22 Sep, 2023, 10:52:15 AM
    Author     : Adarsh mishra
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.Exam"%>
<%@page import="dbpack.DbManager"%>
<% 
   DbManager dm=new DbManager();
   String option=request.getParameter("option");
   String query="select correct from qb where qid='"+Exam.count+"'";
   ResultSet rs=dm.select(query);
   if(rs.next())
   {
       if(option.equals(rs.getString("correct")))
       {
           Exam.countans++;
       }
   }
   if(Exam.count==Exam.totalques)
   {
       String rollno=session.getAttribute("rollno").toString();
       String coursename=session.getAttribute("coursename").toString();
       int totalmark=Exam.totalques;
       int getmark=Exam.countans;
       query="insert into result (rollno,coursename,totalmark,getmark,examdate) values('"+rollno+"','"+coursename+"','"+totalmark+"','"+getmark+"',curdate())";
       dm.insertUpdateDelete(query);
       Exam.init();
       response.sendRedirect("result.jsp");
   }
   else
   {
       Exam.count++;
       response.sendRedirect("start.jsp");
   }
%>