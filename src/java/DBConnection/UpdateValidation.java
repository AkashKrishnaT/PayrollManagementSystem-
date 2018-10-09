/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBConnection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AkAsH KrIsHnA
 */
public class UpdateValidation extends HttpServlet {

  
@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        String Eid = request.getParameter("id");
     
        String Basic = request.getParameter("basic");
      
        String HRA = request.getParameter("HRA");

        String Medallo = request.getParameter("Medical Allowance");

        String Convey = request.getParameter("Conveyance");

        String Allowan = request.getParameter("Allowance");



        Connection con=null; 
         PreparedStatement st=null;
       try {
          Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root","root");
         String sql = "UPDATE salary_details" +"SET Basic=?,HRA=?,Medical Allowance=?,Conveyance=?,Allowance=?"+"WHERE id=1";

        con.setAutoCommit(false);
         st = con.prepareStatement(sql);
         st.setString(2, Basic ); 
         st.setString(3, HRA); 
         st.setString(4,Medallo); 
         st.setString(5, Convey );
         st.setString(6, Allowan );
         



        st.executeUpdate();

        con.commit();
        
         con.close();
         st.close();
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
              rd.include(request, response);
        }

        catch (IOException | ClassNotFoundException | SQLException | ServletException e) {
        }

}}