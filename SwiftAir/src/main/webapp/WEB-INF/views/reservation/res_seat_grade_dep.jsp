<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<body id="body" class="up-scroll">
<form id="addSeatGrade" action="<c:url value="/reservation/seatgrade2" />" method="POST">

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
		<div class="border rounded px-6 py-5 mb-6">
			<h5>탑승객 1인 기준</h5>
			<div class="row align-items-center">
				<div class="col-sm-6">
					<div class="row border rounded mb-1">
						<div class="col-sm-4 text-center">
							<h5>${resInfo.resDepartDate}</h5>
							<h3><span>12 : 50</span></h3>
						</div>
						<div class="col-sm-4 text-center">
							<h5>가는 여정</h5>
							<h4>${resInfo.resDeparture} > ${resInfo.resDestination}</h4>
						</div>
						<div class="col-sm-4 text-center">
							<h5>${resInfo.resDepartDate}</h5>
							<h3><span>08 : 20</span></h3>
						</div>
					</div>
				</div>
				
				<div class="col-sm-6 px-7">
					<div class="row align-items-center">
						<div class="col-sm-6 px-2">
							<div class="form-check form-check-inline col-sm-12 border rounded px-6">
								<input class="form-check-input me-3" type="radio" name="resDepSeatGrade" id="economy35" value="economy35" onclick="showSeatImage('economy35')">
								<label class="form-check-label" for="이코노미35">
									<h5>이코노미석 : </h5>
									<h3><fmt:formatNumber value="${resInfo.routePrice}" pattern="#,##0"/>원</h3>
								</label>
	              			</div>
			  			</div>
						<div class="col-sm-6 px-2">
							<div class="form-check form-check-inline col-sm-12 border rounded px-6">
								<input class="form-check-input me-3" type="radio" name="resDepSeatGrade" id="premia42" value="premia42"onclick="showSeatImage('premia42')">
								<label class="form-check-label" for="프레미아42">
									<h5>프리미엄석 : </h5>
									<h3><fmt:formatNumber value="${resInfo.routePrice * 2}" pattern="#,##0"/>원</h3>
								</label>
	              			</div>
			  			</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container">
		<div id="seatImageContainer"></div>
	</div>
</section>

<!-- 일단 푸터 같은것 -->
<nav class="navbar-expand-sm rounded shadow bg-light fixed-bottom" style="height: 54px;">
	<div class="row">
		<div class="col-sm-6 col-lg-6"></div>
		<div class="col-sm-2 col-lg-2 align-self-center text-center">
			<h5>총 결제금액(세금포함) </h5>
		</div>
		<div class="col-sm-2 col-lg-2 align-self-center">
			<h5> 원</h5>
		</div>
		<div class="col-sm-2 col-lg-2">
			<button type="submit" class="btn btn-primary w-75">다음</button>
		</div>
	</div>
</nav>
</form>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
function showSeatImage(seatGrade) {
    var imageContainer = document.getElementById('seatImageContainer');
    var imageUrl = '';
    if (seatGrade === 'economy35') {
        imageUrl = '<c:url value="/img/seat-option/economy35.png"/>';
    } else if (seatGrade === 'premia42') {
        imageUrl = '<c:url value="/img/seat-option/premia42.png"/>';
    }
    imageContainer.innerHTML = '<img class="img-fluid" src="' + imageUrl + '">';
};
</script>
</body>
