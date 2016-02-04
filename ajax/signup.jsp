<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
    <head></head>
    <body>
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/comments" user="sudarshan" password="balaji" />
        <sql:update dataSource="${snapshot}">
            insert into user values ('${param.user}','${param.pass}');
        </sql:update>
        <p>Thanks for signing up!! Please <a href="login.jsp"> Login</a> here.</p>
    </body>
</html>
