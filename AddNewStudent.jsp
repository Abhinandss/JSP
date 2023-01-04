<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
      src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
      crossorigin="anonymous"
    ></script>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
      crossorigin="anonymous"
    />
    <style>
      body{
        background:rgb(125, 193, 158);
      }
    </style>
<title>Add New Student</title>
</head>
<body>
<center>
        <br><br><br>
        <h3><u>Add new Student</u></h3><br><br>
<% String url="jdbc:mysql://localhost:3306/university";
  String pwd="Abhinandss@98";
  Class.forName("com.mysql.jdbc.Driver");
  String rnum=request.getParameter("rnum");
  String nm=request.getParameter("nm");
  String br=request.getParameter("br");
  String fa=request.getParameter("fa");
  String gen=request.getParameter("gen");
  Connection con=DriverManager.getConnection(url,"root",pwd);
  String sql = "insert into details values (?,?,?,?,?)";
  Statement st=con.createStatement();
  st.executeUpdate("insert into details values("+rnum+","+nm+","+br+","+fa+","+gen+")");
   //response.sendRedirect("AllStudentResult.jsp");

 // prep.executeUpdate();
 
 %>
      Roll No:<input type="number" placeholder="Roll Number" name="rnum"><br><br>
      Name: <input type="text" placeholder="Name" name="nm"><br><br>
      Branch:<input type="text" placeholder="Branch" name="br"><br><br>
      Father: <input type="text" placeholder="Father" name="fa"><br><br>
      Gender: <input type="text" placeholder="M/F" name="gen"><br><br>
      <button type="button" class="btn btn-primary"><a href="RegisteredStudents.jsp" style="color:white">Save</a></button>
    </center>
</body>
</html>