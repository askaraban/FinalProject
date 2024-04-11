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
								<h2 class="fw-normal mb-4">${loginMember.memberFirstName} ${loginMember.memberLastName}</h2>
								<h4 class="fw-normal mb-4">(회원번호: ${loginMember.memberNum} )</h4>
								<h5 class="fw-normal mb-4" style="color: gray;">${loginMember.memberEmail}</h5>
								<a href="pricing-table.html" class="btn btn-secondary btn mb-3">회원 정보 변경</a>
							</div>
						</div>
						<div class="col-md-5 col-lg-4">
							<div class="card-profile-img py-6" style="text-align: center;">
								<div style="margin: 10px;">
									<h3>나의 등급</h3>
									<!-- <a href="mgrade" class="btn btn-white btn-lg mb-3"> -->
									<a href="<c:url value="/mypage/mgrade"/>" class="btn btn-white btn-lg mb-3">
										<c:if test="${loginMember.memberPoint<4000}">
										<span>> BLUE</span>
										</c:if>
										<c:if test="${loginMember.memberPoint>=4000 && loginMember.memberPoint<9000}">
										<span>> GOLD</span>
										</c:if>
										<c:if test="${loginMember.memberPoint>=9000}">
										<span>> DIAMOND</span>
										</c:if>
									</a>
								</div>

								<div style="margin: 10px;">
									<h3>포인트</h3>
									<a href="point" class="btn btn-white btn-lg mb-3">
										> ${loginMember.memberPoint }P</a>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div>
				<ul class="nav nav-pills">
					<li class="active" style="margin: 5px;">
						<!-- <a href="#nav-pills-tab-1" data-bs-toggle="tab" class="nav-link active" style="background-color: #43C4AE;">다가오는 여정</a> -->
						<a href="<c:url value="/mypage/journeyTable"/>?journey=1" style="background-color: #43C4AE;">다가오는 여정</a>
					</li>
					<li class="nav-item" style="margin: 5px;">
						<a href="<c:url value="/mypage/journeyTable"/>?journey=2"" style="background-color: #43C4AE;">지난 여정</a>
					</li>
					<!-- 		
					<li class="nav-item" style="margin: 5px;"><a
						href="#nav-pills-tab-3" data-bs-toggle="tab"
						class="nav-link active" style="background-color: #43C4AE;">나의 분실물 내역</a></li>
					 -->
				</ul>

				<div class="tab-content panel p-3 rounded">
					<div class="tab-pane fade active show" id="nav-pills-tab-1">
						<div class="table-responsive">
							<div class="panel panel-inverse" data-sortable-id="table-basic-4">
								<div class="panel-body">
									<div class="table-responsive" id="journeyTableDiv">
									</div>
										<!-- 
										<table class="table" style="text-align: center;">
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
											<c:forEach var="map" items="${futureJourneyList}">
												<tr>
													<td>${map.PAYMENT_ID}</td>
													<td>${map.SCHEDULE_FLIGHT }</td>
													<td>${map.ROUTE_DEPARTURE } -> ${map.ROUTE_DESTINATION } </td>
													<td>${map.SCHEDULE_DEPARTURE_DATE } -> ${map.SCHEDULE_ARRIVAL_DATE  } </td>
												</tr>
											</c:forEach>
											</tbody>
										</table>
									</div>
									<div style="text-align: center;">
									 -->
										<%-- 페이지 번호 출력 --%>
										<%-- <c:choose>
											<c:when test="${pager.startPage > pager.blockSize }">
												<a href="<c:url value="/mypage/"/>?pageNum=${pager.prevPage}">[이전]</a>
											</c:when>
											<c:otherwise>
												[이전]
											</c:otherwise>
										</c:choose>
										
										<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }" step="1">
											<c:choose>
												<c:when test="${pager.pageNum != i }">
													<a href="<c:url value="/mypage/"/>?pageNum=${i}">[${i}]</a>
												</c:when>
												<c:otherwise>
													[${i}]
												</c:otherwise>
											</c:choose>
										</c:forEach>
										<c:choose>
											<c:when test="${pager.endPage != pager.totalPage }">
												<a href="<c:url value="/mypage/"/>?pageNum=${pager.nextPage}">[다음]</a>
											</c:when>
											<c:otherwise> 
												[다음]
											</c:otherwise>
										</c:choose> --%>
									<!-- </div> -->
								</div>
							</div>
						</div>
					</div>
					
					<%-- <div class="tab-pane fade active show" id="nav-pills-tab-2" style="display: none;">
						<div class="table-responsive">
							<div class="panel panel-inverse" data-sortable-id="table-basic-4">
								<div class="panel-body">
									<div class="table-responsive">
										<table class="table" style="text-align: center;">
											<thead>
												<tr>
													<th>예약번호(지난여정)</th>
													<th nowrap>여정</th>
													<th nowrap>노선</th>
													<th nowrap>일정</th>
												</tr>
											</thead>
											<tbody>
												<c:if test="${empty pastJourneyList}">
													<tr>
														<td colspan="4">지난 여정이 없습니다.</td>
													</tr>
												</c:if>
											<c:forEach var="map" items="${pastJourneyList}">
												<tr>
													<td>${map.PAYMENT_ID}</td>
													<td>${map.SCHEDULE_FLIGHT }</td>
													<td>${map.ROUTE_DEPARTURE } -> ${map.ROUTE_DESTINATION } </td>
													<td>${map.SCHEDULE_DEPARTURE_DATE } -> ${map.SCHEDULE_ARRIVAL_DATE  } </td>
												</tr>
											</c:forEach>
											</tbody>
										</table>
									</div>
									<div style="text-align: center;">
										페이지 번호 출력
										<c:choose>
											<c:when test="${pager1.startPage > pager1.blockSize }">
												<a href="<c:url value="/mypage/"/>?pageNum=${pager1.prevPage}">[이전]</a>
											</c:when>
											<c:otherwise>
												[이전]
											</c:otherwise>
										</c:choose>
										
										<c:forEach var="i" begin="${pager1.startPage }" end="${pager1.endPage }" step="1">
											<c:choose>
												<c:when test="${pager1.pageNum != i }">
													<a href="<c:url value="/mypage/"/>?pageNum=${i}">[${i}]</a>
												</c:when>
												<c:otherwise>
													[${i}]
												</c:otherwise>
											</c:choose>
										</c:forEach>
										<c:choose>
											<c:when test="${pager1.endPage != pager1.totalPage }">
												<a href="<c:url value="/mypage/"/>?pageNum=${pager1.nextPage}">[다음]</a>
											</c:when>
											<c:otherwise> 
												[다음]
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
						</div>
					</div> --%>
				</div>
			</div>
		</div>
	</section>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

