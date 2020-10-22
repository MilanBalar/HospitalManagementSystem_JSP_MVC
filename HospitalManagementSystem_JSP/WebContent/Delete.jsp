<%@page import="com.dao.DAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:powderblue;">
 <jsp:useBean id="obj" class="com.bean.Bean"/>
  <jsp:setProperty property="sid" name="obj"/>
  
  <%
  int id=Integer.parseInt(request.getParameter("sid"));
   int m= DAO.DeteteData(id);
   
   if(m>0)
   {
	   response.sendRedirect("View.jsp");
	   
   }
  
  %>
  
  
  
</body>
</html>