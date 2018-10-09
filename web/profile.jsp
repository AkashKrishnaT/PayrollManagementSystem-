<%-- 
    Document   : profile.jsp
    Created on : Oct 5, 2018, 10:20:31 AM
    Author     : AkAsH KrIsHnA
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
        
  Class.forName("com.mysql.jdbc.Driver");
 Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");

 Statement statement = connection.createStatement() ;
            ResultSet rs = statement.executeQuery("select * from salary_details") ;
        %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .basic{
                
                padding-left: 1200px;
                
            }
        </style>
    </head>
    <body>
    <center><h1>Your Salary Structure !</h1></center>
    <div class="basic">
    <a href="index.jsp" align="right">Logout</a>
    </div>
    <center>
    
        <table border="10" cellpadding="10">
            <TR>
                <TH>EMP Name</TH>
                <TH>Department</TH>
                <TH>Location</TH>
                               
            </TR>
            
            <TR>
                <TD> Kumar </TD>
                <TD> Senior Accountant</TD>
                <TD> Mumbai</TD>
         
               
            </TR>
            
        </table>

 </center>
    <br>
    <br>
    
    <center>
    
        <table border="10" cellpadding="10" >
            <TR>
                <TH>Components</TH>
                <TH>Monthly Amount</TH>
                
               
            </TR>
             <% while(rs.next()){ %>
            <TR>
                <TD>Basic </TD>
                <TD> <%= rs.getString(2) %> </TD>
            </TR>
               <TR>
                   <TD>HRA </TD>
                <TD> <%= rs.getString(3) %> </TD>
            </TR>
            
            <TR>
                <TD>Medical Allowance</TD>
                <TD> <%= rs.getString(4) %> </TD>
            </TR>
            
            <TR>
                <TD>Conveyance</TD>
                <TD> <%= rs.getString(5) %> </TD>
            </TR>
            
            <TR>
                <TD> Allowance</TD>
                <TD> <%= rs.getString(6) %> </TD>
            </TR>
                
            <TR>
                <TD> <b>  Total</b></TD>
            <b>   <TD> <b><%= rs.getString(7) %> </b></TD></b>
            </TR>
               <% } %>               
          
            
        </table>

 </center>

    
    </body>
</html>
