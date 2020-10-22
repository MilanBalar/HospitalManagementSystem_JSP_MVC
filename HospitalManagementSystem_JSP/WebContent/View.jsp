
<%@page import="com.dao.DAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.Bean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: powderblue">
<h1>All Data for patient</h1>
   <%

      List<Bean> l=DAO.view();
   
   %>
   <table border="1">
    <tr>
      <td>Id</td>
      <td>Name</td>
      <td>Contact</td>
      <td>City</td>
      <td>Delete</td>
      <td>Edit</td>
    
    </tr>
    <%
       for(Bean b:l)
       {
    %>	 
    	<tr>
    	   <td><%=b.getSid() %></td>
    	   <td><%=b.getSname() %></td>
    	   <td><%=b.getScontact() %></td>
    	   <td><%=b.getScity() %></td>
    	   <td><a href='Delete.jsp?sid=<%= b.getSid() %>'>Delete</a></td>
    	   <td><a href='Edit.jsp?sid=<%= b.getSid() %>'>Edit</a></td>
    	 
    	
    	
    	</tr>
    	
    	
    	<%    
       }
      %>
   
   
   </table>
   

</body>
</html>