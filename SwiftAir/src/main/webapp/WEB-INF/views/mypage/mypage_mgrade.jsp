<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>나의 등급</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
<c:if test="${loginMember.memberPoint<4000}">
.table tr td:nth-child(2) {
	background: #fafafa;
</c:if>

<c:if test="${loginMember.memberPoint >= 4000 && loginMember.memberPoint < 9000}">
.table tr td:nth-child(3) {
	background: #fafafa;
</c:if>

<c:if test="${loginMember.memberPoint>=9000}">
.table tr td:nth-child(4) {
	background: #fafafa;
</c:if>
</style>
</head>

<body id="body" class="body-wrapper boxed-menu">
	<!-- js-loader -->
	<div id="js-loader"></div>

	<!-- ====================================
    ———	MY PROFILE
    ===================================== -->
	<!-- <section class="bg-light py-5 height100vh"> -->
	<section style="width: 100%; margin: 20px;">
		<div class="container">
			<h2 class="fw-normal mb-4 mb-md-0">회원 등급</h2>

			<div class="col-md-7 col-lg-8" style="width: 100%; margin-top: 20px;">
				<div class="card">
					<div class="card-body p-6"
						style="display: flex; flex-direction: row; align-items: center; padding: 10px; color:black;">
						<div class="col-md-5 col-lg-4" style="width: 30%">
							<!-- <div class="card card-profile"> -->
							<!-- <div class="card-profile-img py-6" style="text-align: center;">  -->
							<div style="text-align: center; margin-right: 50px;">
								<h4 class="fw-normal mb-4">${loginMember.memberFirstName} ${loginMember.memberLastName} 님의 등급</h4>
								<c:if test="${loginMember.memberPoint<4000}">
								<h2 class="fw-normal mb-4">BLUE</h2>
								</c:if>
								<c:if test="${loginMember.memberPoint>=4000 && loginMember.memberPoint<9000}">
								<h2 class="fw-normal mb-4">GOLD</h2>
								</c:if>
								<c:if test="${loginMember.memberPoint>=9000}">
								<h2 class="fw-normal mb-4">DIAMOND</h2>
								</c:if>
								
							</div>
						</div>

						<div class="col-md-5 col-lg-4" style="width: 70%"
							style="display: flex; flex-direction: column;">
							<!-- <div class="custom-file" style="display: flex; flex-direction: row;" > -->
							<div style="display: flex; justify-content: space-between;">
								<div style="margin: 10px;">
									<h6 class="fw-normal mb-4 blue">항공권 결제 금액 적립</h6>
									<h4 id="point" class="fw-normal mb-4 blue">1,000원 당 7 포인트 비율로 적립</h4>
								</div>
								<div style="margin: 10px;">
							            <h6 class="fw-normal mb-4">무료 추가 수하물</h6>
							            <h4 id="luggage" class="fw-normal mb-4 gold">GOLD 승급 시 제공</h4>
								</div>
								<div style="margin: 10px;">
										<h6 class="fw-normal mb-4">사전 좌석 구매</h6>
										<h4 id="seatPurchase" class="fw-normal mb-4 diamond">DIAMOND 승급 시 제공</h4>
								</div>
							</div>

							<div class="col-md-5 col-lg-4">
								<div class="card-profile-img py-6">
									<div style="margin: 10px;">
										<h6 class="fw-normal mb-4">좌석 업그레이드</h6>
										<h4 id="seatGrade" class="fw-normal mb-4 diamond">DIAMOND 승급 시 제공</h4>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-body p-6"
					style="display: flex; flex-direction: row; align-items: center; color:black;">
					<div class="col-md-5 col-lg-4" style="width: 30%">
						<!-- <div class="card card-profile"> -->
						<!-- <div class="card-profile-img py-6" style="text-align: center;">  -->
						<div id="memberPoint" data-value="${loginMember.memberPoint}" style="text-align: center; margin-right: 50px;">
							<h4 class="fw-normal mb-4" id="highestScore">승급 스코어</h4>
							<h2 class="fw-normal mb-4">${loginMember.memberPoint}p</h2>
							 <p id="promotionScore" style="color:#2196f3">4000포인트 달성 시 GOLD로 승급</p>	
						</div>
					</div>
					<div class="col-md-5 col-lg-4" style="width: 70%">
						<!-- animated -->
						<div class="col-md-6" style="width: 100%; background-color: #e5e5e5; border-radius: 20px;">
							<div class="progress rounded-pill mb-2" id="progressPill" style="height: 30px; width:20px;">
								<div
									class="progress-bar bg-indigo progress-bar-striped progress-bar-animated rounded-pill fs-10px fw-bold"
									style="width: 100%;">${loginMember.memberPoint}p</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="tab-content panel p-3 rounded">
				<div class="tab-pane fade active show" id="default-tab-1">
					<div class="table-responsive">
						<div class="panel panel-inverse" data-sortable-id="table-basic-4">

							<div class="panel-body">

								<div class="table-responsive">
									<table class="table" style="text-align: center;">
										<thead>
											<tr>
												<td></td>
												<td class="blue" nowrap>BLUE</td>
												<td class="gold" nowrap>GOLD</td>
												<td class="diamond" nowrap>DIAMOND</td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>포인트 기본 적립</td>
												<td>1,000원 당 7 포인트 비율</td>
												<td>1,000원 당 11 포인트 비율<br> <span
													style="color: gray;">(포인트 약 60% 추가 적립)</span>
												</td>
												<td>1,000원 당 15 포인트 비율<br> <span
													style="color: gray;">(포인트 약 60% 추가 적립)</span>
												</td>
											</tr>
											<tr>
												<td>현장/사전 추가 수하물</td>
												<td>-</td>
												<td>위탁 수하물 무상 추가 2회</td>
												<td>위탁 수하물 무상 추가 4회</td>
											</tr>
											<tr>
												<td>좌석 지정</td>
												<td>-</td>
												<td>-</td>
												<td>전 좌석 무상 지정 2회</td>
											</tr>
											<tr>
												<td>좌석 업그레이드</td>
												<td>-</td>
												<td>-</td>
												<td>좌석 업그레이드 2회</td>
											</tr>
											<tr>
												<td>기내 우선 탑승</td>
												<td>-</td>
												<td>-</td>
												<td>기내 우선 탑승 혜택 제공</td>
											</tr>
											<tr>
												<td>수하물 우선 하기</td>
												<td>-</td>
												<td>-</td>
												<td>수하물 우선 하기 혜택 제공</td>
											</tr>
										</tbody>
									</table>
								</div>

							</div>
						</div>
					</div>
				</div>

			</div>

			<div id="유의사항">
				<div class="card-body p-6" style="padding: 10px;">
					<div class="col-md-5 col-lg-4" style="width: 100%;">
						<p style="color:black;">🛈회원 등급 유의사항</p>
						<p>
							- 회원 등급의 승급, 유지, 강등 심사는 매일 진행되며, 직전 24개월간 항공권
							탑승을 통해 적립한 점수(Score)을 통해 실시합니다.<br> - 최근 24개월 동안 적립된 스코어가
							4,000점 이상일 경우 GOLD/9,000점 이상일 경우 DIAMOND로 회원 등급이 승급됩니다.<br>
							- 승급된 회원 등급은 24개월 동안 유지되며 24개월 후의 스코어 적립 실적에 따라 승급, 유지, 강등이 이루어집니다.<br>
							- GOLD, DIAMOND 회원은 등급이 유지되는 24개월 안에 승급에 필요한 스코어 기준을 달성할 경우 등급이
							유지되며 아닐 경우 강등됩니다.<br> - 프레미아 멤버스 정책에 따라 항공권 결제를 통해 적립된 스코어만 등급
							산정 기준에 포함됩니다.
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>

<script type="text/javascript">
var memberPoint = $('#memberPoint').data('value');
var goldElements = $('.gold');
var diamondElements = $('.fw-normal.mb-4.diamond');
var progressPill = $('#progressPill');

 
if (memberPoint >= 0 && memberPoint < 4000) { // BLUE 등급인 경우
    goldElements.eq(0).css('color', 'gray');
    goldElements.eq(1).css('color', 'gray');
    diamondElements.css('color', 'gray');
	
    if(memberPoint <= 500) {
    	progressPill.css('width', '12.5%');
    } else {
    var percentage = (memberPoint / 4000) * 100;
    progressPill.css('width', percentage + '%');
    }
} else if (memberPoint >= 4000 && memberPoint < 9000) { // GOLD 등급인 경우
    diamondElements.css('color', 'gray');
    $('#point').text('1,000원 당 11 포인트 비율');
	$('#luggage').text('무상 추가 2회');
    $('#promotionScore').text('9000포인트 달성 시 DIAMOND로 승급');

    var percentage = (memberPoint / 9000) * 100;
    progressPill.css('width', percentage + '%');
    
} else {//DIAMOND 등급인 경우
	$('#point').text('1,000원 당 15 포인트 비율');
	$('#luggage').text('무상 추가 4회');
	$('#seatPurchase').text('전 좌석 무상 지정 2회');
	$('#seatGrade').text('좌석 업그레이드 2회');
	
    progressPill.css('width', '100%');
    $('#highestScore').text('현재 스코어');
    $('#promotionScore').text('현재 최고 등급입니다.');
}
</script>	
</body>
</html>