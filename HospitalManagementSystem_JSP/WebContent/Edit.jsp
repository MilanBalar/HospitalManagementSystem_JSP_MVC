<%@page import="com.dao.DAO"%>
<%@page import="com.bean.Bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:powderblue;">


<%

int id=Integer.parseInt(request.getParameter("sid"));
Bean b=DAO.getDataById(id);

%>
<h1>Update Data</h1>
<form action="Edit2.jsp" method="post">
   <table border="1">
      <tr>
         <td>Id</td>
         <td><input type="text" name="sid" value=<%= b.getSid() %> >
        
      </tr>
      <tr>
         <td>Name</td>
         <td><input type="text" name="sname" value=<%=b.getSname() %> >
        
      </tr>
      <tr>
         <td>Contact</td>
         <td><input type="text" name="scontact" value=<%=b.getScontact() %> >
        
      </tr>
      <tr>
         <td>City</td>
         <td><input type="text" name="scity" value=<%=b.getScity() %> >
        
      </tr>
      <tr >
        
         <td colspan="2"><input type="submit" value="Update" >
        
      </tr>
   
   
   

  </table>


</form>

</body>
</html>