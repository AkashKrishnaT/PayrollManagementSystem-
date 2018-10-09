<%-- 
    Document   : adminprofile
    Created on : Oct 5, 2018, 11:56:04 AM
    Author     : AkAsH KrIsHnA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <h1>Hello Admin !!!</h1>
         <div class="basic">
    <a href="adminlogin.jsp" align="right">Logout</a>
    </div>
        <table border="10" cellpadding="10">
            <TR>
                <TH>EMP Name</TH>
                <TH>Department</TH>
                <TH>Location</TH>
                <TH> Action to be done </TH>
                               
            </TR>
            
            <TR>
                <TD> Kumar </TD>
                <TD> Senior Accountant</TD>
                <TD> Mumbai</TD>
                <TD><a href="edit.jsp">Edit</a></TD>
               
            </TR>
            
        </table>
    </body>
</html>
