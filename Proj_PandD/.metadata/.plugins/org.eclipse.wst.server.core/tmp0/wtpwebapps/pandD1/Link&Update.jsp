<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.Link,model.Update,java.util.List"%>
<DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Link & Update</title>
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
          <li class="drop-down"><a href="#">Blog</a>
                <ul>
                  <li><a href="VideoBlog.jsp">Video Blogs</a></li>
                  <li><a href="photo_blog.jsp">Photo Blogs</a></li>
                </ul>
          </li>
          <li class="active"><a href="Link&Update.jsp">Links & Updates</a></li>

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
          <h2>Links & Updates</h2>
          <ol>
            <li><a href="index.jsp">Home</a></li>
            <li>Links & Updates</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Pricing Section ======= -->
    <section id="pricing" class="pricing">
      <div class="container ">

        <div class="row ">

          <div class="col-lg-6 col-md-6 asdasd3">
            <div class="box featured" style="background-color: darkgray">
              <h3>Links On Important Topics</h3>
              <%
         Link linkObj=Link.getLinkObj();
         List<List<String>> linkDbList=linkObj.getLinkDbOutterList();
         if(linkDbList != null)
         {
         System.out.println("asdsdsadsadas");
         
         }
         
        
         %>
         
              <ul style="background-color: lightgray" >
                 
                 <marquee direction = "up" scrollamount="3" scrolldelay="100" onmouseover="stop()" onmouseout="start()" >
         <%  for(List<String> innerList : linkDbList)
  { 
   String[] myArray = new String[innerList.size()];
   innerList.toArray(myArray);
   
   

  
  for(int i=0;i<1;i++)
   {%>

                 
                <li style="text-align: center;" class="qwerty" ><a href="<%=myArray[2]%>" style="color: black" ><%=myArray[1]%></a></li>
   <%
   }} %> 
                </marquee>
              </ul>
              <div class="btn-wrap" >
                
              </div>
            </div>
          </div>

            <div class="col-lg-6 col-md-6">
            <div class="box featured" style="background-color: darkgray">
              <h3>Latest Updates</h3>
                <%
         Update UpdateObj=Update.getUpdateObj();
         List<List<String>> updateDbList=UpdateObj.getUpdateDbOutterList();
         if(updateDbList != null)
         {
         System.out.println("asdsdsadsadas");
         System.out.println(updateDbList);  
         
         }
         
        
         %>
              <ul style="background-color: lightgray">
                 <marquee direction = "up" scrollamount="3" scrolldelay="100" onmouseover="stop()" onmouseout="start()" >
        <%  for(List<String> innerList : updateDbList)
  {  
   String[] myArray = new String[innerList.size()];
   innerList.toArray(myArray);
   
   

  
  for(int i=0;i<1;i++)
   {%>

        
                <li style="text-align: center;" class="qwerty" ><a href="<%=myArray[2] %>" style="color: black" ><%=myArray[1]%></a></li>
        <%
   }} %> 
                </marquee>
              </ul>
              <div class="btn-wrap">
                
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Pricing Section -->

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