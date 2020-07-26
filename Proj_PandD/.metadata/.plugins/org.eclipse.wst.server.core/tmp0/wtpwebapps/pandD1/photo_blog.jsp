<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.Photo,java.util.List"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Photo Blog</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Sailor - v2.0.0
  * Template URL: https://bootstrapmade.com/sailor-free-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">
  <h1 class="logo"><a href="index.jsp" style="color:skyblue;font-size: calc(0.5em + 0.5vw)" ><img src="assets/img/bg/CA.png" style="width: 80px;padding-right: 20px"></a>
      </h1>
       <h1 class="logo "><a href="index.jsp" style="color:skyblue;font-size:calc(0.5em + 0.5vw)" >Pusegaonkar & Dindokar <br><label style="color: black">Chartered Accountants</label></a>
      </h1>
<!--       <h1 class="logo" style="opacity: 0"><a href="index.jsp" style="color:skyblue;font-size: 20px" >Pusegaonkar</a>
      </h1>
      <br><h1 class="logo"><a href="index.jsp" style="font-size: 18px;opacity: 0" >.</a></h1> -->
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.jsp" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="nav-menu d-none d-lg-block ml-auto">

        <ul>
          <li ><a href="index.jsp">Home</a></li>

          <li class="drop-down"><a href="#">About</a>
            <ul>
              <li><a href="about.html">About Us</a></li>
              <li><a href="partners.html">Partners</a></li>
              <li><a href="Clientele.html">Clientele</a></li>

            </ul>
          </li>

          <li><a href="services.html">Services</a></li>
          <li class="drop-down active"><a href="#">Blog</a>
                <ul>
                  <li><a href="VideoBlog.jsp">Video Blogs</a></li>
                  <li><a href="photo_blog.jsp">Photo Blogs</a></li>
                </ul>
          </li>
          <li><a href="Link&Update.jsp">Links & Updates</a></li>

          <li><a href="contact.jsp">Contact</a></li>
       
            
                
                  <li> <a href="admin.html">Admin</a></li>


        </ul>

      </nav><!-- .nav-menu -->

     

    </div>
  </header><!-- End Header -->
  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Photo Blog</h2>
          <ol>
            <li><a href="index.jsp">Home</a></li>
            <li>photo_blog</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">
                      <%
                      
         Photo photoObj=Photo.getPhotoObj();
         List<List<String>> PhotoDbList=photoObj.getPhotoDbOutterList();
         if(PhotoDbList != null)
         {
         System.out.println("asdsdsadsadas");
         
         }
         
        
         %>
       
        <%  for(List<String> innerList : PhotoDbList)
  {  System.out.println("Splitting====>");
   System.out.println(innerList);
   String[] myArray = new String[innerList.size()];
   innerList.toArray(myArray);
   
   

  
  for(int i=0;i<1;i++)
   {
	 

   %>

    
    <div class="row mt-2">
 
          <div class="col-lg-6 mt-5 mt-lg-0">
            
         <section id="hero" style="height: 320px !important ">
    <div id="<%=myArray[3].replaceAll("\\s", "")%>" class="carousel slide carousel-fade" data-ride="carousel">

      <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

      <div class="carousel-inner" role="listbox">
	
        <!-- Slide 1 -->
        <div class="carousel-item active" >
          <div class="carousel-container">
           <img src="<%=myArray[5]%>" >
           
          </div>
        </div>
 <%
    for(int ii=6;ii<=myArray.length-1;ii++)
    {%>
    	
   
        <!-- Slide 2 -->
        <div class="carousel-item" >
          <div class="carousel-container">
          <img src="<%=myArray[ii]%>">
          </div>
        </div>
<% }
    %>
  


      </div>

      <a class="carousel-control-prev"  style="padding-bottom: 25%" href="#<%=myArray[3].replaceAll("\\s", "")%>" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon icofont-simple-left" style="color: black" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>

      <a class="carousel-control-next" style="padding-bottom: 25%" href="#<%=myArray[3].replaceAll("\\s", "")%>" role="button" data-slide="next">
        <span class="carousel-control-next-icon icofont-simple-right" style="color: black"aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>

    </div>
  </section><!-- End Hero -->

          </div>

        <div class="col-lg-6 mt-5 mt-lg-0">
            <div class="info">
              <article class="entry">

              <h2 class="entry-title">
                <a href=""><%=myArray[1]%></a>
              </h2>

              <div class="entry-meta">
                <ul class="row">
                  <li class="d-flex align-items-center"><i class="icofont-user"></i> <a href="blog-single.html">Admin</a></li>
                  <li class="d-flex align-items-center" style="padding-left: 10px"><i class="icofont-calendar"></i> <a href=""><time datetime="2020-01-01"><%=myArray[4]%></time></a></li>
                </ul>
              </div>

              <div class="entry-content">
                <p>
                  <%=myArray[2]%>
                </p>
              
              </div>

            </article><!-- End blog entry -->

            </div>

          </div>


        </div>
         <hr style="background-color: gray;height: 10px;margin-bottom: 20px;margin-top: 20px">

<%
   }} %>
  
  


      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->
 <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="footer-info">
              <h3><a href="index.jsp" style="color:skyblue;font-size: 20px" >Pusegaonkar & Dindokar</a>
      <label style="font-size: 18px;">  Chartered Accountants</label></h3>
              <p>
                208,Amar Neptune baner Pune 411045 <br>
                <br><br>
                <strong>Phone:</strong>+91 9834742691<br>
                <strong>Email:</strong> info@pandd.in<br>
              </p>
              <div class="social-links mt-3">
                <a href="https://twitter.com/CAPANDD" class="twitter"><i class="bx bxl-twitter"></i></a>
                <a href="https://www.facebook.com/capandd" class="facebook"><i class="bx bxl-facebook"></i></a>
                
                <a href="https://www.youtube.com/channel/UCzmlQfqLNmY9PI2lMabuaVA" class="google-plus"><i class="bx bxl-youtube"></i></a>
                <a href="https://www.linkedin.com/company/54317819" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                <a href="https://wa.me/919834742691?text=I%20would%20like%20to%20have%20your%20servies" class="google-plus"><i class="bx bxl-whatsapp"></i></a>

                <a href="https://t.me/PUSEGAONKARANDDINDOKAR" class="google-plus" style="margin-top: 5px"><i class="bx bxl-telegram"></i></a>
                
              </div>
            </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="index.jsp">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="about.html">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="services.html">Services</a></li>
              

             <li><i class="bx bx-chevron-right"></i><a href="VideoBlog.jsp">Video Blogs</a></li>
            <li><i class="bx bx-chevron-right"></i><a href="photo_blog.jsp">Photo Blogs</a></li>
               

              <li><i class="bx bx-chevron-right"></i> <a href="#">Links & Updates</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="contact.jsp">Contact</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="services.html">Audit & Assurance</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="services.html">Direct & Indirect Taxes</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="services.html">Banking & Finance</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="services.html">Business and Knowledge Process Outsourcing and Accounting</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="services.html">Corporate Law</a></li>
      
              
              
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4><a href="https://www.youtube.com/channel/UCzmlQfqLNmY9PI2lMabuaVA">Our Youtube Channel</a></h4>
            <p></p>
            <form action="" method="post">
              <a href="https://www.youtube.com/channel/UCzmlQfqLNmY9PI2lMabuaVA"><input type="email" name="email"><input type="submit" value="Subscribe"></a>
            </form>

          </div>

        </div>
      </div>
    </div>

  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>