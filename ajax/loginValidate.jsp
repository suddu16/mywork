<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
    <head></head>
    <body>
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/comments" user="sudarshan" password="balaji" />
        <sql:query dataSource="${snapshot}" var="comments">
            select * from user where uname='${param.user}' and password='${param.pass}';
        </sql:query>
        <c:choose>
            <c:when test="${comments.rowCount==0}">
                <% response.sendRedirect(request.getHeader("referer")); %>
            </c:when>
            <c:otherwise>
                <%=request.getParameter("user")%>
                <%
                   session.setAttribute("uname",request.getParameter("user"));
                %>
                <% response.sendRedirect("comment.jsp"); %>
            </c:otherwise>
        </c:choose>
    </body>
</html>
