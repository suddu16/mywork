<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="java.servlet.http.*,java.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    
<% String s = (String)session.getAttribute("user"); %>

  <% if(s==null) { 
  response.sendRedirect("index.jsp");
} %>
  
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://localhost/nv"
    user="sudarshan"  password="balaji"/>

<sql:query dataSource="${snapshot}" var="result">
    select * from post where user='<%=s%>' order by day desc;
</sql:query>

<!DOCTYPE html>
<!--[if lt IE 8 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 8)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>


   <!--- Basic Page Needs
   ================================================== -->
	<meta charset="utf-8">
	<title>Blogs</title>
	<meta name="description" content="">
	<meta name="author" content="">

   <!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- CSS
   ================================================== -->
   <link rel="stylesheet" href="css/base.css">
	<link rel="stylesheet" href="css/layout.css">

	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

   <!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="favicon.ico">


</head>

<body class="narrow">


   <!-- Header
   ================================================== -->
    <header id="top" class="static">

      <div class="row">

         <div class="col full">

            <div class="logo">
               <a href="index.jsp"><img alt="" src="images/hp.jpg"></a>
            </div>

            <nav id="nav-wrap">

               <a class="mobile-btn" href="#nav-wrap" title="Show navigation">Show navigation</a>
	            <a class="mobile-btn" href="#" title="Hide navigation">Hide navigation</a>

               <ul id="nav" class="nav">
	               <li>Welcome  <%=s%></li>
                   <li><a href="blog.jsp">My Posts</a></li>
	               <li><a href="shared.jsp">Shared Posts</a></li>
                  <li><a href="logout.jsp">Log Out</a></li>
               </ul>

            </nav>

         </div>

      </div>

   </header> <!-- Header End -->

   <!-- Blog Entries
   ================================================== -->
   
   <div id="blog-entries">

      <!-- Post -->
    <center>
        <h1><br><br>
            Having new thoughts to pen down ?
            <br><br>
        </h1>
                
        <form action="new.html" method="get">
            <input type="submit" value="New Post.">
         </form>         
    </center>
                 
    <c:forEach var="row" items="${result.rows}">

       <article class="post">

         <div class="row">

            <div class="col entry-header cf">
            
                <h1>
                  <a href="blog-single.html" title="">
                              <c:out value = "${row.title}" />
                  </a>
                </h1>

              <div class="post-meta">

                 <time class="date" datetime="2013-08-14T11:24"><c:out value = "${row.day}" /></time>


              </div>

            </div>


            <div class="col post-content offset-2">

               <p><c:out value = "${row.post}" /></p>
                
                
                 <p class="categories">
                    <span class="sep">#</span><a href="#">Happy</a>
                    <span class="sep">#</span><a href="#">Nostalgic</a>
                    <span class="sep">#</span><a href="#">Missings</a>
                 </p>

                <form action="share.jsp">
                    <input type="hidden" name="postid" value="${row.postid}"/>
                    <input type="text" name="touser">
                    <input type="submit" value="Share">
                </form>

            </div>

         </div>

      </article> <!-- Post End -->
          </c:forEach>
      
      <div class="row">

         <!-- Pagination -->
         <nav class="col full pagination">
			   <ul>
               <li><span class="page-numbers prev inactive">Prev</span></li>
				   <li><span class="page-numbers current">1</span></li>
				   <li><a href="#" class="page-numbers">2</a></li>
               <li><a href="#" class="page-numbers">3</a></li>
               <li><a href="#" class="page-numbers">4</a></li>
               <li><a href="#" class="page-numbers">5</a></li>
               <li><a href="#" class="page-numbers">6</a></li>
               <li><a href="#" class="page-numbers">7</a></li>
               <li><a href="#" class="page-numbers">8</a></li>
               <li><a href="#" class="page-numbers">9</a></li>
				   <li><a href="#" class="page-numbers next">Next</a></li>
			   </ul>
		   </nav>

     </div>

   </div> <!-- Blog Entries End -->


   <!-- Bottom Block
   ================================================== -->
   <div id="bottom-block">

      <div class="row">

         <div class="col three-fourths">

            <ul class="blog-categories">

				   <li class="current"><a href="/blog">All</a></li>
					<li><a title="View all posts filed under Community" href="#">Community</a></li>
              	<li><a title="View all posts filed under Design" href="#">Design</a></li>
              	<li><a title="View all posts filed under Development" href="#">Development</a></li>
              	<li><a title="View all posts filed under User Interface" href="#">User Interface</a></li>
              	<li><a title="View all posts filed under News" href="#">News</a></li>
              	<li><a title="View all posts filed under Photography" href="#">Photography</a></li>
              	<li><a title="View all posts filed under Projects" href="#">Projects</a></li>

				</ul>

         </div>

         <div class="col one-fourth back-to-top">
             <p><a href="#top">Back to Top<i class="icon-level-up"></i></a></p>
         </div>

      </div>

   </div> <!-- Bottom Block End -->

   <!-- footer
   ================================================== -->
   <footer>

      <div class="row">

         <div class="col g-7">
            <ul class="copyright">
               <li>&copy; 2014 Kreative</li>
               <li>Design by <a href="http://www.styleshout.com/" title="Styleshout">Styleshout</a></li>               
            </ul>
         </div>

         <div class="col g-5 pull-right">
            <ul class="social-links">
               <li><a href="#"><i class="icon-facebook"></i></a></li>
               <li><a href="#"><i class="icon-twitter"></i></a></li>
               <li><a href="#"><i class="icon-google-plus-sign"></i></a></li>
               <li><a href="#"><i class="icon-linkedin"></i></a></li>
               <li><a href="#"><i class="icon-skype"></i></a></li>
               <li><a href="#"><i class="icon-rss-sign"></i></a></li>
            </ul>
         </div>

      </div>

   </footer> <!-- Footer End-->

   <!-- Java Script
   ================================================== -->
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
   <script>window.jQuery || document.write('<script src="js/jquery-1.10.2.min.js"><\/script>')</script>
   <script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>

   <script src="js/smoothscrolling.js"></script>

</body>

</html>