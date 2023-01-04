<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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
     
      .container{
        border: 2px solid black ;
        box-shadow: 2px 2px 2px 2px #111 ;
        background-color: antiquewhite;
      }
    </style>
<title>All Students Result</title>
</head>
<body>
<br><br><br>
    <div class="container">
     
  <br>
    <center><h1>MIT</h1></center>
    <hr style="width:40%;">
    <br>
    <div>
        <table class="table bg-dark text-white" id="a">
    <tr>
        <th scope="col"><a href="AddNewStudent.jsp">Add New Student</a></th>
        <th scope="col"><a href="InsertNewResult.jsp">Insert New Result</a></th>
        <th scope="col"><a href="RegisteredStudents.jsp">Registered Students</a></th>
        <th scope="col">All Students Result</th>
        <th scope="col"><a href="AdminLogin.html">Logout</a></th>
        </tr>
    </table>
    </div>
    <br><br>
    <h3><u>All Students Result</u></h3></center>
    <br><br>
    <div id="b">
    <% 
    String url="jdbc:mysql://localhost:3306/university";
  String pwd="Abhinandss@98";
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection(url,"root",pwd);
  Statement st=con.createStatement();
  ResultSet rs=st.executeQuery("select *from details");
  %>
  
    <table class="table">
      <thead>
        <tr>
          <th scope="col">Roll Number</th>
          <th scope="col">LACA</th>
          <th scope="col">LS</th>
          <th scope="col">DP</th>
          <th scope="col">EMA</th>
        </tr>
      </thead>
      <tbody>
      <%
      while(rs.next()){
      %>
        <tr>
          <th scope="row"><%=rs.getString("roll_num") %></th>
          <td><%=rs.getString("laca")%></td>
          <td><%=rs.getString("ls")%></td>
          <td><%=rs.getString("dp")%></td>
          <td><%=rs.getString("ema")%></td>
        </tr>
        <%} %>
      </tbody>
    </table>
  </div>
</div>
</body>
</html>