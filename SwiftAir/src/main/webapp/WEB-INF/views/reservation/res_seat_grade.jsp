<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<body id="body" class="up-scroll">
<form id="addSeatGrade" action="<c:url value="/reservation/passengersinfo" />" method="POST">

<!-- ====================================
———	HEADER
===================================== -->
<section class="bg-light py-8">
  <div class="container">
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb" style="--bs-breadcrumb-divider: '>';">
      <h2 class="fw-normal mb-4 mb-md-0" style="font-size: 40px;">항공권 예매</h2>
      <ul class="list-unstyled d-flex p-0 m-0">
        <li class="breadcrumb-item"><a href="">Home</a></li>
        <li class="breadcrumb-item">일정</li>
        <li class="breadcrumb-item">좌석</li>
      </ul>
    </nav>
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
							<h5><div>${resInfo.DepartDate}</div></h5>
							<h3><span>12 : 50</span></h3>
						</div>
						<div class="col-sm-4 text-center">
							<p>11시간 30분</p>
							<p>--------></p>
						</div>
						<div class="col-sm-4 text-center">
							<h5><div>${endDate}</div></h5>
							<h3><span>08 : 20</span></h3>
						</div>
					</div>
					<div class="col-sm-12 text-center">
						${resInfo.resDeparture} > ${resInfo.resDestination} B787-9 YP101 여정정보
					</div>
				</div>
				
				<div class="col-sm-8 align-items-center">
					<div class="row">
						<div class="border rounded col-sm-6">
							<div class="form-check form-check-inline col-sm-12">
								<input class="form-check-input me-5" type="radio" name="resSeatGrade" id="economy35" value="economy35">
								<label class="form-check-label" for="economy35">
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
								<input class="form-check-input me-5" type="radio" name="resSeatGrade" id="premia42" value="premia42">
								<label class="form-check-label" for="premia42">
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
	</div>
  
	<!-- 좌석 선택시 좌석 정보 -->
	<!-- 이코노미석(이코노미35) -->
	<div class="container">
		<div class="border rounded px-6 py-5 mb-6">
			<div class="col-sm-12">
			<img class="img-fluid" src=<c:url value="/img/seat-option/economy35.png"/>>
			</div>
		</div>
	</div>
	<!-- 프리미엄석(프레미아42) -->
	<div class="container">
		<div class="border rounded px-6 py-5 mb-6">
			<div class="col-sm-12">
				<img class="img-fluid" src=<c:url value="/img/seat-option/premia42.png"/>>
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
			<button onclick="history.back()" class="btn btn-outline-primary w-100">이전</button>
		</div>
		<div class="col-sm-1 col-lg-1">
			<button type="submit" class="btn btn-primary w-100">다음</button>
		</div>
	</div>
</nav>
</form>
</body>
