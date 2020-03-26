/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet_package;

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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Zafrul Hasan Nasim
 */
@WebServlet(name = "login_servlet1", urlPatterns = {"/login_servlet1"})
public class login_servlet1 extends HttpServlet {

    
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        String name = request.getParameter("email");
         String pass = request.getParameter("pass");
         
        try {
            PreparedStatement ps =DBConnection.getConnection().prepareStatement("select * from regis1 where Email = ? and PassWord = ?");
            ps.setString(1, name);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            
             if(rs.next()){
                String name1 = rs.getString("UserName"); 
                String email = rs.getString("Email");
                String mobile = rs.getString("Mobile_number");
                String passs = rs.getString("PassWord");
                
                request.setAttribute("UserName", name1);
                request.setAttribute("Email", email);
                request.setAttribute("Mobile_number", mobile);
                request.setAttribute("PassWord", passs);
                
                HttpSession session = request.getSession();
                session.setAttribute("name1", name1);
                session.setAttribute("email", email);
                session.setAttribute("mobile", mobile);
                
                 request.getRequestDispatcher("userprofile.jsp").forward(request, response);
                String msg2 = "Login Successfull";
            request.setAttribute("msg",msg2);
            //request.getRequestDispatcher("loginmsg.jsp").forward(request,response);
                 System.out.println("dj");
             }
        } catch (SQLException ex) {
            Logger.getLogger(login_servlet1.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(login_servlet1.class.getName()).log(Level.SEVERE, null, ex);
        }
           
 String error = "Loginin Failed.Please try again.";
            request.setAttribute("errorMsg",error);
            request.getRequestDispatcher("message.jsp").forward(request,response);

    }


}
