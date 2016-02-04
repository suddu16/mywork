import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class FormValidate extends HttpServlet{
    
    public void init() throws ServletException{
    }
    
    public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
        res.setContentType("text/html");
        String email = req.getParameter("email");
        String name = req.getParameter("name");
        String[] interest = req.getParameterValues("interest");
        String country = req.getParameter("country");
        String rating = req.getParameter("rating");
        String comment = req.getParameter("comment");
        String dob = req.getParameter("dob");
        PrintWriter out = res.getWriter();
        
        out.println("<html><head><link rel='stylesheet' type='text/css' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.css'/></head><body>");
        
        out.println("<table border=3 cellpadding=10 cellspacing=5><caption>Your Feedback</caption>");
        out.println("<tr><th>Name</th><td>"+name+"</td></tr>");
        out.println("<tr><th>Date Of Birth</th><td>"+dob+"</td></tr>");
        out.println("<tr><th>Email</th><td>"+email+"</td></tr>");
        out.println("<tr><th>Country</th><td>"+country+"</td></tr>");
        out.println("<tr><th>Rating</th><td>"+rating+"</td></tr>");
        out.println("<tr><th>Comment</th><td>"+comment+"</td></tr>");
        out.println("<tr><th>Interests</th><td>");
        for (String i : interest)
            out.println("<p>"+i+"</p>");
        out.println("</td></tr>");
        out.println("</table>");
        out.println("</body></html>");
    }
    
    public void destroy(){
    }

}