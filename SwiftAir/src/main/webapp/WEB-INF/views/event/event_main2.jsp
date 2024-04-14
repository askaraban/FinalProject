<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   

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
——— CATEGORY GRID FULL
===================================== -->
<section class="py-7 py-md-10">
    <div class="container">
        <!-- Search Result Bar -->
        <div class="search-result-bar">
            <div class="col-md-5">
                <h2 class="fw-bolder mb-6">이벤트</h2>
                <h5 class="mb-8">스위프트에어 이벤트와 함께 특별한 여정을 시작해보세요:)</h5>
                <div class="d-flex align-items-center">
                    <div class="tapBtn" id="eventStatus">
                        <!-- input 태그 삭제 -->
                        <button class="btn-line ${param.statusId == null || param.statusId == '0' ? 'on' : ''}" onclick="fn_changeStatus(0);">진행중</button>
                        <button class="btn-line ${param.statusId == '1' ? 'on' : ''}" onclick="fn_changeStatus(1);">종료됨</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <%-- 현재 날짜 가져오기 --%>
            <c:set var="currentDate" value="<fmt:formatDate pattern='yyyy-MM-dd' value='${now}'/>" />

            <c:forEach var="event" items="${eventList}">
                <%-- 이벤트 종료일을 현재 날짜와 비교하여 상태 결정 --%>
                <c:set var="endDate" value="<fmt:formatDate pattern='yyyy-MM-dd' value='${event.eventEnd}'/>" />
                <c:set var="status" value="${endDate ge currentDate ? '진행중' : '종료됨'}" />
                <div class="col-md-6 col-lg-6">
                    <div class="card border-0 bg-transparent">
                        <a href="<c:url value="/event/detail"/>?eventId=${event.eventId}">
                            <img class="card-img rounded-5" src="<c:url value='/img/event/${fn:split(event.eventImg1, \"_\")[1]}'/>">
                        </a>
                        
                        <div class="card-body p-0 pt-5">
                            <div class="form-label" style="display: flex; justify-content: space-between;">
                                <span class="meta-date" style="font-size: 0.875rem;">
                                    <fmt:parseDate var="startDate" value="${event.eventStart}" pattern="yyyy-MM-dd HH:mm:ss" />
                                    <fmt:parseDate var="endDate" value="${event.eventEnd}" pattern="yyyy-MM-dd HH:mm:ss" />
                                    <fmt:formatDate pattern='yyyy-MM-dd' value='${startDate}' /> ~ 
                                    <fmt:formatDate pattern='yyyy-MM-dd' value='${endDate}' />
                                </span>
                                <span class="badge text-bg-primary fs-6" style="line-height: 1.2">${status}</span>
                            </div>
                            <h5 class="card-title fw-bolder lh-base">
                                <a href="<c:url value="/event/detail"/>?eventId=${event.eventId}">${event.eventTitle}</a>
                            </h5>
                        </div>
                    </div>
                </div>
            </c:forEach>        
        </div>
    <!-- ====================================
——— pagination
===================================== -->
<%-- 페이지 번호 출력 --%>
<section class="my-5">
  <nav aria-label="Page navigation example">
    <ul class="pagination" style="justify-content: center;">
      <li class="page-item me-2">
        <c:choose>
          <c:when test="${pager.startPage > pager.blockSize}">
            <a class="page-link" href="<c:url value="/event/main"/>?pageNum=${pager.prevPage}&statusId=${param.statusId}">
              <i class="fa fa-angle-left" aria-hidden="true"></i>
            </a>
          </c:when>
          <c:otherwise>
            <a class="page-link" href="javascript:void(0)">
              <i class="fa fa-angle-left" aria-hidden="true"></i>
            </a>
          </c:otherwise>
        </c:choose>
      </li>
      <c:forEach var="i" begin="${pager.startPage}" end="${pager.endPage}" step="1">
        <li class="page-item me-2">
          <c:choose>
            <c:when test="${pager.pageNum != i}">
              <a class="page-link" href="<c:url value="/event/main"/>?pageNum=${i}&statusId=${param.statusId}">${i}</a>
            </c:when>
            <c:otherwise>
              <a class="page-link" href="javascript:void(0)">${i}</a>
            </c:otherwise>
          </c:choose>
        </li>
      </c:forEach>
      <li class="page-item">
        <c:choose>
          <c:when test="${pager.endPage != pager.totalPage}">
            <a class="page-link" href="<c:url value="/event/main"/>?pageNum=${pager.nextPage}&statusId=${param.statusId}">
              <i class="fa fa-angle-right" aria-hidden="true"></i>
            </a>
          </c:when>
          <c:otherwise>
            <a class="page-link" href="javascript:void(0)">
              <i class="fa fa-angle-right" aria-hidden="true"></i>
            </a>
          </c:otherwise>
        </c:choose>
      </li>
    </ul>
  </nav>
</section>
</div>
</section>

<script>
    function fn_changeStatus(statusId) {
        location="<c:url value="/event/main"/>?statusId="+statusId;
    }
</script>

</body>