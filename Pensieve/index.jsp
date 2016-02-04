<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="java.servlet.http.*,java.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    
<% String s = (String)session.getAttribute("user"); %>

  <% if(s!=null) { 
  response.sendRedirect("blog.jsp");
} %>
  

<!DOCTYPE html>
<!--[if lt IE 8 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 8)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>


   <!--- Basic Page Needs
   ================================================== -->
	<meta charset="utf-8">
	<title>Pensieve.</title>
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
	<link rel="shortcut icon" href="favicon.ico" >


</head>

<body data-spy="scroll" data-target="#nav-wrap">


   <!-- Header
   ================================================== -->
   <header class="mobile">

      <div class="row">

         <div class="col full">

            <div class="logo">
               <a href="#"><img alt="" src="images/hp.jpg"></a>
            </div>

            <nav id="nav-wrap">

               <a class="mobile-btn" href="#nav-wrap" title="Show navigation">Show navigation</a>
	            <a class="mobile-btn" href="#" title="Hide navigation">Hide navigation</a>

               <ul id="nav" class="nav">
	               <li><a href="#intro">Home</a></li>
	               <li><a href="#services">Services</a></li>
	               <li><a href="#portfolio">Memories</a></li>
	               <li><a href="#journal">Login</a></li>
                  <li><a href="#about">About Us</a></li>
                  <li><a href="#contact">Contact</a></li>
               </ul>

            </nav>

         </div>

      </div>

   </header> <!-- Header End -->


   <!-- Intro Section
   ================================================== -->
   <section id="intro">

      <!-- Flexslider Start-->
	   <div id="intro-slider" class="flexslider">

		   <ul class="slides">

			   <!-- Slide -->
			   <li>
				   <div class="row">
					   <div class="col full">
						   <div class="slider-text">
							   <h2>Hello, welcome  to <span>Pensieve</span>. We specialize in Personal web diaries.</h2>
							   <p>Aenean condimentum, lacus sit amet luctus lobortis, dolores et quas molestias excepturi
                        enim tellus ultrices elit, amet consequat enim elit noneas sit amet luctu.</p>
						   </div>
					   </div>
				   </div>
			   </li>

            <!-- Slide -->
			   <li>
				   <div class="row">
					   <div class="col full">
						   <div class="slider-text">
							   <h2>Pen down your most cherished <a href="#portfolio" title="">memories</a> and share them with your loved ones . . .</h2>
							   <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum
                        deleniti eos et accusamus.</p>
						   </div>
					   </div>
				   </div>
			   </li>

		   </ul>
	   </div>
	   <!-- Flexslider End-->

   </section> <!-- Intro Section End-->


   <!-- Services Section
   ================================================== -->
   <section id="services">

      <div class="row section-head">

         <div class="col one-third">
            <h2>Services</h2>
            <p class="desc">Our list of awesome services.</p>
         </div>

         <div class="col two-thirds">
            <div class="intro">
             <p>We Provide a wide range of personal services. It helps one keep in touch with his emotions and memories. Stay close with yourself through Pensieve.
              </p>
            </div>
         </div>

      </div>

      <div class="row">

         <div class="services-wrapper">

            <div class="col">
               <h2><i class="icon-desktop"></i>Web Diary</h2>
               <p>Pen down the most memorable moments of your life. Make everyday a special day. Relive them over and over again.</p>
            </div>

            <div class="col">
               <h2><i class="icon-camera"></i>Pictures</h2>
               <p>Store Your most private and intimate photos online with our services. Add a description if needed.</p>
            </div>

            <div class="col m-first">
               <h2><i class="icon-star"></i>Music</h2>
               <p>Enhance your mood while you pen down your thoughts. We have tunes to suit your every mood.</p>
            </div>

            <div class="col first">
               <h2><i class="icon-globe"></i>Share memories</h2>
               <p>Coming Soon.</p>
            </div>

            <div class="col m-first">
               <h2><i class=" icon-list-alt"></i>User Interface</h2>
               <p>Customize your diary theme. Coming soon.</p>
            </div>

            <div class="col">
               <h2><i class="icon-print"></i>Accounts Diary</h2>
               <p>Coming Soon.</p>
            </div>

         </div> <!-- Services-Wrapper End -->

      </div> <!--end row -->

   </section> <!-- Services Section End -->


   <!-- Portfolio Section
   ================================================== -->
   <section id="portfolio">

      <div class="row section-head">
         <div class="col full">

            <h2>Memories.</h2>
            <p class="desc">Pen down your thoughts.</p>

            <p class="intro">Memories ? Aren't they simply beautiful. Cherish the ones that make life worth living. Relive them for eternity.
            </p>

         </div>
      </div>

      <div class="row">

		   <!-- Portfolio Wrapper -->
		   <div id="portfolio-wrapper">

			   <div class="col portfolio-item">
               <div class="item-wrap">
					   <a href="#" data-reveal-id="modal-01"><img src="images/portfolio/cosmic-sneakers.jpg" alt=""/></a>
					   <div class="portfolio-item-meta">
						   <h5><a href="#">Sporty.</a></h5>
					   </div>
               </div>
			   </div>

            <div class="col portfolio-item">
               <div class="item-wrap">
					   <a href="#" data-reveal-id="modal-02"><img src="images/portfolio/milk-splash.jpg" alt=""/></a>
					   <div class="portfolio-item-meta">
						   <h5><a href="#">Amazing.</a></h5>
					   </div>
               </div>
			   </div>

            <div class="col portfolio-item">
               <div class="item-wrap">
					   <a href="#" data-reveal-id="modal-03"><img src="images/portfolio/eve.jpg" alt=""/></a>
					   <div class="portfolio-item-meta">
						   <h5><a href="#">Beautiful.</a></h5>
					   </div>
               </div>
			   </div>

            <div class="col portfolio-item">
               <div class="item-wrap">
					   <a href="#" data-reveal-id="modal-04"><img src="images/portfolio/sneaker-splash.jpg" alt=""/></a>
					   <div class="portfolio-item-meta">
						   <h5><a href="#">Victory.</a></h5>
					   </div>
               </div>
			   </div>

            <div class="col portfolio-item">
               <div class="item-wrap">
					   <a href="#" data-reveal-id="modal-05"><img src="images/portfolio/judah.jpg" alt=""/></a>
					   <div class="portfolio-item-meta">
						   <h5><a href="#">Historic.</a></h5>
					   </div>
               </div>
			   </div>

            <div class="col portfolio-item">
               <div class="item-wrap">
					   <a href="#" data-reveal-id="modal-06"><img src="images/portfolio/vector-flower.jpg" alt=""/></a>
					   <div class="portfolio-item-meta">
						   <h5><a href="#">Insightful.</a></h5>
					   </div>
               </div>
			   </div>

            <div class="col portfolio-item">
               <div class="item-wrap">
					   <a href="#" data-reveal-id="modal-07"><img src="images/portfolio/clock.jpg" alt=""/></a>
					   <div class="portfolio-item-meta">
						   <h5><a href="#">Time.</a></h5>
					   </div>
               </div>
			   </div>

            <div class="col portfolio-item">
               <div class="item-wrap">
					   <a href="#" data-reveal-id="modal-08"><img src="images/portfolio/fields.jpg" alt=""/></a>
					   <div class="portfolio-item-meta">
						   <h5><a href="#">Nostalgia.</a></h5>
					   </div>
               </div>
			   </div>

		   </div> <!-- Portfolio Wrapper End -->


		</div> <!-- End Row -->


      <!-- Modal Popup
	   =========================================================== -->

      <!-- modal-01 -->
	   <div id="modal-01" class="reveal-modal">

		   <img class="scale-with-grid" src="images/portfolio/modals/m-cosmic-sneakers.jpg" alt="" />

		   <div class="description-box">
			   <h4>The Cosmic Sneakers</h4>
			   <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>
            <span class="categories"><i class="icon-tag"></i>Branding, Web Design</span>
		   </div>

         <div class="link-box">
            <a href="http://www.behance.net">Details</a>
		      <a class="close-reveal-modal">Close</a>
         </div>

	   </div><!-- modal-01 End -->

      <!-- modal-02 -->
	   <div id="modal-02" class="reveal-modal">

		   <img class="scale-with-grid" src="images/portfolio/modals/m-milk-splash.jpg" alt="" />

		   <div class="description-box">
			   <h4>Milk Splash</h4>
			   <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>
            <span class="categories"><i class="icon-tag"></i>Branding, Web Design</span>
         </div>

         <div class="link-box">
            <a href="http://www.behance.net">Details</a>
		      <a class="close-reveal-modal">Close</a>
         </div>

	   </div> <!-- modal-02 End -->

      <!-- modal-03 -->
	   <div id="modal-03" class="reveal-modal">

		   <img class="scale-with-grid" src="images/portfolio/modals/m-eve.jpg" alt="" />

		   <div class="description-box">
			   <h4>Eve</h4>
			   <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>
            <span class="categories"><i class="icon-tag"></i>Photography, Branding</span>
         </div>

         <div class="link-box">
            <a href="http://www.behance.net">Details</a>
		      <a class="close-reveal-modal">Close</a>
         </div>

	   </div> <!-- modal-03 End -->

      <!-- modal-04 -->
	   <div id="modal-04" class="reveal-modal">

		   <img class="scale-with-grid" src="images/portfolio/modals/m-sneaker-splash.jpg" alt="" />

		   <div class="description-box">
			   <h4>Sneaker Splash</h4>
			   <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>
            <span class="categories"><i class="icon-tag"></i>Photography, Branding</span>
         </div>

         <div class="link-box">
            <a href="http://www.behance.net">Details</a>
		      <a class="close-reveal-modal">Close</a>
         </div>

	   </div> <!-- modal-04 End -->

      <!-- modal-05 -->
	   <div id="modal-05" class="reveal-modal">

		   <img class="scale-with-grid" src="images/portfolio/modals/m-judah.jpg" alt="" />

		   <div class="description-box">
			   <h4>Judah</h4>
			   <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>
            <span class="categories"><i class="icon-tag"></i>Photography, Web Design</span>
         </div>

         <div class="link-box">
            <a href="http://www.behance.net">Details</a>
		      <a class="close-reveal-modal">Close</a>
         </div>

	   </div> <!-- modal-05 End -->

      <!-- modal-06 -->
	   <div id="modal-06" class="reveal-modal">

		   <img class="scale-with-grid" src="images/portfolio/modals/m-vector-flower.jpg" alt="" />

		   <div class="description-box">
			   <h4>Vector Flower</h4>
			   <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>
            <span class="categories"><i class="icon-tag"></i>Branding, Web Design</span>
         </div>

         <div class="link-box">
            <a href="http://www.behance.net">Details</a>
		      <a class="close-reveal-modal">Close</a>
         </div>

	   </div> <!-- modal-06 End -->

      <!-- modal-07 -->
	   <div id="modal-07" class="reveal-modal">

		   <img class="scale-with-grid" src="images/portfolio/modals/m-clock.jpg" alt="" />

		   <div class="description-box">
			   <h4>Clock</h4>
			   <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>
            <span class="categories"><i class="icon-tag"></i>Branding, Web Design</span>
         </div>

         <div class="link-box">
            <a href="http://www.behance.net">Details</a>
		      <a class="close-reveal-modal">Close</a>
         </div>

	   </div> <!-- modal-07 End -->

      <!-- modal-08 -->
	   <div id="modal-08" class="reveal-modal">

		   <img class="scale-with-grid" src="images/portfolio/modals/m-fields.jpg" alt="" />

		   <div class="description-box">
			   <h4>Fields</h4>
			   <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>
            <span class="categories"><i class="icon-tag"></i>Photography</span>
         </div>

         <div class="link-box">
            <a href="http://www.behance.net">Details</a>
		      <a class="close-reveal-modal">Close</a>
         </div>

	   </div> <!-- modal-08 End -->

   </section> <!-- Portfolio End -->

   <!-- Journal Section
   ================================================== -->
   <section id="journal">

      <div class="row section-head">
         <div class="col full">
           <center> <h2>Welcome.</h2>
            <p class="desc">Sign in or Sign up.</p></center>
         </div>
      </div>

      <!-- Blog Entries -->
      <div class="blog-entries">

         <!-- Entry -->
         <article class="entry">

            <div class="row entry-header">

               

               

            </div>

         </article> <!-- Entry End -->

         <!-- Entry -->
         <article class="entry">

            <div class="row entry-header">
               <center>
               <div class="author-image">

               </div>

               <div class="col g-9 offset-1 entry-title">
                  <h3><a href="blog-single.html"> <div class="author-image">
                 
               <img src="images/user-03.png" alt="Vignesh Nandakumar" /> </div>Enter your details to continue :</a></h3></center>
               </div>

              <br>
               <center>
               <form action="signin.jsp" method="get">
                   Username: <input type="text" name="fname"><br>
                     Password: <input type="password" name="lname"><br>
                        <input type="submit" value="Sign in.">
               </form>
                  </center>
                 
            </div>
            
            <center>
                <h1>
               New User ? 
               <br>
                    </h1>
                <form action="signup.jsp" method="POST">
                        Username: <input type="text" name="user"><br>
                        Password: <input type="password" name="pass"><br>
                        <input type="submit" value="Sign up.">
                     </center>
                  </form>
            <div class="row">

              

            </div>

         </article> <!-- Entry End -->

      </div> <!-- Blog Entries End -->

   </section>  <!-- Journal Section End -->


   <!-- About Section
   ================================================== -->
   <section id="about">

      <div class="row section-head">

         <div class="col one-fourth">
            <h2>About Us</h2>
            <p class="desc">This is what we are.</p>
         </div>

         <div class="col three-fourths">
             <p class="intro">Four useless kids trying to make something out of life . :P </p>
         </div>

      </div>

      <div class="row">
         <div class="col full"><h3>Our Work Process.</h3></div>
      </div>

      <div class="row process-wrap">

         <div class="col">
            <h4>Explore.</h4>

            <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor,
            nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate
            cursus a sit amet mauris. Morbi accumsan ipsum velit.</p>
			</div>

         <div class="col">
            <h4>Design.</h4>

            <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor,
            nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate
            cursus a sit amet mauris. Morbi accumsan ipsum velit. Duis sed odio sit.
            </p>
			</div>

         <div class="col m-first">
            <h4>Develop.</h4>

            <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor,
            nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate
            cursus a sit amet mauris. Morbi accumsan ipsum velit.</p>
			</div>

         <div class="col">
            <h4>Deliver.</h4>

            <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor,
            nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate
            cursus a sit amet mauris. Morbi accumsan ipsum velit. Duis sed odio sit.
            </p>
			</div>

      </div> <!-- Process Wrap End -->

      <div class="row">
         <div class="col full"><h3>Meet The Team.</h3></div>
      </div>


      <!-- Team Wrap End -->
      <div class="row team-wrap">

         <div class="col one-fourth">

            <img src="images/team/team-img-01.jpg" alt=""/>

            <div class"member-name">
               <h5>Vignesh Nandakumar</h5>
               <span>Director</span>
            </div>

            <ul class="member-social">
               <li><a href="#"><i class="icon-facebook"></i></a></li>
               <li><a href="#"><i class="icon-twitter"></i></a></li>
               <li><a href="#"><i class="icon-google-plus-sign"></i></a></li>
               <li><a href="#"><i class="icon-linkedin"></i></a></li>
               <li><a href="#"><i class="icon-skype"></i></a></li>
            </ul>

			</div>

         <div class="col one-fourth">

            <img src="images/team/team-img-03.jpg" alt=""/>

            <div class"member-name">
               <h5>Sriram Venkatraman</h5>
               <span>Director</span>
            </div>

            <ul class="member-social">
               <li><a href="#"><i class="icon-facebook"></i></a></li>
               <li><a href="#"><i class="icon-twitter"></i></a></li>
               <li><a href="#"><i class="icon-google-plus-sign"></i></a></li>
               <li><a href="#"><i class="icon-linkedin"></i></a></li>
               <li><a href="#"><i class="icon-skype"></i></a></li>
            </ul>

			</div>

         <div class="col one-fourth">

            <img src="images/team/team-img-01.jpg" alt=""/>

            <div class"member-name">
               <h5>Sudarshan Ranga</h5>
               <span>Senior Web Designer</span>
            </div>

            <ul class="member-social">
               <li><a href="#"><i class="icon-facebook"></i></a></li>
               <li><a href="#"><i class="icon-twitter"></i></a></li>
               <li><a href="#"><i class="icon-google-plus-sign"></i></a></li>
               <li><a href="#"><i class="icon-linkedin"></i></a></li>
               <li><a href="#"><i class="icon-skype"></i></a></li>
            </ul>
             
             
             

			</div>

          
          
          <div class="col one-fourth">

            <img src="images/team/team-img-01.jpg" alt=""/>

            <div class"member-name">
               <h5>Prasad Tegz</h5>
               <span>CEO,Tegz Design Studi</span>
            </div>

            <ul class="member-social">
               <li><a href="#"><i class="icon-facebook"></i></a></li>
               <li><a href="#"><i class="icon-twitter"></i></a></li>
               <li><a href="#"><i class="icon-google-plus-sign"></i></a></li>
               <li><a href="#"><i class="icon-linkedin"></i></a></li>
               <li><a href="#"><i class="icon-skype"></i></a></li>
            </ul>
             
             
             

			</div>

          
          
          
        <!-- Team Wrap End -->

      <!-- Testimonials -->
      <div class="row">

         <div class="col full section-head">
            <h2>Testimonials</h2>
            <p class="desc">What our clients are saying.</p>
         </div>

      </div>

      <div class="row testimonials">

         <div class="col half">

            <div class="client-author">
               <img src="images/client-img.png" alt="" />
               <div class="name">
                  <p>Vaibhav Swamy<span>Ex-Army</span></p>
               </div>
            </div>

		      <div class="client-cite">
			      <p>A very convinient way to pen down your memories. Helped me throughout my army days in remote locations.</p>
		      </div>

         </div>

         <div class="col half">

            <div class="client-author">
               <img src="images/client-img.png" alt="" />
               <div class="name">
                  <p>Michael Smith<span>CEO</span></p>
               </div>
            </div>

		      <div class="client-cite">
			      <p>Nascetur augue hac platea enim, egestas pulvinar vut. Pulvinar cum, ac eu, tristie
               acus duis in dictumst non integer. Elit, sed scelerisque odio tortor, sed platea dis.
               Aenean condimentum, lacus sit amet luctus lobortis,
               enim tellus ultrices elit.</p>
		      </div>

         </div>

      </div> <!--  Testimonials End-->


   </section> <!-- About Section End-->

  

   <!-- Map Section
   ================================================== -->
   <section id="map">

      <p class="map-error">Something went wrong... Unable to load map... Please try to enable javascript</p>

   </section> <!-- Map Section End-->

    <!-- Contact Section
   ================================================== -->
   <section id="contact">

      <div class="row section-head">
         <div class="col full">
            <h2>Contact Us</h2>
            <p class="desc">Get in touch with us.</p>
         </div>
      </div>

      <div class="row">

         <div class="col g-7">

            <!-- form -->
            <form name="contactForm" id="contactForm" method="post" action="">
					<fieldset>

                  <div>
						   <label for="contactName">Name <span class="required">*</span></label>
						   <input name="contactName" type="text" id="contactName" size="35" value="" />
                  </div>

                  <div>
						   <label for="contactEmail">Email <span class="required">*</span></label>
						   <input name="contactEmail" type="text" id="contactEmail" size="35" value="" />
                  </div>

                  <div>
						   <label for="contactSubject">Subject</label>
						   <input name="contactSubject" type="text" id="contactSubject" size="35" value="" />
                  </div>

                  <div>
                     <label  for="contactMessage">Message <span class="required">*</span></label>
                     <textarea name="contactMessage"  id="contactMessage" rows="15" cols="50" ></textarea>
                  </div>

                  <div>
                     <button class="submit">Submit</button>
                     <span id="image-loader">
                        <img src="images/loader.gif" alt="" />
                     </span>
                  </div>

					</fieldset>
				</form> <!-- Form End -->

            <!-- contact-warning -->
            <div id="message-warning"></div>
            <!-- contact-success -->
				<div id="message-success">
               <i class="icon-ok"></i>Your message was sent, thank you!<br />
				</div>

         </div>


         <aside class="col g-5">

            <h3>Contact Information</h3>

            <p>Feel free to write back to us :)</p>

            <p>
            Pensieve Design Studio <br />
            SSN College Of Engineering <br />
            Last Bench
            Last Row
            </p>

            <p>
            Phone: 9677149265 <br />
            Email: vignesh.n.iyer@gmail.com
            </p><br />

            

         </aside>

      </div>

   </section> <!-- Contact Section End-->

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

   <script src="js/scrollspy.js"></script>
   <script src="js/jquery.flexslider.js"></script>
   <script src="js/jquery.reveal.js"></script>
   <script src="http://maps.google.com/maps/api/js?sensor=true" type="text/javascript"></script>
   <script src="js/gmaps.js"></script>
   <script src="js/init.js"></script>
   <script src="js/smoothscrolling.js"></script>

</body>

</html>