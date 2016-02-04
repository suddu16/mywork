<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="java.servlet.http.*,java.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/nv"
     user="sudarshan"  password="balaji"/>

     <sql:update dataSource="${snapshot}" var="result">
insert into login values ("${param.user}","${param.pass}");
</sql:update>
    <% response.sendRedirect("back.html"); %>