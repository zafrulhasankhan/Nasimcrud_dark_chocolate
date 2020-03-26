/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet_package;

import database.DBConnection;
import db_package.user;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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

  @WebServlet(name = "userList_servlet", urlPatterns = {"/userList_servlet"})
public class userList_servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ArrayList<user> userlist = new ArrayList<user>();
        try {
            PreparedStatement ps = DBConnection.getConnection().prepareStatement("select *from regis1");
            ResultSet rs =   ps.executeQuery();
            while(rs.next()){
                
                user u = new user();
               
                u.setName(rs.getString("UserName"));
                u.setEmail(rs.getString("Email"));
                u.setMobile(rs.getString("Mobile_number"));
                u.setImage(rs.getString("Image"));
                
                System.out.println(u);
                userlist.add(u);
                
                request.setAttribute("userlist",userlist);
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(userList_servlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(userList_servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
     request.getRequestDispatcher("userlist.jsp").forward(request,response);
  
    }// </editor-fold>

}
