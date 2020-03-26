
package servlet_package;

import database.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "registration_servlet", urlPatterns = {"/registration_servlet"})
public class registration_servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        
        try {
            
            
            PreparedStatement ps =DBConnection.getConnection().prepareStatement("insert into regis values (?,?,?)");
            ps.setString(1, name);
             ps.setString(2, email);
              ps.setString(3, pass);
              
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
            Logger.getLogger(registration_servlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(registration_servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("message.jsp").forward(request, response);

    }

  
        }
    
