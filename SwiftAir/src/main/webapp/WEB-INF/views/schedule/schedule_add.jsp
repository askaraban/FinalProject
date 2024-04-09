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
							<input type="text" class="form-control" name="routeDeparture" value="${shedule.routeDeparture}">
		            	</div>
		            	<div class="mb-4">
		            		<div class="col-sm-2 mb-1 fw-bold">도착지</div>
							<input type="text" class="form-control" name="routeDestination" value="${shedule.routeDestination}">
		            	</div>
		            	<div class="mb-4">
		            		<div class="col-sm-2 mb-1 fw-bold">운항시간</div>
							<div class="row">
								<div class="col-sm-5">
									<input type="number" class="form-control" name="routeTime" value="${shedule.routeTime}">
								</div>
								<div class="col-sm-1 mt-2 ms-n3">시간</div>
								<div class="col-sm-5">
									<input type="number" class="form-control" name="routeTime" value="${shedule.routeTime}">
								</div>
								<div class="col-sm-1 mt-2 ms-n3">분</div>
							</div>
						</div>
						<div class="mb-4">
		            		<div class="col-sm-2 mb-1 fw-bold">가격</div>
							<input type="text" class="form-control" name="routePrice" value="${shedule.routePrice}">
		            	</div>
						<div class="mb-2">
							<div class="col-sm-2 mb-1 fw-bold">운항일자</div>
							<div class="form-group col-md-3 col-lg-12 mb-0">
								<input type="text" class="form-control double-date" name="scheduleDuration">
							</div>
						</div>
		            </div>
				</div>
			</div>
 		</div>
		<div style="float: right">
		 <a href ="<c:url value="/schedule/list"/>" type="button" class="btn btn-primary ms-1">목록</a>
			<a href ="<c:url value="/schedule/list"/>" type="button" class="btn btn-primary ms-1">취소</a>
		  <button type="submit" class="btn btn-primary ms-1">등록</button>
		</div>
		</form>
	</div>
</section>

<script>
$("#scheduleFlight").val();
</script>

</body>