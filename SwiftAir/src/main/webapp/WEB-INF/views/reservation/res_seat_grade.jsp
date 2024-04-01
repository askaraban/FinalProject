<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Flight - Seat selection</title>
<!-- PLUGINS CSS STYLE -->
<link href='../assets/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
<link href='../assets/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
<link href='../assets/plugins/listtyicons/style.css' rel='stylesheet'>
<link href='../assets/plugins/menuzord/css/menuzord.css' rel='stylesheet'>

<link href='../assets/plugins/selectric/selectric.css' rel='stylesheet'>
<link href='../assets/plugins/dzsparallaxer/dzsparallaxer.css' rel='stylesheet'>

<link href='../assets/plugins/map/css/map.css' rel='stylesheet'>
 
<!-- GOOGLE FONT --><!-- font-family: 'Mulish', sans-serif; --><!-- font-family: 'Poppins', sans-serif; -->
<link href="https://fonts.googleapis.com/css2?family=Mulish:wght@200;300;400;600;700;800;900&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<!-- CUSTOM CSS -->
<link href="../assets/css/style.css" rel="stylesheet" id="option_style">

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
———	HEADER
===================================== -->
<section class="bg-light py-8">
  <div class="container">
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb" style="--bs-breadcrumb-divider: '>';">
      <h2 class="fw-normal mb-4 mb-md-0" style="font-size: 40px;">항공권 예매</h2>
      <ul class="list-unstyled d-flex p-0 m-0">
        <li class="breadcrumb-item"><a href="../index.html">Home</a></li>
        <li class="breadcrumb-item">일정</li>
        <li class="breadcrumb-item">좌석</li>
      </ul>
    </nav>
    </div>
  </div>
</section>

<!-- ====================================
———	항공권 좌석 등급 선택
===================================== -->
<section class="py-7 py-md-10">
	<div class="container">
		<div class="">
			<p>성인 1인 기준</p>
		</div>
	<div class="border rounded px-6 py-5 mb-6">
		<div class="row">
			<div class="col-sm-4">
				<div class="row">
					<div class="col-sm-4 text-center">
						<h5><div>04. 01</div></h5>
						<h3><span>12 : 50</span></h3>
					</div>
					<div class="col-sm-4 text-center">
						<p>11시간 30분</p>
						<p>--------></p>
					</div>
					<div class="col-sm-4 text-center">
						<h5><div>04. 01</div></h5>
						<h3><span>08 : 20</span></h3>
					</div>
				</div>
				<div class="col-sm-12 text-center">
					B787-9 YP101 여정정보
				</div>
			</div>

			<div class="col-sm-8 align-items-center">
				<div class="row">
					<div class="border rounded col-sm-6">
						<div class="form-check form-check-inline col-sm-12">
							<input class="form-check-input me-5" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
							<label class="form-check-label" for="inlineRadio1">
								<div class="col">
									<h5>이코노미석</h5>
								</div>
								<div class="col">
									<h3>520,000원</h3>
								</div>
							</label>
	              		</div>
			  		</div>
					<div class="border rounded col-sm-6">
						<div class="form-check form-check-inline col-sm-12">
							<input class="form-check-input me-5" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
							<label class="form-check-label" for="inlineRadio2">
								<div class="col">
									<h5>프리미엄석</h5>
								</div>
								<div class="col">
									<h3>1,045,000원</h3>
								</div>
							</label>
	              		</div>
			  		</div>
				</div>
			</div>
		</div>
	</div>
  
	<!-- 좌석 선택시 좌석 정보 -->
	<!-- 이코노미석(이코노미35) -->
	<div class="container">
		<div class="border rounded px-6 py-5 mb-6">
			<div class="col-sm-12">
			<img class="img-fluid" src="../assets/img/seat-option/economy35.png">
			</div>
		</div>
	</div>
	<!-- 프리미엄석(프레미아42) -->
	<div class="container">
		<div class="border rounded px-6 py-5 mb-6">
			<div class="col-sm-12">
				<img class="img-fluid" src="../assets/img/seat-option/premia42.png">
			</div>
		</div>
	</div>
</section>

<!-- 일단 푸터 같은것 -->
<nav class="navbar-expand-sm rounded shadow bg-light fixed-bottom">
	<div class="row">
		<div class="col-sm-6 col-lg-6"></div>
		<div class="col-sm-2 col-lg-2 align-self-center text-center">
			<h5>총 결제금액(세금포함) </h5>
		</div>
		<div class="col-sm-2 col-lg-2 align-self-center">
			<h5>2,345,678 원</h5>
		</div>
		<div class="col-sm-1 col-lg-1">
			<button type="submit" class="btn btn-outline-primary w-100">이전</button>
		</div>
		<div class="col-sm-1 col-lg-1">
			<button type="submit" class="btn btn-primary w-100">다음</button>
		</div>
	</div>
</nav>

<!-- JAVASCRIPTS -->
<script src='../assets/plugins/jquery/jquery-3.4.1.min.js'></script>
<script src='../assets/plugins/bootstrap/js/bootstrap.bundle.js'></script>
<script src='../assets/plugins/menuzord/js/menuzord.js'></script>

<script src='../assets/plugins/selectric/jquery.selectric.min.js'></script>
<script src='../assets/plugins/dzsparallaxer/dzsparallaxer.js'></script>

<script src='../assets/plugins/smoothscroll/SmoothScroll.js'></script>
<script src='../assets/plugins/lazyestload/lazyestload.js'></script>
    
<script src='https://maps.googleapis.com/maps/api/js?key=AIzaSyDU79W1lu5f6PIiuMqNfT1C6M0e_lq1ECY'></script>
<script src='../assets/plugins/map/js/markerclusterer.js'></script>
<script src='../assets/plugins/map/js/rich-marker.js'></script>
<script src='../assets/plugins/map/js/infobox_packed.js'></script>
<script src='../assets/js/map.js'></script>

<script src='../assets/js/listty.js'></script>
</body>
</html>