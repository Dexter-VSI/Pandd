<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.Photo,java.util.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Photo Table</title>
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
        

          <li class="drop-down active"><a href="#">Tables</a>
            <ul>
              <li><a href="link_table.jsp">Link_Table</a></li>
              <li><a href="update_table.jsp">Update_Table</a></li>
              <li><a href="video_table.jsp">Video_Table</a></li>
               <li><a href="photo_table.jsp">Photo_Table</a></li>

            </ul>
          </li>

          <li ><a href="upload.html">Upload</a></li>
          
          <li> <a href="index.jsp">Logout</a></li>


        </ul>

      </nav><!-- .nav-menu -->

     

    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Photo Table</h2>
          <ol>
            <li><a href="index.jsp">Home</a></li>
            <li>Photo Table</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

        <!-- %&&&&%$^$W%^#$^#$ -->

        <!-- ======= Pricing Section ======= -->
    <section id="pricing" class="pricing">
      <div class="container">
         <%
         Photo photoObj=Photo.getPhotoObj();
         List<List<String>> PhotoDbList=photoObj.getPhotoDbOutterList();
         if(PhotoDbList != null)
         {
         System.out.println("asdsdsadsadas");
         System.out.println(PhotoDbList);  
         
         }
         
        
         %>

<div class="table-responsive">
  <table class="table table-dark">
    <thead>
      <tr>
    <th>ID</th>
    <th>Photo Heading</th>
    <th >Description</th>
    <th >Folder Name</th>
    <th >Date</th>
    <th >Delete</th>
  </tr>
    </thead>
    <tbody>
        <%  for(List<String> innerList : PhotoDbList)
  {  System.out.println("Splitting====>");
   System.out.println(innerList);
   String[] myArray = new String[innerList.size()];
   innerList.toArray(myArray);
   
   

  
  for(int i=0;i<1;i++)
   {%>

     <tr>
    

    <td ><%=myArray[0]%></td>
    <td ><%=myArray[1]%></td>
    <td ><%=myArray[2]%></td>
    <td ><%=myArray[3]%></td>
    <td ><%=myArray[4]%></td>
    <%-- <%
    for(int ii=5;ii<=myArray.length;ii++)
    {%>
    	<td ><%=myArray[ii]%></td>	
   <% }
    %> --%>
    <td ><a href="Delete.jsp?id=<%=myArray[0]%>&folderName=<%=myArray[3]%>&table=<%="photo"%>"><button type="button" class="button2">Delete</button></a></td>
  </tr>
  <%
   }} %> 
  
    </tbody>
  </table>
</div>


      </div>
    </section><!-- End Pricing Section -->



    <!-- %&&&&%$^$W%^#$^#$ -->

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