<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="theme.css"/>
        <link rel="stylesheet" href="css/bootstrap.css"/>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body class="body">
        <%String uname=(String) session.getAttribute("uname");
            if(uname==null){
        %>
            <h1 class="col-sm-offset-3 col-sm-6">&nbsp;AJAX</h1>
        <ul class="nav nav-tabs col-sm-offset-3 col-sm-6" style="border-bottom:0px;">
            <li class="active design col-sm-6"><a href="#login" data-toggle="tab"><h3 class="margintop"><center>Log In</center></h3></a></li>
            <li class="design col-sm-6"><a href="#signup" data-toggle="tab"><h3 class="margintop"><center>Sign Up</center></h3></a></li>
        </ul><br/>
        <div class="tab-content col-sm-offset-3 col-sm-6 tab-border">
            <div class="tab-pane fade in active" id="login">
            <form role = "form" class="form-horizontal" action="loginValidate.jsp" method="GET">
                <div class="form-group has-feedback" id="emailDiv">
                    <div class="input-group input-group-lg col-sm-offset-2 col-sm-8">
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-user" id="emailSpan"></span>
                        </span>
                        <input class="form-control" type = "text" name="user" id="user" placeholder="Username" required/>
                        <span class="form-control-feedback"></span>
                    </div>
                </div>
                <div class="form-group has-feedback" id="passDiv">
                    <div class="input-group input-group-lg col-sm-offset-2 col-sm-8">
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-lock"></span>
                        </span>
                        <input class="form-control" type = "password" name="pass" id="pass" placeholder="Password" required/>
                        <span class="form-control-feedback" id="passSpan"></span>
                    </div>
                </div>
                <div class="form-group">
                <div class="col-sm-offset-4 col-sm-4">
                    <button class="btn btn-primary btn-lg btn-block" type = "submit" name="loginButton" id="loginButton">Log In</button>
                </div>
                </div>    
            </form>
            </div>
           
            <div class="tab-pane fade in" id="signup">
            <form role = "form" class="form-horizontal" action="signup.jsp" method="GET">
                <div class="form-group has-feedback" id="userNameDiv">
                    <div class="input-group input-group-lg col-sm-offset-2 col-sm-8">
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-user" id="userNameSpan"></span>
                        </span>
                        <input class="form-control" type = "text" name="user" id="userName" placeholder="Username" required/>
                        <span class="form-control-feedback"></span>
                    </div>
                </div>
                <div class="form-group has-feedback" id="passDiv">
                    <div class="input-group input-group-lg col-sm-offset-2 col-sm-8">
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-lock"></span>
                        </span>
                        <input class="form-control" type = "password" name="pass" id="password" placeholder="Password" required/>
                        <span class="form-control-feedback" id="passSpan"></span>
                    </div>
                </div>
                <div class="form-group has-feedback" id="repassDiv">
                    <div class="input-group input-group-lg col-sm-offset-2 col-sm-8">
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-lock"></span>
                        </span>
                        <input class="form-control" type = "password" name="repass" id="repass" placeholder="Re-type Password"/>
                        <span class="form-control-feedback" id="repassSpan"></span>
                    </div>
                </div>
                <div class="form-group has-feedback" id="emailDiv">
                    <div class="input-group input-group-lg col-sm-offset-2 col-sm-8">
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-envelope" id="emailSpan"></span>
                        </span>
                        <input class="form-control" type = "email" name="email" id="email" placeholder="E-mail" required/>
                        <span class="form-control-feedback"></span>
                    </div>
                </div>
                <div class="form-group has-feedback" id="nameDiv">
                    <div class="input-group input-group-lg col-sm-offset-2 col-sm-8">
                        <input class="form-control" type = "text" name="name" id="name" placeholder="Name"/>
                        <span class="form-control-feedback"></span>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-8">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="agreement" id="agreement" value="agree" style="background-color:red;" required/>I agree to the AJAX <a href="#">Terms of Service</a> and <a href="#">Privacy Policy.</a>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                <div class="col-sm-offset-4 col-sm-4">
                    <button class="btn btn-primary btn-lg btn-block" type = "submit" name="signupButton" id="signupButton">Sign Up</button>
                </div>
                </div>    
            </form>
            </div>
        </div>
        <% }else{%>
            <p>Hi <%= uname%>!</p>
                Goto <a href="comment.jsp">Forum</a>
        <% } %>
    </body>
</html>