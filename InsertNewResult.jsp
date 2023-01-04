<%@page import="java.io.InputStream"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <style>
        input[type=text], select {
          width: 100%;
          padding: 12px 20px;
          margin: 8px 0;
          display: inline-block;
          border: 1px solid #ccc;
          border-radius: 4px;
          box-sizing: border-box;
        }
        
        input[type=submit] {
          width: 100%;
          background-color: #4CAF50;
          color: white;
          padding: 14px 20px;
          margin: 8px 0;
          border: none;
          border-radius: 4px;
          cursor: pointer;
        }
        
        input[type=submit]:hover {
          background-color: #45a049;
        }
        
        div {
          border-radius: 5px;
          background-color: #f2f2f2;
          padding: 20px;
        }
        </style>
<title>Insert New Result</title>
</head>
<body>
 <% 
  String url="jdbc:mysql://localhost:3306/university";
  String pwd="Abhinandss@98";
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection con=DriverManager.getConnection(url,"root",pwd);
  String rnum=request.getParameter("roll");
  System.out.print(rnum);
  String laca=request.getParameter("lac");
  String ls=request.getParameter("lsl");
  String dp=request.getParameter("dpr");
  String ema=request.getParameter("em");
  //String sql = "insert into details values (?,?,?,?,?)";
  //Statement st=con.createStatement();
  //st.executeUpdate("insert into details values("+rnum+","+laca+","+ls+","+dp+","+ema+")");
   //response.sendRedirect("AllStudentResult.jsp");
   String sql="insert into details(roll_num,laca,ls,dp,ema) values (?,?,?,?,?);";
   PreparedStatement prep = con.prepareStatement(sql);
   prep.setString(1, rnum);
   prep.setString(2, laca);
   prep.setString(3, ls);
   prep.setString(4, dp);
   prep.setString(5, ema);
   prep.executeUpdate();
    
   
   %>
   
   
   
   
   
   
   
   
   
        
        <h1><u><center>Insert new Result</center></u></h1>
        
        <div>
          <form action="AllStudentResult.jsp" method="get" name=contactus>
            <label for="fname">Roll Number</label>
            <input type="text" id="fname" name="roll" placeholder="Roll number">
        
            <label for="lname">LACA</label>
            <input type="text" id="lname" name="lac" placeholder="LACA">
        
            <label for="fname">LS</label>
            <input type="text" id="fname" name="lsl" placeholder="LS">
        
            <label for="lname">DP</label>
            <input type="text" id="lname" name="dpr" placeholder="DP">

            <label for="fname">EMA</label>
            <input type="text" id="fname" name="em" placeholder="EMA">
          
           <input type="submit" value="Submit">
          </form>
        </div>
</center>
</body>
</html>