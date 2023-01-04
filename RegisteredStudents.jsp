<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<title>Registered Students</title>
</head>
<body>
<br><br>
    <center><h1><u>Registered Students</u></h1></center>
    <br><br>
    <% 
    String url="jdbc:mysql://localhost:3306/university";
  String pwd="Abhinandss@98";
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection(url,"root",pwd);
  Statement st=con.createStatement();
  ResultSet rs=st.executeQuery("select *from student");
  %>
         <table class="table">
      <thead>
        <tr>
          <th scope="col">Roll Number</th>
          <th scope="col">Name</th>
          <th scope="col">Branch</th>
          <th scope="col">Father</th>
          <th scope="col">Gender</th>
        </tr>
      </thead>
      <tbody>
      <%
      while(rs.next()){
      %>
        <tr>
          <th scope="row"><%=rs.getString("roll_num")%></th>
          <td><%=rs.getString("name")%></td>
          <td><%=rs.getString("branch")%></td>
          <td><%=rs.getString("father")%></td>
          <td><%=rs.getString("gender")%></td>
        </tr>
         <%} %>
      </tbody>
    </table>
</body>
</html>