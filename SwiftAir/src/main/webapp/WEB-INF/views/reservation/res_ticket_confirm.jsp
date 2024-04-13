<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<body id="body" class="up-scroll">
<!-- ====================================
———	HEADER
===================================== -->
<section class="bg-light py-8">
  <div class="container">
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb" style="--bs-breadcrumb-divider: '>';">
      <h2 class="fw-normal mb-4 mb-md-0" style="font-size: 40px;">항공권 예매</h2>
      <ul class="list-unstyled d-flex p-0 m-0">
        <li class="breadcrumb-item"><a href="../index.html">Home</a></li>
        <li class="breadcrumb-item">일정</li>
        <li class="breadcrumb-item">좌석</li>
        <li class="breadcrumb-item">탑승객 정보</li>
        <li class="breadcrumb-item">좌석 선택</li>
        <li class="breadcrumb-item">예매정보 확인</li>
      </ul>
    </nav>
  </div>
</section>

<!-- ====================================
———	예매정보 확인
===================================== -->
<section class="py-7 py-md-10">
	<div class="container">
		<!-- 픽셀 고정이라 화면 작아지면 짤림 -->
		<c:forEach var="i" begin="1" end="${resInfo.resPassengerCnt}">
		<div class="col">
			<h5>탑승객 ${i} - name</h5>
		</div>
		<div style="background-image: url('<c:url value="/img/seat/ticket2.png"/>'); height: 285px; width: 1000px;">
			<div class="col-sm-12">
				<div class="row">
					<!-- 첫번째 row -->
					<div class="col-sm-9">
						<!-- 첫번째 줄 -->
						<div class="col ms-5 mt-9">
							<div class="row">
								<div class="col-sm-4">Name</div>
								<div class="col-sm-2">Flight</div>
								<div class="col-sm-2">Date</div>
								<div class="col-sm-2">Time</div>
							</div>
						</div>
						<div class="col ms-5">
							<div class="row">
								<div class="col-sm-4"><h5>GIL-DONG, HONG</h5></div>
								<div class="col-sm-2"><h5>SA747</h5></div>
								<div class="col-sm-2"><h5>01 APR 23</h5></div>
								<div class="col-sm-2"><h5>13:45</h5></div>
							</div>
						</div>
						<!-- 두번째 줄 -->
						<div class="col ms-5 mt-2">
							<div class="row">
								<div class="col-sm-6">From</div>
								<div class="col-sm-6">To</div>
							</div>
						</div>
						<div class="col ms-5">
							<div class="row">
								<div class="col-sm-6"><h5>INCHON(ICN)</h5></div>
								<div class="col-sm-6"><h5>LOS ANGELES(LAX)</h5></div>
							</div>
						</div>
						<!-- 삼번째 줄 -->
						<div class="col ms-5 mt-2">
							<div class="row">
								<div class="col-sm-4">Gate</div>
								<div class="col-sm-4">Boarding Time</div>
								<div class="col-sm-4">Seat</div>
							</div>
						</div>
						<div class="col ms-5">
							<div class="row">
								<div class="col-sm-4"><h5>22</h5></div>
								<div class="col-sm-4"><h5>12:55</h5></div>
								<div class="col-sm-4"><h5>23A</h5></div>
							</div>
						</div>
					</div>
					<!-- 2번째 row -->
					<div class="col-sm-3">
						<!-- 첫번째 줄 -->
						<div class="col mt-9">
							<div class="col-sm-2">Name</div>
						</div>
						<div class="col">
							<div class="col-sm-8"><h6>GIL-DONG, HONG</h6></div>
						</div>
						<!-- 두번째 줄 -->
						<div class="col">
							<div class="row">
								<div class="col-sm-5">From</div>
								<div class="col-sm-5">To</div>
							</div>
						</div>
						<div class="col">
							<div class="row">
								<div class="col-sm-5"><h6>ICN</h6></div>
								<div class="col-sm-5"><h6>LAX</h6></div>
							</div>
						</div>
						<!-- 삼번째 줄 -->
						<div class="col">
							<div class="row">
								<div class="col-sm-3">Flight</div>
								<div class="col-sm-5">Date</div>
								<div class="col-sm-3">Time</div>
							</div>
						</div>
						<div class="col">
							<div class="row">
								<div class="col-sm-3"><h6>SA747</h6></div>
								<div class="col-sm-5"><h6>01 APR 23</h6></div>
								<div class="col-sm-3"><h6>13:45</h6></div>
							</div>
						</div>
						<!-- 사번째 줄 -->
						<div class="col">
							<div class="row">
								<div class="col-sm-5">Gate</div>
								<div class="col-sm-4">Seat</div>
							</div>
						</div>
						<div class="col">
							<div class="row">
								<div class="col-sm-5"><h6>22</h6></div>
								<div class="col-sm-4"><h6>23A</h6></div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
	</div><!-- container -->
</section>

<section class="py-7 py-md-10">
	<div class="container">
		<div class="border rounded" style="width: 1000px;">
			<div class="row">
				<div class="col-sm-3 p-3">
					<h3>결제 내역</h3>					
				</div>
				<div class="col-sm-9 p-3">
		            <div class="col-sm-12">
						<div class="row">
							<div class="col-sm-3"><h6>항공 운임</h6></div>
							<div class="col-sm-9"><h6>260,000원</h6></div>
							<div class="col-sm-3"><h6>- 세부 내용?</h6></div>
							<div class="col-sm-9"><h6>120,000원 * 3</h6></div>
							<div class="col-sm-3"><h6>공항시설 사용료</h6></div>
							<div class="col-sm-9"><h6>65,432원</h6></div>
							<div class="col-sm-3"><h6>유류 할증료</h6></div>
							<div class="col-sm-9"><h6>88,888원</h6></div>
							<div class="col-sm-3"><h6>부가서비스 추가 금액</h6></div>
							<div class="col-sm-9"><h6>123,000원</h6></div>
							<div class="col-sm-3"><h6>- 부가서비스가있었나?</h6></div>
							<div class="col-sm-9"><h6>123,000원</h6></div>
							<hr>
							<div class="col-sm-3"><h6>총 결제 금액</h6></div>
							<div class="col-sm-9"><h6>1,234,000원</h6></div>
						</div>
		            </div>
				</div>
			</div>
 		</div>
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
			<h5>2,345,678 원</h5>
		</div>
		<div class="col-sm-2 col-lg-2">
			<button type="submit" class="btn btn-primary w-75">다음</button>
		</div>
	</div>
</nav>

</body>
