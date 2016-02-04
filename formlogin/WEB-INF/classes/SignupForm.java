import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class SignupForm extends HttpServlet{
    
    Connection conn;
    PreparedStatement pS;
    public void init() throws ServletException{
    }
    
    public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
        
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<html><body><p>");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/website","sudarshan","balaji");
            String userName=req.getParameter("userName");
            String pass = req.getParameter("password");
            String email = req.getParameter("email");
            String fullName = req.getParameter("name");
            String sql = "insert into users values(?,?,?,?);";
            
            pS = conn.prepareStatement(sql);
            
            pS.setString(1,fullName);
            pS.setString(2,email);
            pS.setString(3,userName);
            pS.setString(4,pass);
            pS.executeUpdate();
            
            out.println("Account Successfully created!");
        }catch(Exception e){
            out.println(e.getMessage());
        }finally{
            out.println("</p>");
        }
    }
    
    public void destroy(){
    }

}