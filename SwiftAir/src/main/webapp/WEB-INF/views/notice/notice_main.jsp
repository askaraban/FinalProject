<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html lang="en">
<style>
 td, th {
    border-color: inherit;
    border-style: solid;
    border-width: 0px;
}



 .container {
    max-width: 1170px;
    --bs-gutter-x: 1.5rem;
    --bs-gutter-y: 0;
    width: 100%;
    padding-right: calc(var(--bs-gutter-x)* 0.5);
    padding-left: calc(var(--bs-gutter-x)* 0.5);
    margin-right: auto;
    margin-left: auto;
}
p {
margin-bottom: 1rem;
}

.table > :not(caption) > * > * {
    padding: 0.5rem 0.5rem;
    color: var(--bs-table-color-state, var(--bs-table-color-type, var(--bs-table-color)));
    background-color: var(--bs-table-bg);
    border-bottom-width: var(--bs-border-width);
    box-shadow: inset 0 0 0 9999px var(--bs-table-bg-state, var(--bs-table-bg-type, var(--bs-table-accent-bg)));
}

table {
border-collapse: collapse;
}

</style>

  <head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>공지사항</title>

    <!-- PLUGINS CSS STYLE -->
    <link href='assets/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
    <link href='assets/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
    <link href='assets/plugins/listtyicons/style.css' rel='stylesheet'>
    <link href='assets/plugins/menuzord/css/menuzord.css' rel='stylesheet'>
    <link href='assets/plugins/selectric/selectric.css' rel='stylesheet'>
    <link href='assets/plugins/dzsparallaxer/dzsparallaxer.css' rel='stylesheet'>
    <link href='assets/plugins/daterangepicker/daterangepicker.css' rel='stylesheet'>
    <link href='assets/plugins/map/css/map.css' rel='stylesheet'>
    
    <!-- GOOGLE FONT --><!-- font-family: 'Mulish', sans-serif; --><!-- font-family: 'Poppins', sans-serif; -->
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@200;300;400;600;700;800;900&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- CUSTOM CSS -->
    <link href="assets/css/style.css" rel="stylesheet" id="option_style">

    <!-- <link rel="stylesheet" href="assets/css/default.css" id="option_color"> -->

    <!-- FAVICON -->
    <link href="assets/img/favicon.png" rel="shortcut icon">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  </head>


<body id="body" class="up-scroll" >
<section class="py-7 py-md-10">
	<div class="container">
		<div class="panel-body" style="text-align: center; vertical-align: middle;">
			<div style="display: flex; justify-content: space-between;">
				<div><h3 style="color: mediumaquamarine;">Notice</h3></div>
			</div>
			<hr>
			<table class="table" style="border-collapse: collapser">
			    <tbody>
			   		<c:forEach var="notice" items="${noticeList}">
			        <tr>
			            <td style="text-align: left; border-bottom: 1px solid #C0C0C0;">
							<h4><a href="<c:url value="/notice/detail"/>?noticeId=${notice.noticeId}">${notice.noticeTitle}</a></h4>
				            <%-- <p style="font-size: 0.9375rem; color: grey;">${notice.noticeContent}</p> --%>
				        </td>
			            <td style="border-bottom: 1px solid #C0C0C0;">${notice.noticeDate}</td>
			        </tr>
			        </c:forEach>
			    </tbody>
			</table>
		</div>
		
		<div style="text-align: center;">
						<%-- 페이지 번호 출력 --%>
						<c:choose>
							<c:when test="${pager.startPage > pager.blockSize }">
								<a href="<c:url value="/notice/main"/>?pageNum=${pager.prevPage}">[이전]</a>
							</c:when>
							<c:otherwise>
								[이전]
							</c:otherwise>
						</c:choose>
						
						<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }" step="1">
							<c:choose>
								<c:when test="${pager.pageNum != i }">
									<a href="<c:url value="/notice/main"/>?pageNum=${i}">[${i}]</a>
								</c:when>
								<c:otherwise>
									[${i}]
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${pager.endPage != pager.totalPage }">
								<a href="<c:url value="/notice/main"/>?pageNum=${pager.nextPage}">[다음]</a>
							</c:when>
							<c:otherwise> 
								[다음]
							</c:otherwise>
						</c:choose>
					</div>
					
					
	</div>
</section>


    <!-- JAVASCRIPTS -->
    <script src='assets/plugins/jquery/jquery-3.4.1.min.js'></script>
    <script src='assets/plugins/bootstrap/js/bootstrap.bundle.js'></script>
    <script src='assets/plugins/menuzord/js/menuzord.js'></script>

    <script src='assets/plugins/selectric/jquery.selectric.min.js'></script>
    <script src='assets/plugins/dzsparallaxer/dzsparallaxer.js'></script>
    
    <script src='assets/plugins/smoothscroll/SmoothScroll.js'></script>
    <script src='assets/plugins/lazyestload/lazyestload.js'></script>
    
    <script src='https://maps.googleapis.com/maps/api/js?key=AIzaSyDU79W1lu5f6PIiuMqNfT1C6M0e_lq1ECY'></script>
    <script src='assets/plugins/map/js/markerclusterer.js'></script>
    <script src='assets/plugins/map/js/rich-marker.js'></script>
    <script src='assets/plugins/map/js/infobox_packed.js'></script>
    <script src='assets/js/map.js'></script>
    
    <script src='assets/plugins/velocity/velocity.min.js'></script>
    <script src='assets/plugins/fancybox/jquery.fancybox.min.js'></script>
    <script src='assets/plugins/daterangepicker/moment.min.js'></script>
    <script src='assets/plugins/daterangepicker/daterangepicker.js'></script>
    <script src='assets/plugins/daterangepicker/package.js'></script>
    <script src='assets/plugins/owl-carousel/owl.carousel.min.js'></script>
    <script src='assets/plugins/rateyo/jquery.rateyo.min.js'></script>
    
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
    <script src='assets/js/listty.js'></script>
  </body>
</html>