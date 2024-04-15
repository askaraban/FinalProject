<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="en">

  <head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>NOTICE - detail</title>

 
  </head>

  <body id="body" class="up-scroll">
<!-- ====================================
———	LISTING SINGLE HEADING
===================================== -->
<section class="py-7 pt-md-9 pb-md-8">
    <div class="container">
        <div class="col-lg-12">
        <div class="mb-2 mb-lg-0">
            <h2 class="fw-bolder lh-base">
				${noticedetail.noticeTitle}
            </h2>
            <date class="meta-date" style="font-size: 1.025rem;">${noticedetail.noticeDate}</date>
            <hr>
        </div>
        </div>
    </div> 
</section>

<!-- ====================================
———	MAIN CONTENT
===================================== -->
<section class="pt-4 pb-4 pb-md-8">
    <div class="container">
        <div class="row">
      <!--======= Sidebar =======-->
        <div class="col-md-7 col-lg-8">
      
            <div class="px-6 py-5 mb-5">
  			  <div style="font-size: 1.2em; color: black; margin-bottom: 10px; white-space: pre-line;">
      			  ${noticedetail.noticeContent}
   			  </div>
			</div>
            
            
            <div class="row">
                <div class="col-sm-8 col-lg-8 ms-md-6"></div>
                <div class="col-sm-4 col-lg-3">
                    <a href ="<c:url value="/notice/main"/>" class="btn btn-primary w-100">목록으로</a>
                </div>
            </div>
        </div>
        </div>
    </div>
</section>

    <!-- JAVASCRIPTS -->
    <script src='../assets/plugins/jquery/jquery-3.4.1.min.js'></script>
    <script src='../assets/plugins/bootstrap/js/bootstrap.bundle.js'></script>
    <script src='../assets/plugins/menuzord/js/menuzord.js'></script>
    <script src='../assets/plugins/selectric/jquery.selectric.min.js'></script>

    <script src='../assets/plugins/fancybox/jquery.fancybox.min.js'></script>
    <script src='../assets/plugins/daterangepicker/moment.min.js'></script>
    <script src='../assets/plugins/daterangepicker/daterangepicker.js'></script>

    <script src='../assets/plugins/smoothscroll/SmoothScroll.js'></script>
    <script src='../assets/plugins/owl-carousel/owl.carousel.min.js'></script>
    <script src='../assets/plugins/rateyo/jquery.rateyo.min.js'></script>

    <script src='../assets/plugins/velocity/velocity.min.js'></script>
    <script src='https://maps.googleapis.com/maps/api/js?key=AIzaSyDU79W1lu5f6PIiuMqNfT1C6M0e_lq1ECY'></script>

    <script>
      var d = new Date();
      var year = d.getFullYear();
      document.getElementById("copy-year").innerHTML = year;
    </script>
    <script src='../assets/js/listty.js'></script>
  </body>
</html>