/*
function upcomingJourney() {
	$("#nav-pills-tab-1").show();
    $("#nav-pills-tab-2").hide();
};
            
function pastJourney() {
    $("#nav-pills-tab-1").hide();
    $("#nav-pills-tab-2").show();
}; */

var page=1;
var journeyNum=1;
journeyTableDisplay(page, journeyNum);

function journeyTableDisplay(pageNum, journey) {
	page=pageNum;
	journeyNum=journey;
    $.ajax({
        url: '<c:url value="/mypage/journeyTable"/>',
        type: 'get',
        data: { "pageNum" : pageNum, "journey" : journey},
        dataType: "json",
        success: function(journeyData) {
        	if(journeyData.futureJourneyList.length == 0 ) {//검색된 여정이 없는 경우
				var html="<table class='table' style='text-align: center;' id='journeyTable'>";
				html+="<thead>";
				html+="<tr>";
				html+="<th>예약번호</th>";
				html+="<th nowrap>여정</th>";
				html+="<th nowrap>노선</th>";
				html+="<th nowrap>일정</th>";
				html+="</tr>";
				html+="</thead>";
				html+="<tbody>";
				html+="<tr>";
				html+="<td colspan='4'>다가오는 여정이 없습니다.</td>";
				html+="</tr>";
				html+="</tbody>";
				html+="</table>"
				$("#journeyTableDiv").html(html);
				return;
			}	
        	
        	var html="<table class='table' style='text-align: center;' id='journeyTable'>";
			html+="<thead>";
			html+="<tr>";
			html+="<th>예약번호</th>";
			html+="<th nowrap>여정</th>";
			html+="<th nowrap>노선</th>";
			html+="<th nowrap>일정</th>";
			html+="</tr>";
			html+="</thead>";
			
			if(journey == 1) {
			$(journeyData.futureJourneyList).each(function() {
				html+="<tbody>";
				html+="<tr>";
				html+="<td>"+this.PAYMENT_ID+"</td>";
				html+="<td>"+this.SCHEDULE_FLIGHT+"</td>";
				html+="<td>"+this.ROUTE_DEPARTURE+" - "+this.ROUTE_DESTINATION+"</td>";
				html+="<td>"+this.SCHEDULE_DEPARTURE_DATE+" - "+this.SCHEDULE_ARRIVAL_DATE+"</td>";
				html+="</tr>";
				html+="</tbody>";
			});
			} else if(journey == 2) {
				$(journeyData.pastJourneyList).each(function() {
					html+="<tbody>";
					html+="<tr>";
					html+="<td>"+this.PAYMENT_ID+"</td>";
					html+="<td>"+this.SCHEDULE_FLIGHT+"</td>";
					html+="<td>"+this.ROUTE_DEPARTURE+" - "+this.ROUTE_DESTINATION+"</td>";
					html+="<td>"+this.SCHEDULE_DEPARTURE_DATE+" - "+this.SCHEDULE_ARRIVAL_DATE+"</td>";
					html+="</tr>";
					html+="</tbody>";
				});
			}
			html+="</table>";
			
			html+="<div id='pageNumDiv' style='text-align:center;'>"
			if(journeyData.pager.startPage > journeyData.pager.blockSize) {
				html+="<a href='javascript:journeyTableDisplay("+journeyData.pager.prevPage+");'>[이전]</a>";
			} else {
				html+="[이전]";
			}
			
			for(i = journeyData.pager.startPage ; i <= journeyData.pager.endPage ; i++) {
				if(journeyData.pager.pageNum != i) {
					html+="<a href='javascript:journeyTableDisplay("+i+");'>["+i+"]</a>";
				} else {
					html+="["+i+"]";
				}
			}
			
			if(journeyData.pager.endPage != journeyData.pager.totalPage) {
				html+="<a href='javascript:journeyTableDisplay("+journeyData.pager.nextPage+");'>[다음]</a>";
			} else {
				html+="[다음]";
			}
			html+="</div>"
			$("#journeyTableDiv").html(html);
			
			
        },
        error: function(xhr) {
            alert("에러코드(여정 검색) ="+xhr.status) 
        }
    });
}




</script>
	
</body>
</html>