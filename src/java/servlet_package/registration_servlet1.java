package servlet_package;

import db_package.DBConnection;
import java.io.IOException;
import java.sql.PreparedStatement;
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
@WebServlet(name = "registration_servlet1", urlPatterns = {"/registration_servlet1"})
public class registration_servlet1 extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String mobile = request.getParameter("mobileno");
        String email = request.getParameter("email");
        String image = request.getParameter("img");
        String pass = request.getParameter("pass");
        String rpass = request.getParameter("rpass");
        
        try {
            PreparedStatement ps = DBConnection.getConnection().prepareStatement("insert into regis1 values(?,?,?,?,?,?)");
              ps.setString(1, name);
              ps.setString(2, email);
              ps.setString(3, mobile);
              ps.setString(4, image);
              ps.setString(5, pass);
              ps.setString(6, rpass);
               int i = ps.executeUpdate();
            if(i>0){
                String msg="Registration  successfully";
                request.setAttribute("msg", msg);
                
            }
            else{
                
                String error = "Data not inserted successfully.<a href=registration.jsp> Plese try agin </a>";
                request.setAttribute("error", error);
            }
        } catch (SQLException ex) {
            Logger.getLogger(registration_servlet1.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(registration_servlet1.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        request.getRequestDispatcher("regismsg.jsp").forward(request, response);
        
    }
    
    
  
}