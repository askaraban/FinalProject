<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 페이지의 기초를 제공하기 위한 JSP 문서 - 템플릿 페이지 --%>
<%-- TilesView 객체가 제공하는 태그를 사용할 수 있도록 태그 라이브러리 추가 --%>
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
    <link href='resources/assets/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
    <link href='resources/assets/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
    <link href='resources/assets/plugins/listtyicons/style.css' rel='stylesheet'>
    <link href='resources/assets/plugins/menuzord/css/menuzord.css' rel='stylesheet'>
    <link href='resources/assets/plugins/selectric/selectric.css' rel='stylesheet'>
    <link href='resources/assets/plugins/dzsparallaxer/dzsparallaxer.css' rel='stylesheet'>
    <link href='resources/assets/plugins/daterangepicker/daterangepicker.css' rel='stylesheet'>
    <link href='resources/assets/plugins/map/css/map.css' rel='stylesheet'>
    
    <!-- GOOGLE FONT --><!-- font-family: 'Mulish', sans-serif; --><!-- font-family: 'Poppins', sans-serif; -->
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@200;300;400;600;700;800;900&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- CUSTOM CSS -->
    <link href="resources/assets/css/style.css" rel="stylesheet" id="option_style">

    <!-- <link rel="stylesheet" href="assets/css/default.css" id="option_color"> -->

    <!-- FAVICON -->
    <link href="resources/assets/img/favicon.png" rel="shortcut icon">
    
  </head>
<body>
	
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
	
	<!-- JAVASCRIPTS -->
    <script src='resources/assets/plugins/jquery/jquery-3.4.1.min.js'></script>
    <script src='resources/assets/plugins/bootstrap/js/bootstrap.bundle.js'></script>
    <script src='resources/assets/plugins/menuzord/js/menuzord.js'></script>

    <script src='resources/assets/plugins/selectric/jquery.selectric.min.js'></script>
    <script src='resources/assets/plugins/dzsparallaxer/dzsparallaxer.js'></script>
    
    <script src='resources/assets/plugins/smoothscroll/SmoothScroll.js'></script>
    <script src='resources/assets/plugins/lazyestload/lazyestload.js'></script>
    
    <script src='resources/assets/plugins/map/js/markerclusterer.js'></script>
    <script src='resources/assets/plugins/map/js/rich-marker.js'></script>
    <script src='resources/assets/plugins/map/js/infobox_packed.js'></script>
    
    <script src='resources/assets/plugins/velocity/velocity.min.js'></script>
    <script src='resources/assets/plugins/fancybox/jquery.fancybox.min.js'></script>
    <script src='resources/assets/plugins/daterangepicker/moment.min.js'></script>
    <script src='resources/assets/plugins/daterangepicker/daterangepicker.js'></script>
    <script src='resources/assets/plugins/daterangepicker/package.js'></script>
    <script src='resources/assets/plugins/owl-carousel/owl.carousel.min.js'></script>
    <script src='resources/assets/plugins/rateyo/jquery.rateyo.min.js'></script>
    
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
    <script src='resources/assets/js/listty.js'></script>
</body>
</html>