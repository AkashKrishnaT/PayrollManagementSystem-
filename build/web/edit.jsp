<%-- 
    Document   : edit
    Created on : Oct 5, 2018, 12:18:21 PM
    Author     : AkAsH KrIsHnA
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "payroll";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>
<%
try{
    

connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from salary_details";
rs = statement.executeQuery(sql);
while(rs.next()){
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .container {
             padding: 33%;
            background-color: white;
            margin-top: -426px;
}
            
        </style>
        <link href="css/update.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
   <form method="post" action="updateprocess.jsp">
       
       <input type="hidden" name="id" value="<%=rs.getString("id") %>"> 
   
  <div class="container">
    <h1>Update the Salary Details</h1>
    
     <label for="email"><b>Basic </b></label>
     
    <input type="text" name="basic" value="<%= rs.getString("ubas") %>"required>
    
    <label for="psw"><b>HRA </b></label>
    
    <input type="text" name="HRA" value="<%=rs.getString("uhra") %>" required>

    <label for="psw-repeat"><b> Medical Allowance </b></label>

    <input type="text" name="Medical Allowance" value="<%=rs.getString("umed") %>" required>

    <label for="psw-repeat"><b> Conveyance </b></label>

    <input type="text" name="Conveyance" value="<%=rs.getString("ucon") %>" required>

    <label for="psw-repeat"><b> Allowance </b></label>

    <input type="text" name="Allowance" value="<%=rs.getString("uallo") %>" required>

    <button type="submit" class="registerbtn" name="btn_update">Update</button>
    
  </div>
  
  </form>
    <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
    </body>
</html>
