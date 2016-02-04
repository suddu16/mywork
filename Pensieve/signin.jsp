<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="java.servlet.http.*,java.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/nv"
     user="sudarshan"  password="balaji"/>

     <sql:query dataSource="${snapshot}" var="result">
select * from login where user = "${param.fname}" and pass="${param.lname}";

</sql:query>
<html>
<body>
	<c:choose>
	<c:when test = "${result.rowCount==0}">
	<% response.sendRedirect(request.getHeader("referer")); %>
</c:when>
	<c:otherwise>
	<% session.setAttribute("user",request.getParameter("fname")); %>
<% response.sendRedirect("blog.jsp"); %>

</c:otherwise>
</c:choose>
</body>
</html>
