<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
						<button type="button" class="btn-line on" onclick="location.href='main'">
						진행중
						</button>
						<button class="btn-line" onclick="location.href='main'">
						종료됨
						</button>
						
					</div>
				</div>
			</div>
    	</div>

		<div class="row">
			<c:forEach var="eventname" items="${eventnameList}">
				<div class="col-md-6 col-lg-6">
					<div class="card border-0 bg-transparent">
						
						<a href="detail">
							<img class="card-img rounded-5" src="<c:url value="/img/event/${event.eventImg1}"/>">
						</a>
						
						<div class="card-body p-0 pt-5">
			            	<div class="form-label" style="display: flex; justify-content: space-between;">
			              		<date class="meta-date" style="font-size: 0.875rem;">${event.eventStart}~${event.eventEnd}</date>
			              		<span class="badge text-bg-primary fs-6" style="line-height: 1.2">${event.eventStatus}</span>
			            	</div>
							<h5 class="card-title fw-bolder lh-base">
								<a href="detail">${event.eventTitle}</a>
							</h5>
						</div>
					</div>
				</div>
			</c:forEach>		
		</div>
    <!-- ====================================
———	pagination
===================================== -->
<%--
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
--%>

<%-- 페이지 번호 출력 --%>
	<c:choose>
		<c:when test="${pager.startPage > pager.blockSize }">
			<a href="<c:url value="/event/main"/>?pageNum=${pager.prevPage}">[이전]</a>
		</c:when>
		<c:otherwise>
			[이전]
		</c:otherwise>
	</c:choose>
	
	<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }" step="1">
		<c:choose>
			<c:when test="${pager.pageNum != i }">
				<a href="<c:url value="/event/main"/>?pageNum=${i}">[${i}]</a>
			</c:when>
			<c:otherwise>
				[${i}]
			</c:otherwise>
		</c:choose>
	</c:forEach>
	
	<c:choose>
		<c:when test="${pager.endPage != pager.totalPage }">
			<a href="<c:url value="/event/main"/>?pageNum=${pager.nextPage}">[다음]</a>
		</c:when>
		<c:otherwise>
			[다음]
		</c:otherwise>
	</c:choose>

	</div>
</section>

</body>
