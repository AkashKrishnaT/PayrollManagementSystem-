<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/payroll";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String ubas=request.getParameter("basic");
String uhra=request.getParameter("HRA");
String umed=request.getParameter("Medical Allowance");
String ucon=request.getParameter("Conveyance");
String uallo=request.getParameter("Allowance");

{
Connection con = null;

int ID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
PreparedStatement ps = con.prepareStatement("UPDATE salary_details SET ubas=?,uhra=?,umed=?,ucon=?,uallo=? where id=?");


ps.setString(1, ubas);
ps.setString(2, uhra);
ps.setString(3, umed);
ps.setString(4, ucon);
ps.setString(5, uallo);
ps.setString(6, id);


int i = ps.executeUpdate();
if(i > 0)
{
    out.print("<br>");out.print("<br>");out.print("<br>");out.print("<br>");
out.print(" Salary has been updated successfully !!!  "+"<a href='adminprofile.jsp'>Go to Home</a>");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{

}
}
%> 
