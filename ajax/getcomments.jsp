<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
    <html>
        <body>
            <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/comments" user="sudarshan" password="balaji"/>
            <c:if test="${not empty param.comment}">
                <sql:update dataSource="${snapshot}">
                    insert into comment values("${param.comment}","${param.user}");
                </sql:update>
            </c:if>
            <sql:query dataSource="${snapshot}" var="result">
                select * from comment;
            </sql:query>

            <c:forEach var="i" items="${result.rows}">
                <p><c:out value="${i.user}"/> : <c:out value="${i.com}"/></p>
            </c:forEach>

        </body>
    </html>
