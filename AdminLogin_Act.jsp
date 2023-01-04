<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String url="jdbc:mysql://localhost:3306/university";
  String pwd="Abhinandss@98";
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection(url,"root",pwd);
  Statement st=con.createStatement();
  String uname1=request.getParameter("uname");
  String pwd1=request.getParameter("pwd");
  ResultSet rs=st.executeQuery("select *from admin");
  int flag=0;
  while(rs.next()){
	  if(uname1.matches(rs.getString(2))&&(pwd1.matches(rs.getString(3)))){
		  flag=1;
		  response.sendRedirect("AllStudentResult.jsp");
          break;
		}
   }
  if(flag==0){
		response.sendRedirect("AdminLogin.html");
	}
   %>
</body>
</html>