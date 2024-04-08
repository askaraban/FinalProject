<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">

<head>

<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>NOTICE - add</title>
<!-- PLUGINS CSS STYLE -->
<link href='../assets/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
<link href='../assets/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
<link href='../assets/plugins/listtyicons/style.css' rel='stylesheet'>
<link href='../assets/plugins/menuzord/css/menuzord.css' rel='stylesheet'>

<link href='../assets/plugins/selectric/selectric.css' rel='stylesheet'>
<link href='../assets/plugins/dzsparallaxer/dzsparallaxer.css' rel='stylesheet'>
 
<!-- GOOGLE FONT --><!-- font-family: 'Mulish', sans-serif; --><!-- font-family: 'Poppins', sans-serif; -->
<link href="https://fonts.googleapis.com/css2?family=Mulish:wght@200;300;400;600;700;800;900&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<!-- CUSTOM CSS -->
<link href="../assets/css/style.css" rel="stylesheet" id="option_style">

<!-- daterangepicker CSS -->
<link rel="stylesheet" href="../assets/css/daterangepicker.css">

<!-- <link rel="stylesheet" href="assets/css/default.css" id="option_color"> -->

<!-- FAVICON -->
<link href="../assets/img/favicon.png" rel="shortcut icon">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

</head>

<body id="body" class="up-scroll">

<!-- ====================================
———	이벤트 등록
===================================== -->
<section class="py-7 py-md-10">
	<div class="container">
		<form action="<c:url value="/notice/add"/>" method="post">
		<h2 class="fw-normal mb-4 mb-md-5">NOTICE 등록</h2>
		<div class="col-12">

        <!-- 이벤트 정보 -->
        <div class="border rounded px-6 py-5 mb-6">
			<div class="row">
				<div class="col-sm-4">
					<h5>NOTICE</h5>
				</div>
				<div class="col-sm-8">
					
          
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">제목</div>
						<input type="text" class="form-control" name="noticeTitle" value="${notice.noticeTitle}">
					</div>

					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">내용</div>
						<textarea class="form-control" rows="5" name="noticeContent">${notice.noticeContent}</textarea>
					</div>
				</div>
			</div>
		</div>
		</div>
		<div style="float: right">
			<button type="button" class="btn btn-primary ms-1" onclick="location.href='/notice/list';">목록</button>
			<button type="button" class="btn btn-primary ms-1" onclick="location.href='/notice/list';">취소</button>
			<button type="submit" class="btn btn-primary ms-1" >등록</button>
		</div>
		</form>
	</div>
</section>

<!-- JAVASCRIPTS -->
<script src='../assets/plugins/jquery/jquery-3.4.1.min.js'></script>
<script src='../assets/plugins/bootstrap/js/bootstrap.bundle.js'></script>
<script src='../assets/plugins/menuzord/js/menuzord.js'></script>

<script src='../assets/plugins/selectric/jquery.selectric.min.js'></script>
<script src='../assets/plugins/dzsparallaxer/dzsparallaxer.js'></script>

<script src='../assets/plugins/smoothscroll/SmoothScroll.js'></script>

<script src="../assets/js/moment.min.js"></script>
<script src="../assets/js/daterangepicker.js"></script>
<script>
	$(function() {
      $('input[name="daterange"]').daterangepicker({
        opens: 'left'
      }, function(start, end, label) {
        console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
      });
    });
</script>

<script src='../assets/js/listty.js'></script>
</body>
</html>