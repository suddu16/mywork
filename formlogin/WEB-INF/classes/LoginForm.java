import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class LoginForm extends HttpServlet{
    
    Connection conn;
    Statement stmt;
    public void init() throws ServletException{
    }
    
    public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
        
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<html><body><p>");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/website","sudarshan","balaji");
            String email=req.getParameter("email");
            String password = req.getParameter("password");
            
            String sql = "select * from users where email='"+email+"' and password='" + password+"';";
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            
            if(rs.next()){
                out.println("Welcome " + rs.getString(3));
            }
            else{
                out.println("Invalid Login!<br/>Please SignUp!");
            }
        }catch(Exception e){
            out.println(e.getMessage());
        }finally{
            out.println("</p>");
        }
    }
    
    public void destroy(){
    }

}