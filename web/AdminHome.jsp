<%-- 
    Document   : AdminHome
    Created on : 3 Apr, 2023, 1:09:12 AM
    Author     : ashug
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>Admin Home</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor1/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-eduwell-style.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">

  </head>

<body>


  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
      <div class="container">
          <div class="row">
              <div class="col-12">
                  <nav class="main-nav">
                      
                      <ul class="nav">
                          <a style="color: #ffffff" href="AdminLogout.jsp">Log Out</a>
                      </ul>
                      <!-- ***** Menu End ***** -->
                  </nav>
              </div>
          </div>
      </div>
  </header>
  <!-- ***** Header Area End ***** -->

  <!-- ***** Main Banner Area Start ***** -->
  <section class="main-banner" id="top">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 align-self-center">
          <div class="header-text">
            <h1>Food Court Automation</h1>
            <h2>Welcome Admin</h2>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="right-image">
            <img src="assets/images/banner-right-image.png" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- ***** Main Banner Area End ***** -->

  <section class="services" id="services">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="section-heading">
            <h1>Services</h1>
         </div>
        </div>
        <div class="col-lg-12">
            <div class="item">
              <div class="service-item">
                <div class="icon">
                    <a href="EmployeeList.jsp"><img src="assets/images/service-icon-01.png" alt=""></a>
                </div>
                <h4>User List</h4>
              </div>
            </div>
            <div class="item">
              <div class="service-item">
                <div class="icon">
                    <a href="Menu.jsp"><img src="assets/images/service-icon-03.png" alt=""></a>
                </div>
                <h4>Menu</h4>
              </div>
            </div>
            <div class="item">
              <div class="service-item">
                <div class="icon">
                  <a href="ItemOfTheDayMain.jsp"><img src="assets/images/service-icon-02.png" alt=""></a>
                </div>
                <h4>Item of the Day</h4>
              </div>
            </div>
            <div class="item">
              <div class="service-item">
                <div class="icon">
                  <a href="AdminTranscation.jsp"><img src="assets/images/service-icon-04.png" alt=""></a>
                </div>
                <h4>Transactions</h4>
              </div>
                <div class="item">
              <div class="service-item">
                <div class="icon">
                  <a href="EmpAdminTransaction.jsp"><img src="assets/images/service-icon-04.png" alt=""></a>
                </div>
                <h4>User Transactions</h4>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  
  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/isotope.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/lightbox.js"></script>
    <script src="assets/js/tabs.js"></script>
    <script src="assets/js/video.js"></script>
    <script src="assets/js/slick-slider.js"></script>
    <script src="assets/js/custom.js"></script>
    <script>
        //according to loftblog tut
        $('.nav li:first').addClass('active');

        var showSection = function showSection(section, isAnimate) {
          var
          direction = section.replace(/#/, ''),
          reqSection = $('.section').filter('[data-section="' + direction + '"]'),
          reqSectionPos = reqSection.offset().top - 0;

          if (isAnimate) {
            $('body, html').animate({
              scrollTop: reqSectionPos },
            800);
          } else {
            $('body, html').scrollTop(reqSectionPos);
          }

        };

        var checkSection = function checkSection() {
          $('.section').each(function () {
            var
            $this = $(this),
            topEdge = $this.offset().top - 80,
            bottomEdge = topEdge + $this.height(),
            wScroll = $(window).scrollTop();
            if (topEdge < wScroll && bottomEdge > wScroll) {
              var
              currentId = $this.data('section'),
              reqLink = $('a').filter('[href*=\\#' + currentId + ']');
              reqLink.closest('li').addClass('active').
              siblings().removeClass('active');
            }
          });
        };

        $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
          e.preventDefault();
          showSection($(this).attr('href'), true);
        });

        $(window).scroll(function () {
          checkSection();
        });
    </script>
</body>

</html>
