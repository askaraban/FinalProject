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
<title>마이 페이지</title>

<style type="text/css">
.pagination.active a {
	background: #242a30 !important;
	border-color: #242a30 !important;
	z-index: 2;
	color: #fff;
	cursor: default;
}
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
			<h2 class="fw-normal mb-4 mb-md-0">마이페이지</h2>

			<div class="col-md-7 col-lg-8" style="width: 100%; margin-top: 20px;">
				<div class="card">
					<div class="card-body p-6"
						style="display: flex; flex-direction: row; align-items: center;">
						<div class="col-md-5 col-lg-4">
							<!-- <div class="card card-profile"> -->
							<div>
								<!-- <div class="card-profile-img py-6" style="text-align: center;">  -->
								<div style="text-align: center;">
									<img class="lazyestload"
										data-src=<c:url value="/img/mypage/user.png"/>
										src=<c:url value="/img/mypage/user.png"/>
										alt="Image"
										style="width: 40%; height: 40%; border-color: gray;">
								</div>
							</div>
						</div>
						<div class="col-md-5 col-lg-4" style="margin: 10px;">
							<div class="custom-file" style="text-align: left;">
								<h2 class="fw-normal mb-4">SUMIN KIM</h2>
								<h4 class="fw-normal mb-4">(회원번호:10004156970)</h4>
								<h5 class="fw-normal mb-4" style="color: gray;">suumin0722@naver.com</h5>
								<a href="pricing-table.html" class="btn btn-secondary btn mb-3">회원
									정보 변경</a>
							</div>
						</div>
						<div class="col-md-5 col-lg-4">
							<div class="card-profile-img py-6" style="text-align: center;">
								<div style="margin: 10px;">
									<h3>나의 등급</h3>
									<!-- <a href="mgrade" class="btn btn-white btn-lg mb-3"> -->
									<a href="<c:url value="/mypage/mgrade"/>?memberNum=1" class="btn btn-white btn-lg mb-3">
										> BLUE</a>
								</div>

								<div style="margin: 10px;">
									<h3>포인트</h3>
									<a href="point" class="btn btn-white btn-lg mb-3">
										> 10만P</a>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div>
				<ul class="nav nav-pills">
					<li class="active" style="margin: 5px;"><a
						href="#nav-pills-tab-1" data-bs-toggle="tab"
						class="nav-link active" style="background-color: #43C4AE;">다가오는
							여정</a></li>
					<li class="nav-item" style="margin: 5px;"><a
						href="#nav-pills-tab-2" data-bs-toggle="tab"
						class="nav-link active" style="background-color: #43C4AE;">지난
							여정</a></li>
					<!-- 		
					<li class="nav-item" style="margin: 5px;"><a
						href="#nav-pills-tab-3" data-bs-toggle="tab"
						class="nav-link active" style="background-color: #43C4AE;">나의
							분실물 내역</a></li>
					 -->
				</ul>

				<div class="tab-content panel p-3 rounded">
					<div class="tab-pane fade active show" id="#nav-pills-tab-1">
						<div class="table-responsive">
							<div class="panel panel-inverse" data-sortable-id="table-basic-4">
								<div class="panel-body">
									<div class="table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th>예약번호</th>
													<th nowrap>여정</th>
													<th nowrap>노선</th>
													<th nowrap>일정</th>
												</tr>
											</thead>
											<tbody>
												<c:if test="${empty futureJourneyList}">
													<tr>
														<td colspan="4">다가오는 여정이 없습니다.</td>
													</tr>
												</c:if>
											<c:forEach var="future" items="${futureJourneyList}">
												<tr>
													<td>${future.paymentId}</td>
													<td>${future.scheduleFlight }</td>
													<td>${future.routeDeparture } -> ${future.routeDestination } </td>
													<td>${future.scheduleDepartureDate } -> ${future.scheduleArrivalDate } </td>
												</tr>
											</c:forEach>
											</tbody>
										</table>
									</div>

								</div>
							</div>
						</div>
					</div>

					<div style="text-align: center;">
						<%-- 페이지 번호 출력 --%>
						<c:choose>
							<c:when test="${pager.startPage > pager.blockSize }">
								<a href="<c:url value="/file/list"/>?pageNum=${pager.prevPage}">[이전]</a>
							</c:when>
							<c:otherwise>
								[이전]
							</c:otherwise>
						</c:choose>
						
						<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }" step="1">
							<c:choose>
								<c:when test="${pager.pageNum != i }">
									<a href="<c:url value="/file/list"/>?pageNum=${i}">[${i}]</a>
								</c:when>
								<c:otherwise>
									[${i}]
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${pager.endPage != pager.totalPage }">
								<a href="<c:url value="/file/list"/>?pageNum=${pager.nextPage}">[다음]</a>
							</c:when>
							<c:otherwise> 
								[다음]
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>