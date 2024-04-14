<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

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
							<div class="col-sm-2 mb-1 fw-bold">항공편명</div>
								<div class="select-default bg-white">
									<select class="select-location">
										<option>항공편명</option>
										<option>SW1011</option>
										<option>SW1012</option>
										<option>SW2011</option>
										<option>SW2012</option>
										<option>SW3011</option>
										<option>SW3012</option>
									</select>
								</div>
						</div>
		            	<div class="mb-4">
		            		<div class="col-sm-2 mb-1 fw-bold">출발지</div>
							<input type="text" class="form-control" value="${schedulemodify.routeDeparture}">
		            	</div>
		            	<div class="mb-4">
		            		<div class="col-sm-2 mb-1 fw-bold">도착지</div>
							<input type="text" class="form-control" value="${schedulemodify.routeDestination}">
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
						<div class="mb-4">
		            		<div class="col-sm-2 mb-1 fw-bold">가격</div>
							<input type="text" class="form-control" required>
		            	</div>
						<div class="mb-4">
						    <input type="hidden" id="scheduleSchedule">
						    <div class="col-sm-12">
						        <div class="col-sm-2 mb-1 fw-bold">출발일</div>
						            <input type="text" class="form-control" name="scheduleDepartureDate" id="scheduleDepartureDate" placeholder="예): 2024-04-14" value="${schedulemodify.scheduleDepartureDate}" style="margin-bottom: 1rem;" required>
						        <div class="col-sm-2 mb-1 fw-bold">도착일</div>
						            <input type="text" class="form-control" name="scheduleArrivalDate" id="scheduleArrivalDate" placeholder="예): 2024-04-14" value="${schedulemodify.scheduleArrivalDate}" required>
						    </div>
						</div>
		            </div>
				</div>
			</div>
 		</div>
		<div style="float: right">
			<a href ="<c:url value="/schedule/list"/>" type="button" class="btn btn-primary ms-1">목록</a>
			<a href ="<c:url value="/schedule/list"/>" type="button" class="btn btn-primary ms-1">취소</a>
			<button type="submit" class="btn btn-primary ms-1" id="submitBtn">수정</button>
		</div>
	</div>
</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$('#submitBtn').click(function() {
	var scheduleSchedule = $('#scheduleSchedule').val();
	var values = scheduleSchedule.split(" - ");
	
	var first = values[0].split('/');
	var last = values[1].split('/');
	
	var oDepartureDate = first[2] + '/' + first[0] + '/' + first[1];
	var oArrivalDate = last[2] + '/' + last[0] + '/' + last[1];
	
	var scheduleDepartureDate = oStart;
	var scheduleArrivalDate = oEnd;
	
	$('#scheduleDepartureDate').val(scheduleDepartureDate);
	$('#scheduleArrivalDate').val(scheduleArrivalDate);
})
</script>

</body>
