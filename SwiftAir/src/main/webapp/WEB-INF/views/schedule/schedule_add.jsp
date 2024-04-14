<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<body id="body" class="up-scroll">

<!-- ====================================
———	운항일정 등록
===================================== -->
<section class="bg-light py-8">
  <div class="container">
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb" style="--bs-breadcrumb-divider: '>';">
      <h2 class="fw-normal mb-4 mb-md-0" style="font-size: 40px;">운항일정 등록</h2>
    </nav>
  </div>
</section>

<section class="py-7 py-md-10">
	<div class="container">
		<form action="<c:url value="/schedule/add"/>" method="post">
		<div class="col-12">

        <!-- 운항일정 정보 -->
        <div class="border rounded px-6 py-5 mb-6">
			<div class="row">
				<div class="col-sm-4">
					<h5>운항일정</h5>
				</div>
				<div class="col-sm-8">
		            	<div class="mb-4">
							<div class="col-sm-2 mb-1 fw-bold">항공편명</div>
								<div class="select-default bg-white">
									<select class="select-location" id="scheduleFlight" name="scheduleFlight">
										<option>항공편명</option>
										<option value="SW1011">SW1011</option>
										<option value="SW1012">SW1012</option>
										<option value="SW2011">SW2011</option>
										<option value="SW2012">SW2012</option>
										<option value="SW3011">SW3011</option>
										<option value="SW3012">SW3012</option>
									</select>
								</div>
						</div>
		            	<div class="mb-4">
		            		<div class="col-sm-2 mb-1 fw-bold">출발지</div>
							<input type="text" class="form-control" name="routeDeparture" id="routeDeparture" readonly>
		            	</div>
		            	<div class="mb-4">
		            		<div class="col-sm-2 mb-1 fw-bold">도착지</div>
							<input type="text" class="form-control" name="routeDestination" id="routeDestination" readonly>
		            	</div>
		            	<div class="mb-4">
		            		<div class="col-sm-2 mb-1 fw-bold">운항시간</div>
							<div class="row">
								<div class="col-sm-5">
									<input type="text" class="form-control" name="routeTime" id="routeTime" readonly>
								</div>
								<div class="col-sm-1 mt-2 ms-n3">시간</div>
								<div class="col-sm-5">
									<input type="text" class="form-control" name="routeTime" id="routeTime" readonly>
								</div>
								<div class="col-sm-1 mt-2 ms-n3">분</div>
							</div>
						</div>
						<div class="mb-4">
		            		<div class="col-sm-2 mb-1 fw-bold">가격</div>
							<input type="number" class="form-control" name="routePrice" id="routePrice" readonly>
		            	</div>
						<div class="mb-4">
						    <input type="hidden" id="scheduleSchedule">
						    <div class="col-sm-12">
						        <div class="col-sm-2 mb-1 fw-bold">출발일</div>
						            <input type="text" class="form-control" name="scheduleDepartureDate" id="scheduleDepartureDate" placeholder="예): 2024-04-14" value="${schedule.scheduleDepartureDate}" style="margin-bottom: 1rem;" required>
						        <div class="col-sm-2 mb-1 fw-bold">도착일</div>
						            <input type="text" class="form-control" name="scheduleArrivalDate" id="scheduleArrivalDate" placeholder="예): 2024-04-14" value="${schedule.scheduleArrivalDate}" required>
						    </div>
						</div>
				</div>
			</div>
 		</div>
 		</div>
		<div style="float: right">
		 <a href ="<c:url value="/schedule/list"/>" type="button" class="btn btn-primary ms-1">목록</a>
		 <a href ="<c:url value="/schedule/list"/>" type="button" class="btn btn-primary ms-1">취소</a>
		 <button type="submit" class="btn btn-primary ms-1" id="submitBtn">등록</button>
		</div>
		</form>
	</div>
</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$('#scheduleFlight').change(function() {
    var selectedFlight = $(this).val();
    
    // AJAX 요청을 보냄
    $.ajax({
        url: '<c:url value="/schedule/getRouteByFlight"/>', // route 데이터를 가져올 엔드포인트
        type: 'GET',
        data: {flight: selectedFlight}, // 선택된 항공편명을 서버에 전송
        success: function(data) {
            // 서버로부터 받은 route 데이터를 사용하여 출발지, 도착지, 운항시간, 가격을 설정
            $('#routeDeparture').val(data.routeDeparture);
            $('#routeDestination').val(data.routeDestination);
            $('#routeTime').val(data.routeTime);
            $('#routePrice').val(data.routePrice);
        },
        error: function(xhr, status, error) {
            // 오류 처리
            console.error('Error:', error);
        }
    });
});

// 항공편명을 선택했을 때 입력 필드를 읽기 전용으로 설정
$('#scheduleFlight').change(function() {
    $('#routeDeparture').prop('readonly', true);
    $('#routeDestination').prop('readonly', true);
    $('#routeTime').prop('readonly', true);
    $('#routePrice').prop('readonly', true);
});

$('#submitBtn').click(function() {
	var scheduleSchedule = $('#scheduleSchedule').val();
	var values = scheduleSchedule.split(" - ");
	
	var first = values[0].split('/');
	var last = values[1].split('/');
	
	var oDepartureDate = first[2] + '/' + first[0] + '/' + first[1];
	var oArrivalDate = last[2] + '/' + last[0] + '/' + last[1];
	
	var scheduleDepartureDate = oDepartureDate;
	var scheduleArrivalDate = oArrivalDate;
	
	$('#scheduleDepartureDate').val(scheduleDepartureDate);
	$('#scheduleArrivalDate').val(scheduleArrivalDate);
});
</script>

</body>