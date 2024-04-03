<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Swift Air</title>
    <!-- PLUGINS CSS STYLE -->
    <link href='<c:url value="/plugins/fontawesome-5.15.2/css/all.min.css"/>' rel='stylesheet'>
    <link href='<c:url value="/plugins/fontawesome-5.15.2/css/fontawesome.min.css"/>' rel='stylesheet'>
    <link href='<c:url value="/plugins/listtyicons/style.css"/>' rel='stylesheet'>
    <link href='<c:url value="/plugins/menuzord/css/menuzord.css"/>' rel='stylesheet'>
    <link href='<c:url value="/plugins/selectric/selectric.css"/>' rel='stylesheet'>
    <link href='<c:url value="/plugins/dzsparallaxer/dzsparallaxer.css"/>' rel='stylesheet'>
    <link href='<c:url value="/plugins/daterangepicker/daterangepicker.css"/>' rel='stylesheet'>
    <link href='<c:url value="/plugins/map/css/map.css"/>' rel='stylesheet'>
    <link href='<c:url value="/plugins/DataTables/Responsive-2.2.2/css/responsive.dataTables.min.css"/>' rel='stylesheet'>
    
    <!-- GOOGLE FONT --><!-- font-family: 'Mulish', sans-serif; --><!-- font-family: 'Poppins', sans-serif; -->
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@200;300;400;600;700;800;900&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- CUSTOM CSS -->
    <link href='<c:url value="/css/style.css"/>' rel='stylesheet' id='option_style'>

    <!-- <link rel="stylesheet" href="assets/css/default.css" id="option_color"> -->

    <!-- FAVICON -->
    <link href="<c:url value="/img/favicon.png"/>" rel="shortcut icon">
    
  </head>
	<div class="main-wrapper">
	<div id="header">
		<%-- insertAttribute 태그 : TilesView 객체의 환경설정파일에서 put-attribute 엘리먼트로
		제공된 JSP 문서의 실행결과를 제공받아 삽입하기 위한 태그 --%>
		<tiles:insertAttribute name="header"/>
	</div>
	<div id="content">
		<tiles:insertAttribute name="content"/>
	</div>
	<div id="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
	</div>
	
	<!-- JAVASCRIPTS -->
    <script src='<c:url value="/plugins/jquery/jquery-3.4.1.min.js"/>'></script>
    <script src='<c:url value="/plugins/bootstrap/js/bootstrap.bundle.js"/>'></script>
    <script src='<c:url value="/plugins/menuzord/js/menuzord.js"/>'></script>

    <script src='<c:url value="/plugins/selectric/jquery.selectric.min.js"/>'></script>
    <script src='<c:url value="/plugins/dzsparallaxer/dzsparallaxer.js"/>'></script>
    
    <script src='<c:url value="/plugins/smoothscroll/SmoothScroll.js"/>'></script>
    <script src='<c:url value="/plugins/lazyestload/lazyestload.js"/>'></script>
    
    <script src='https://maps.googleapis.com/maps/api/js?key=AIzaSyDU79W1lu5f6PIiuMqNfT1C6M0e_lq1ECY'></script>
    <script src='<c:url value="/plugins/map/js/markerclusterer.js"/>'></script>
    <script src='<c:url value="/plugins/map/js/rich-marker.js"/>'></script>
    <script src='<c:url value="/plugins/map/js/infobox_packed.js"/>'></script>
    
    <script src='<c:url value="/plugins/velocity/velocity.min.js"/>'></script>
    <script src='<c:url value="/plugins/fancybox/jquery.fancybox.min.js"/>'></script>
    <script src='<c:url value="/plugins/daterangepicker/moment.min.js"/>'></script>
    <script src='<c:url value="/plugins/daterangepicker/daterangepicker.js"/>'></script>
    <script src='<c:url value="/plugins/daterangepicker/package.js"/>'></script>
    <script src='<c:url value="/plugins/owl-carousel/owl.carousel.min.js"/>'></script>
    <script src='<c:url value="/plugins/rateyo/jquery.rateyo.min.js"/>'></script>
    
    <script>
      var d = new Date();
      var year = d.getFullYear();
      document.getElementById("copy-year").innerHTML = year;
    </script>
    <script type="text/javascript">
	    const myModal = document.getElementById('myModal')
	    const myInput = document.getElementById('myInput')
	
	    myModal.addEventListener('shown.bs.modal', () => {
	      myInput.focus()
	    })
    </script>
    <script src='<c:url value="/js/listty.js"/>'></script>
</html>