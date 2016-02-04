<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<% String uname = (String)session.getAttribute("uname");
   if(uname==null){response.sendRedirect("login.jsp");}
   %>
<html>
    <head>
        <title>Trying AJAX comment page.</title>
        <script type="text/javascript" src="ajax.js"></script>
    </head>
    <body onload="ajaxFunction('<%= uname%>')">
        <h3>Welcome <%= uname%>! <span><a href="logout.jsp">Logout</a></span></h3>
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/comments" user="sudarshan" password="balaji"/>
        
        <div id = "comment">
            <img src="image.jpg" width="500"/>
            <form>
                <br/>
                <textarea placeholder="Comment" cols="79" id="commentId" name="commentName"></textarea><br/><br/>
                <button type="button" onclick="ajaxFunction('<%= uname%>')">Comment</button>
            </form>
            <div id="comments">
                <%@include file="getcomments.jsp"%>
            </div>
        </div>
    </body>
</html>