<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">

<head>

<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Schedule - modify</title>
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
———	운항일정 수정
===================================== -->
<section class="py-7 py-md-10">
	<div class="container">
		<h2 class="fw-normal mb-4 mb-md-5">운항일정 수정</h2>
		<div class="col-12">

        <!-- 운항일정 정보 -->
        <div class="border rounded px-6 py-5 mb-6">
			<div class="row">
				<div class="col-sm-4">
					<h5>운항일정</h5>
				</div>
				<div class="col-sm-8">
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">항공기명</div>
						<input type="text" class="form-control" value="SW0000" required>
					</div>
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">출발지</div>
							<div class="select-default bg-white">
								<select class="select-location">
									<option>출발지</option>
									<option>서울/인천(ICN)</option>
									<option>샌프란시스코(SFO)</option>
									<option>로스앤젤레스(LAX)</option>
									<option>뉴욕/뉴어크 리버티(EWR)</option>
									<option>방콕(BKK)</option>
									<option>도쿄/나리타(NRT)</option>
								</select>
							</div>
					</div>
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">도착지</div>
							<div class="select-default bg-white">
								<select class="select-location">
									<option>도착지</option>
									<option>서울/인천(ICN)</option>
									<option>샌프란시스코(SFO)</option>
									<option>로스앤젤레스(LAX)</option>
									<option>뉴욕/뉴어크 리버티(EWR)</option>
									<option>방콕(BKK)</option>
									<option>도쿄/나리타(NRT)</option>
								</select>
							</div>
					</div>
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">운항시간</div>
						<div class="row">
							<div class="col-sm-5">
								<input type="number" class="form-control" required>
							</div>
							<div class="col-sm-1 mt-2 ms-n3">시간</div>
							<div class="col-sm-5">
								<input type="number" class="form-control" required>
							</div>
							<div class="col-sm-1 mt-2 ms-n3">분</div>
						</div>
					</div>
					<div class="mb-2">
						<div class="col-sm-2 mb-1 fw-bold">운항일자</div>
						<div class="form-group col-md-3 col-lg-12 mb-0">
							<input type="text" class="form-control" name="daterange">
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<div style="float: right">
			<button type="submit" class="btn btn-primary ms-1">목록</button>
			<button type="submit" class="btn btn-primary ms-1">취소</button>
			<button type="submit" class="btn btn-primary ms-1">수정</button>
		</div>
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