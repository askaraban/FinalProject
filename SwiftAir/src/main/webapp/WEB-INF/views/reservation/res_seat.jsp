<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<style type="text/css">
.airplane--div {
	overflow: auto;
	max-height: 660px;
	min-width: 670px;
}

/* 백그라운드 처리 */
.airplane--background {
	width: 645px;
	height: 2414px;
}
.e--seat {
	margin-left: 79px;	
}
.e--seat img {
	width: 47px;
	height: 47px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>    
    
<section class="bg-light py-8">
  <div class="container">
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb" style="--bs-breadcrumb-divider: '>';">
      <h2 class="fw-normal mb-4 mb-md-0" style="font-size: 40px;">좌석예약</h2>
      <ul class="list-unstyled d-flex p-0 m-0">
        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
        <li class="breadcrumb-item">좌석예약</li>
      </ul>
    </nav>
    </div>
  </div>
</section>

<!-- ====================================
———	CATEGORY GRID LEFT SIDEBAR
===================================== -->
<section class="py-7 py-md-10">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 order-lg-1">
        <!-- Search Result Bar -->
        <div class="row">
			<div class="d-flex " style="width: 100%;">
			<div class="airplane--div" id="sch1Airplane">
				<div class="airplane--background" style="background-image: url('<c:url value="/img/seat/airplane_empty2.png"/>');">
					<div class="b--seat">
					<!-- 프레미아42 등급 좌석 -->
						<c:set var="b" value="1" />
						<c:forEach var="seatList" items="${seatList }" varStatus="status" begin="0" end="17">
							<c:choose>
								<c:when test="${seatList.seatGrade eq '프레미아42' }">
									<c:forEach var="reserved" items="${reservedSeatList }">
									
										<!-- 예매된 좌석을 확인하기 -->
										<c:set var="seatName" value="${seatList.seatName }"/>
										<c:choose>
											<c:when test="${reserved eq seatName}">
												<img id="${seatList.seatName }" alt="image" src='<c:url value="/img/seat/business_pre.png"/>'
												 style="position: relative; left: 100px; top: 590px; width: 55px;">
											</c:when>
											<c:otherwise>
												<img id="${seatList.seatName }" alt="image" src='<c:url value="/img/seat/business_not.png"/>'
												 style="position: relative; left: 100px; top: 590px; width: 55px;" class="pre_business" title="on">
											</c:otherwise>
										</c:choose>
										
									</c:forEach>
								</c:when>
							</c:choose>
					<%-- 좌석별 여백 --%>
							<c:choose>
								<c:when test="${b % 6 == 0}">
									<div style="height: 53px;">
									</div>
								</c:when>
								<c:when test="${b % 2 == 0}">
									<span style="margin: 37px;"> </span>
								</c:when>
								<c:when test="${b % 2 == 1}">
									<span style="margin: 1px;"> </span>
								</c:when>
							</c:choose>
							<c:set var="b" value="${b + 1}" />
						</c:forEach>
						
						<!-- 이코노미35 좌석 -->
						<c:set var="e" value="1" />
						<c:forEach var="seatList" items="${seatList }" varStatus="status">
							<c:choose>
								<c:when test="${seatList.seatGrade eq '이코노미35' }">
									<c:forEach var="reserved" items="${reservedSeatList }">
									
										<!-- 예매된 좌석을 확인하기 -->
										<c:set var="seatName" value="${seatList.seatName }"/>
										<c:if test="${reserved eq seatName}">
											<img id="${seatList.seatName }" alt="image" src='<c:url value="/img/seat/economy_pre.png"/>'
											 style="position: relative; left: 87.5px; top:735px; width: 45px;">
										</c:if>
									</c:forEach>
									<img id="${seatList.seatName }" alt="image" src='<c:url value="/img/seat/economy_not.png"/>'
									 style="position: relative; left: 87.5px; top:735px; width: 45px;" class="pre_economy" title="on"">
								</c:when>
							</c:choose>
						<%-- 좌석별 여백 --%>	
							<c:choose>
								<c:when test="${e % 9 == 0}">
									<div style="height: 28.5px;"></div>
								</c:when>
								<c:when test="${e % 3 == 0}">
									<span style="margin: 25px;"> </span>
								</c:when>
							</c:choose>
							<c:set var="e" value="${e + 1}" />
						</c:forEach>
					</div>
				</div>	
			</div>
			</div>
        </div>
	</div>
        
<!-- ====================================
———	좌석 및 탑승객
===================================== -->

      <div class="col-lg-4 pe-xl-6">
		      <!-- Breadcrumb -->
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb">
      <ul class="list-unstyled d-flex p-0 m-0">
        <li class="breadcrumb-item"><a href="index.html">NRT-ICN</a></li>
        <li class="breadcrumb-item active" aria-current="page">ICN-NRT</li>
      </ul>
    </nav>
        <div class="mb-6">
          <div class="border border-subtle rounded" style="padding: 0.75rem 1.5rem; font-size: 15px; font-weight: bold; color: black;">좌석
			  <div class="border border-primary rounded" style="padding: 0.75rem 1.5rem; margin-top: 1.2rem;">
				  프레미아42&nbsp;&nbsp;&nbsp;<img src='<c:url value="/img/seat/business_small_not.png"/>' alt="image">
				  <br>
				  <br>
				  이코노미35&nbsp;&nbsp;<img src='<c:url value="/img/seat/economy_not.png"/>' alt="image" style="width: 30px; height: 30px;">
			  </div>
		  </div>
        </div>
        <div class="mb-6">
          <div class="border border-subtle rounded" style="padding: 0.75rem 1.5rem; font-size: 15px; font-weight: bold; color: black;">탑승객
			  <div class="border border-primary rounded" style="padding: 0.75rem 1.5rem; margin-top: 1.2rem;">heesoo cho</div>
		  </div>
        </div>
      </div>
    </div>
  </div>
</section>

  </div> <!-- element wrapper ends -->
<nav class="navbar-expand-sm rounded shadow bg-light fixed-bottom">
	<div class="row">
		<div class="col-sm-6 col-lg-6"></div>
		<div class="col-sm-2 col-lg-2 align-self-center text-center">
			<h5>총 결제금액(세금포함) </h5>
		</div>
		<div class="col-sm-2 col-lg-2 align-self-center">
			<h5>2,345,678 원</h5>
		</div>
		<div class="col-sm-1 col-lg-1">
			<button type="submit" class="btn btn-outline-primary w-100">이전</button>
		</div>
		<div class="col-sm-1 col-lg-1">
			<button type="submit" class="btn btn-primary w-100">다음</button>
		</div>
	</div>
</nav>

<script type="text/javascript">

	/* 클릭 시 예약좌석 선택 */
	$(".pre_economy").click(function () {
		var pre = $(this).attr("id");
		/* 
		$("#"+pre).attr("src", "<c:url value="/img/seat/economy_sel.png"/>")
		$("#"+pre).attr("title", "off")
		
		if($("#"+pre).attr("title")=="off"){
			title = "off";
		}
		 */
		$.ajax({
			type: "get",
			url: "<c:url value="/reservation/select_seat"/>/"+pre,
			data: {"pre":pre},
			dataType: "text",
			//JSON 형식의 문자열을 제공받아 Javascipt 객체로 변환하여 매개변수에 저장
			success: function(result) {
				
				if($("#"+pre).attr("title")=="on"){
					$("#"+pre).attr("src", "<c:url value="/img/seat/economy_sel.png"/>")
					$("#"+pre).attr("title", "off")
				} else {
					$("#"+pre).attr("src", "<c:url value="/img/seat/economy_not.png"/>")
					$("#"+pre).attr("title", "on")
				}
				
			},
			error: function(xhr) {
				alert("에러코드(좌석 선택) = "+xhr.status);
			}
		});
	});
	/* 클릭 시 예약좌석 선택 */
	$(".pre_business").click(function () {
		var pre = $(this).attr("id");
		/* 
		선택하기 -> 이미 좌석을 골랐는데 다른 좌석을 누른다면 경고메세지 주기
		선택된 좌석 다시 누를 시 다시 돌아가도록 하기
		*/
		
		$.ajax({
			type: "get",
			url: "<c:url value="/reservation/select_seat"/>/"+pre,
			data: {"pre":pre},
			dataType: "text",
			//JSON 형식의 문자열을 제공받아 Javascipt 객체로 변환하여 매개변수에 저장
			success: function(result) {
				if($(".pre_business").attr("title")!="off"){
					
				} else {
					alert("이미 좌석을 선택하셨습니다.");
				}
				
				if($("#"+pre).attr("title")=="on"){
					$("#"+pre).attr("src", "<c:url value="/img/seat/business_sel.png"/>")
					$("#"+pre).attr("title", "off")
				} else {
					$("#"+pre).attr("src", "<c:url value="/img/seat/business_not.png"/>")
					$("#"+pre).attr("title", "on")
				}
				
			},
			error: function(xhr) {
				alert("에러코드(좌석 선택) = "+xhr.status);
			}
		});
	});
	
	
</script>
