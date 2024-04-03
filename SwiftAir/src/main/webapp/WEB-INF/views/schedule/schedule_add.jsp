<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<body id="body" class="up-scroll">

<!-- ====================================
———	운항일정 등록
===================================== -->
<section class="py-7 py-md-10">
	<div class="container">
		<h2 class="fw-normal mb-4 mb-md-5">운항일정 등록</h2>
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
							<input type="text" class="form-control" required>
		            	</div>
		            	<div class="mb-4">
		            		<div class="col-sm-2 mb-1 fw-bold">도착지</div>
							<input type="text" class="form-control" required>
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
		  <button type="submit" class="btn btn-primary ms-1">등록</button>
		</div>
	</div>
</section>

</body>