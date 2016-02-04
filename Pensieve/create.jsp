<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.io.*,java.util.Date,java.sql.*" %>
<%@ page import="java.servlet.http.*,java.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/nv"
     user="sudarshan"  password="balaji"/>
<% Date d = new Date(); %>
    <% String s = (String)session.getAttribute("user"); %>
     <sql:update dataSource="${snapshot}" var="result">
insert into post(post,title,day,user) values ("${param.cMessage}","${param.cTitle}","<%=d%>","<%=s%>");
</sql:update>
<% response.sendRedirect("blog.jsp");%>