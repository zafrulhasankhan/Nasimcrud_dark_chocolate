/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet_package;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import database.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Zafrul Hasan Nasim
 */
@WebServlet(name = "login_servlet", urlPatterns = {"/login_servlet"})
public class login_servlet extends HttpServlet {

   
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String name = request.getParameter("name");
         String pass = request.getParameter("pass");
         System.out.println("MS ianxm kmskmakm  amkm");
        try {
            PreparedStatement ps =DBConnection.getConnection().prepareStatement("select * from regis where username = ? and password = ?");
            ps.setString(1, name);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            
             if(rs.next()){
                String username = rs.getString("username");
                String passs = rs.getString("password");
                request.setAttribute("username", username);
                request.setAttribute("password", passs);
                String msg2 = "Login Successfull";
            request.setAttribute("msg",msg2);
            request.getRequestDispatcher("message.jsp").forward(request,response);
                 System.out.println("dj");
            
            
             }
            
        } catch (SQLException ex) {
            Logger.getLogger(login_servlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(login_servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    
 String error = "Loginin Failed.Please try again.";
            request.setAttribute("errorMsg",error);
            request.getRequestDispatcher("message.jsp").forward(request,response);
}

}