<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="java.servlet.http.*,java.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<% String s = (String)session.getAttribute("user"); %>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/nv"
     user="sudarshan"  password="balaji"/>

     <sql:update dataSource="${snapshot}" var="result">
insert into sharedpost values ("${param.postid}","<%=s%>","${param.touser}");
</sql:update>
    <% response.sendRedirect("blog.jsp"); %>