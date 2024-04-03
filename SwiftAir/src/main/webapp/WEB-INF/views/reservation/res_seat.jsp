<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<style type="text/css">
.airplane--div {
	overflow: auto;
	max-height: 660px;
	min-width: 670px;
}

/* 백그라운드 처리 */
.airplane--background {
	width: 645px;
	height: 2414px;
}
.e--seat {
	margin-left: 79px;	
}
.e--seat img {
	width: 47px;
	height: 47px;
}

</style>
    
    
<section class="bg-light py-8">
  <div class="container">
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb" style="--bs-breadcrumb-divider: '>';">
      <h2 class="fw-normal mb-4 mb-md-0" style="font-size: 40px;">좌석예약</h2>
      <ul class="list-unstyled d-flex p-0 m-0">
        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
        <li class="breadcrumb-item">좌석예약</li>
      </ul>
    </nav>
    </div>
  </div>
</section>

<!-- ====================================
———	CATEGORY GRID LEFT SIDEBAR
===================================== -->
<section class="py-7 py-md-10">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 order-lg-1">
        <!-- Search Result Bar -->
        <div class="row">
			<div class="d-flex " style="width: 100%;">
			<div class="airplane--div" id="sch1Airplane">
				<div class="airplane--background" style="background-image: url('<c:url value="/img/seat/airplane_empty2.png"/>');">
					<div class="b--seat">
						<img alt="image" src="../assets/img/seat/business_not.png" style="position: relative; left: 15px; top: 590px;">
						<img alt="image" src="../assets/img/seat/business_not.png" style="position: relative; left: 15px; top: 590px;">
						<img alt="image" src="../assets/img/seat/business_not.png" style="position: relative; left: 80px; top: 590px;">
						<img alt="image" src="../assets/img/seat/business_not.png" style="position: relative; left: 80px; top: 590px;">
						<img alt="image" src="../assets/img/seat/business_not.png" style="position: relative; left: 145px; top: 590px;">
						<img alt="image" src="../assets/img/seat/business_not.png" style="position: relative; left: 145px; top: 590px;">
					</div>
					<div class="b--seat">
						<img alt="image" src="../assets/img/seat/business_not.png" style="position: relative; left: 15px; top: 640px;">
						<img alt="image" src="../assets/img/seat/business_not.png" style="position: relative; left: 15px; top: 640px;">
						<img alt="image" src="../assets/img/seat/business_not.png" style="position: relative; left: 85px; top: 640px;">
						<img alt="image" src="../assets/img/seat/business_not.png" style="position: relative; left: 85px; top: 640px;">
						<img alt="image" src="../assets/img/seat/business_not.png" style="position: relative; left: 145px; top: 640px;">
						<img alt="image" src="../assets/img/seat/business_not.png" style="position: relative; left: 145px; top: 640px;">
					</div>
					<div class="b--seat">
						<img alt="image" src="../assets/img/seat/business_not.png" style="position: relative; left: 15px; top: 690px;">
						<img alt="image" src="../assets/img/seat/business_not.png" style="position: relative; left: 15px; top: 690px;">
						<img alt="image" src="../assets/img/seat/business_not.png" style="position: relative; left: 85px; top: 690px;">
						<img alt="image" src="../assets/img/seat/business_not.png" style="position: relative; left: 85px; top: 690px;">
						<img alt="image" src="../assets/img/seat/business_not.png" style="position: relative; left: 145px; top: 690px;">
						<img alt="image" src="../assets/img/seat/business_not.png" style="position: relative; left: 145px; top: 690px;">
					</div>
					<div class="e--seat">
						<img alt="image" src="../assets/img/seat/economy_not.png" style="position: relative; left: 15px; top: 1990px;">
						<img alt="image" src="../assets/img/seat/economy_not.png" style="position: relative; left: 15px; top: 1990px;">
						<img alt="image" src="../assets/img/seat/economy_not.png" style="position: relative; left: 15px; top: 1990px;">
						<img alt="image" src="../assets/img/seat/economy_not.png" style="position: relative; left: 55px; top: 1990px;">
						<img alt="image" src="../assets/img/seat/economy_not.png" style="position: relative; left: 55px; top: 1990px;">
						<img alt="image" src="../assets/img/seat/economy_not.png" style="position: relative; left: 55px; top: 1990px;">
						<img alt="image" src="../assets/img/seat/economy_not.png" style="position: relative; left: 95px; top: 1990px;">
						<img alt="image" src="../assets/img/seat/economy_not.png" style="position: relative; left: 95px; top: 1990px;">
						<img alt="image" src="../assets/img/seat/economy_not.png" style="position: relative; left: 95px; top: 1990px;">
					</div>
					<div class="e--seat">
						<img alt="image" src="../assets/img/seat/economy_not.png" style="position: relative; left: 15px; top: 2020px;">
						<img alt="image" src="../assets/img/seat/economy_not.png" style="position: relative; left: 15px; top: 2020px;">
						<img alt="image" src="../assets/img/seat/economy_not.png" style="position: relative; left: 15px; top: 2020px;">
						<img alt="image" src="../assets/img/seat/economy_not.png" style="position: relative; left: 55px; top: 2020px;">
						<img alt="image" src="../assets/img/seat/economy_not.png" style="position: relative; left: 55px; top: 2020px;">
						<img alt="image" src="../assets/img/seat/economy_not.png" style="position: relative; left: 55px; top: 2020px;">
						<img alt="image" src="../assets/img/seat/economy_not.png" style="position: relative; left: 95px; top: 2020px;">
						<img alt="image" src="../assets/img/seat/economy_not.png" style="position: relative; left: 95px; top: 2020px;">
						<img alt="image" src="../assets/img/seat/economy_not.png" style="position: relative; left: 95px; top: 2020px;">
					</div>
				</div>	
			</div>
			</div>
        </div>
	</div>
        
<!-- ====================================
———	좌석 및 탑승객
===================================== -->

      <div class="col-lg-4 pe-xl-6">
		      <!-- Breadcrumb -->
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb">
      <ul class="list-unstyled d-flex p-0 m-0">
        <li class="breadcrumb-item"><a href="index.html">NRT-ICN</a></li>
        <li class="breadcrumb-item active" aria-current="page">ICN-NRT</li>
      </ul>
    </nav>
        <div class="mb-6">
          <div class="border border-subtle rounded" style="padding: 0.75rem 1.5rem; font-size: 15px; font-weight: bold; color: black;">좌석
			  <div class="border border-primary rounded" style="padding: 0.75rem 1.5rem; margin-top: 1.2rem;">
				  프레미아42&nbsp;&nbsp;&nbsp;<img src='<c:url value="/img/seat/business_small_not.png"/>' alt="image">
				  <br>
				  <br>
				  이코노미35&nbsp;&nbsp;<img src='<c:url value="/img/seat/economy_not.png"/>' alt="image" style="width: 30px; height: 30px;">
			  </div>
		  </div>
        </div>
        <div class="mb-6">
          <div class="border border-subtle rounded" style="padding: 0.75rem 1.5rem; font-size: 15px; font-weight: bold; color: black;">탑승객
			  <div class="border border-primary rounded" style="padding: 0.75rem 1.5rem; margin-top: 1.2rem;">heesoo cho</div>
		  </div>
        </div>
      </div>
    </div>
  </div>
</section>

  </div> <!-- element wrapper ends -->
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
