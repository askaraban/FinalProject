<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<style>
.tapBtn {
	flex-wrap: wrap;
	display: flex;
}	

.tapBtn .btn-line {
	height: auto;
	padding-top: 0.3125rem;
	padding-bottom: 0.3125rem;
	margin-bottom: 0.625rem;
	margin-right: 1.25rem;
	font-size: 1.05rem;
	letter-spacing: -0.0175rem;
	position: relative;
	font-weight: bolder;
	color: #000;
}

.btn-line {
  padding: var(--bs-btn-padding-y) var(--bs-btn-padding-x);
  border: var(--bs-btn-border-width) solid var(--bs-btn-border-color);
  background-color: var(--bs-btn-bg);
}

.tapBtn .btn-line.on {
	color:#2196f3;
}

</style>
    
<body id="body" class="up-scroll">
<!-- ====================================
———	CATEGORY GRID FULL
===================================== -->
<section class="py-7 py-md-10">
	<div class="container">
		<!-- Search Result Bar -->
	    <div class="search-result-bar">
			<div class="col-md-5">
				<h2 class="fw-bolder mb-6">이벤트</h2>
				<h5 class="mb-8">스위프트에어 이벤트와 함께 특별한 여정을 시작해보세요:)</h5>
				<div class="d-flex align-items-center">
					<div class="tapBtn">
						<button type="button" onclick="location.href='event_detail.html'" class="btn-line on">
						진행중
						</button>
						<button class="btn-line">
						종료됨
						</button>
						
					</div>
				</div>
			</div>
    	</div>

		<div class="row">
			<div class="col-md-6 col-lg-6">
				<div class="card border-0 bg-transparent">
					<a href="event_detail.html">
						<img class="card-img rounded-5" data-src="../assets/img/event/BKsale.jpg" src="../assets/img/event/BKsale.jpg" alt="Card image cap">
					</a>
					<div class="card-body p-0 pt-5">
		            	<div class="form-label" style="display: flex; justify-content: space-between;">
		              		<date class="meta-date" style="font-size: 0.875rem;">2024.03.25 ~ 2024.03.31</date>
		              		<span class="badge text-bg-primary fs-6" style="line-height: 1.2">진행중</span>
		            	</div>
						<h5 class="card-title fw-bolder lh-base">
							<a href="event_detail.html">
								당장 떠나기 좋은 
								<br> 
								방콕 노선 임박 특가
							</a>
						</h5>
					</div>
				</div>
			</div>
			
			<div class="col-md-6 col-lg-6">
				<div class="card border-0 bg-transparent">
					<a href="event_detail.html">
						<img class="card-img rounded-5" data-src="../assets/img/event/SFOsaleMarch.jpg" src="../assets/img/event/SFOsaleMarch.jpg" alt="Card image cap">
					</a>
					<div class="card-body p-0 pt-5">
		            	<div class="form-label" style="display: flex; justify-content: space-between;">
		              		<date class="meta-date" style="font-size: 0.875rem;">2024.03.13 ~ 2024.03.31</date>
		              		<span class="badge text-bg-primary fs-6" style="line-height: 1.2">진행중</span>
		            	</div>
						<h5 class="card-title fw-bolder lh-base">
							<a href="event_detail.html">
								스위프트에어가 준비한 
								<br> 
								샌프란시스코 20% 할인
							</a>
						</h5>
					</div>
				</div>
			</div>
			
			<div class="col-md-6 col-lg-6">
				<div class="card border-0 bg-transparent">
					<a href="event_detail.html">
						<img class="card-img rounded-5" data-src="../assets/img/event/TKPEsale.jpg" src="../assets/img/event/TKPEsale.jpg" alt="Card image cap">
					</a>
					<div class="card-body p-0 pt-5">
		            	<div class="form-label" style="display: flex; justify-content: space-between;">
		              		<date class="meta-date" style="font-size: 0.875rem;">2024.03.07 ~ 2024.03.31</date>
		              		<span class="badge text-bg-primary fs-6" style="line-height: 1.2">진행중</span>
		            	</div>
						<h5 class="card-title fw-bolder lh-base">
							<a href="event_detail.html">
								설레는 봄, 벚꽃특가 
								<br> 
								도쿄 노선 15% 할인
							</a>
						</h5>
					</div>
				</div>
			</div>

			<div class="col-md-6 col-lg-6">
				<div class="card border-0 bg-transparent">
					<a href="event_detail.html">
						<img class="card-img rounded-5" data-src="../assets/img/event/Event.jpg" src="../assets/img/event/Event.jpg" alt="Card image cap">
					</a>
					<div class="card-body p-0 pt-5">
		            	<div class="form-label" style="display: flex; justify-content: space-between;">
		              		<date class="meta-date" style="font-size: 0.875rem;">2024.03.01 ~ 2024.03.31</date>
		              		<span class="badge text-bg-primary fs-6" style="line-height: 1.2">진행중</span>
		            	</div>
						<h5 class="card-title fw-bolder lh-base">
							<a href="event_detail.html">
								누적 탑승객 100만명 기념
								<br>
								회원가입 이벤트
							</a>
						</h5>
					</div>
				</div>
			</div>
			
			<div class="col-md-6 col-lg-6">
				<div class="card border-0 bg-transparent">
					<a href="event_detail.html">
						<img class="card-img rounded-5" data-src="../assets/img/event/SFOdeals.jpg" src="../assets/img/event/SFOdeals.jpg" alt="Card image cap">
					</a>
					<div class="card-body p-0 pt-5">
		            	<div class="form-label" style="display: flex; justify-content: space-between;">
		              		<date class="meta-date" style="font-size: 0.875rem;">2024.02.14 ~ 2024.02.21</date>
		              		<span class="badge bg-danger fs-6" style="line-height: 1.2">종료됨</span>
		            	</div>
						<h5 class="card-title fw-bolder lh-base">
							<a href="event_detail.html">
								스위프트에어
								<br>
								샌프란시스코 신규 취항 특가
							</a>
						</h5>
					</div>
				</div>
			</div>

			<div class="col-md-6 col-lg-6">
				<div class="card border-0 bg-transparent">
					<a href="event_detail.html">
						<img class="card-img rounded-5" data-src="../assets/img/event/TK1yr.jpg" src="../assets/img/event/TK1yr.jpg" alt="Card image cap">
					</a>
					<div class="card-body p-0 pt-5">
		            	<div class="form-label" style="display: flex; justify-content: space-between;">
		              		<date class="meta-date" style="font-size: 0.875rem;">2023.12.21 ~ 2023.12.27</date>
		              		<span class="badge bg-danger fs-6" style="line-height: 1.2">종료됨</span>
		            	</div>
						<h5 class="card-title fw-bolder lh-base">
							<a href="event_detail.html">
								나리타 노선
								<br> 
								취항 1주년 기념 특가
							</a>
						</h5>
					</div>
				</div>
			</div>

			<div class="col-md-6 col-lg-6">
				<div class="card border-0 bg-transparent">
					<a href="event_detail.html">
						<img class="card-img rounded-5" data-src="../assets/img/event/X-mas.jpg" src="../assets/img/event/X-mas.jpg" alt="Card image cap">
					</a>
					<div class="card-body p-0 pt-5">
		            	<div class="form-label" style="display: flex; justify-content: space-between;">
		              		<date class="meta-date" style="font-size: 0.875rem;">2023.11.08 ~ 2023.11.15</date>
		              		<span class="badge bg-danger fs-6" style="line-height: 1.2">종료됨</span>
		            	</div>
						<h5 class="card-title fw-bolder lh-base">
							<a href="event_detail.html">
								크리스마스를 제대로 즐기는 방법?
								<br>
								스위프트에어와 떠나자
							</a>
						</h5>
					</div>
				</div>
			</div>

			<div class="col-md-6 col-lg-6">
				<div class="card border-0 bg-transparent">
					<a href="event_detail.html">
						<img class="card-img rounded-5" data-src="../assets/img/event/FRA.jpg" src="../assets/img/event/FRA.jpg" alt="Card image cap">
					</a>
					<div class="card-body p-0 pt-5">
		            	<div class="form-label" style="display: flex; justify-content: space-between;">
		              		<date class="meta-date" style="font-size: 0.875rem;">2023.10.30 ~ 2023.11.06</date>
		              		<span class="badge bg-danger fs-6" style="line-height: 1.2">종료됨</span>
		            	</div>
						<h5 class="card-title fw-bolder lh-base">
							<a href="event_detail.html">
								에어프레미아 특가
								<br>
								유럽 여행의 시작
							</a>
						</h5>
					</div>
				</div>
			</div>
		</div>
    <!-- ====================================
———	pagination
===================================== -->
<section class="my-5">
  <nav aria-label="Page navigation example">
    <ul class="pagination" style="justify-content: center;">
      <li class="page-item me-2">
        <a class="page-link" href="javascript:void(0)">
          <i class="fa fa-angle-left" aria-hidden="true"></i>
        </a>
      </li>
      <li class="page-item active me-2"><a class="page-link" href="javascript:void(0)">1</a></li>
      <li class="page-item me-2"><a class="page-link" href="javascript:void(0)">2</a></li>
      <li class="page-item me-2"><a class="page-link" href="javascript:void(0)">3</a></li>
      <li class="page-item me-2"><a class="page-link" href="javascript:void(0)">4</a></li>
      <li class="page-item me-2"><a class="page-link" href="javascript:void(0)">5</a></li>
      <li class="page-item">
        <a class="page-link" href="javascript:void(0)">
          <i class="fa fa-angle-right" aria-hidden="true"></i>
        </a>
      </li>
    </ul>
  </nav>
</section>

	</div>
</section>

</body>
