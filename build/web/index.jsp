<%-- 
    Document   : index
    Created on : Oct 5, 2018, 9:57:59 AM
    Author     : AkAsH KrIsHnA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PayRoll System | User</title>
         <style>
            input[type="text"], input[type="password"],select{
                height:20px;
                width: 175px;
 //            display: inline-block;
 // padding: 4px 6px;
 // margin-bottom: 10px;
 // margin-top: 10px;
  //font-size: 14px;
  //line-height: 20px;
  //color: #555555;
  //-webkit-border-radius: 4px;
  //-moz-border-radius: 4px;
  //border-radius: 4px;
  //vertical-align: middle;
            }
 td {           font-size: 18px;}
 select{        height:30px;
                width: 190px;
                font-family: sans-serif;}
.well
{

   height:43px;
  background-color: #f5f5f5;
  border: 1px solid #e3e3e3;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
}

*{font-family: sans-serif;}
        </style>
       
    </head>
    <body>
        <br>
          <center> <h1> Payroll Management System</h1> </center>
       <div class="well" style="margin-top: 67px;height:300px;width:500px;margin-left:433px;">
            <form method="post" action="Validation">
        <table align="center" style="margin-left: 70px ;margin-top: 8px ;">
            <tr>
                <td colspan="2"><center style="color:#2F9DD1;"></center></td>
            </tr>
            <tr>
                <td><h4>Username</h4></td><td><input type="text" name="username" placeholder="Please Enter Username"/>
                </td>
            </tr>
            <tr>
                <td><h4>Password</h4></td><td><input type="password" name="password" placeholder="Please Enter Password"/>
                </td>
            </tr>
                     <tr><td></td>
                <td>
                    <button class="btn" style="margin-left: 20px;" type="submit" name="login">Log In</button>
                </td>
                     <br>
                <td>
                    <a href="adminlogin.jsp">Login as Admin</a>
                </td>
                                
            </tr>
                       
            
        </table>
          
              
         
    </form>
         
        </div>
    </body>
</html>
