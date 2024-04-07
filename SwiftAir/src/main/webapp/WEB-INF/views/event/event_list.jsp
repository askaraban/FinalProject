<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<body id="body" class="body-wrapper boxed-menu">

<section class="bg-light py-8">
  <div class="container">
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb" style="--bs-breadcrumb-divider: '>';">
      <h2 class="fw-normal mb-4 mb-md-0" style="font-size: 40px;">이벤트 목록</h2>
    </nav>
  </div>
</section>

<div class="main-wrapper">

<!-- ====================================
———	MY BOOKINGS
===================================== -->
<section class="pb-8 pt-5 mt-9 height100vh">
  <div class="container">

    <!-- My Bookings -->
    <table id="my-booking" class="display nowrap table-data-default" style="width:100%">
      <thead style="text-align:center">
		<tr>
          <th>번호</th>
          <th>제목</th>
          <th>시작일</th>
          <th>종료일</th>
          <th>진행상태</th>
          <th>편집</th>
        </tr>
      </thead>
     
      <tbody>
	  <%-- 게시글 목록 출력 --%> 
		<c:forEach var="event" items="${eventList}">
	        <tr>
	          <td class="text-capitalize">${event.eventId}</td>
	          <td class="text-capitalize">${event.eventTitle}</td>
	          <td class="text-capitalize" align="center">${event.eventStart}</td>
	          <td class="text-capitalize" align="center">${event.eventEnd}</td>
	          <td align="center">
	            <span class="badge text-bg-primary px-2 py-1">${event.eventStatus}</span>
	          </td>
	          <td class="td-buttons-2">
	            <div class="d-flex justify-content-center flex-column flex-lg-row">
	              <a class="btn btn-outline-primary btn-sm me-lg-3 mb-2" onclick="eventModify(${event.eventId});">
	                <i class="fa fa-edit"></i>
	                수정
	              </a>
	              <button type="button" class="btn btn-outline-danger btn-sm" onclick="eventDelete(${event.eventId});">
	                <i class="fa fa-times" aria-hidden="true"></i>
	                삭제
	              </button>
	            </div>
	          </td>
	        </tr>
		</c:forEach>	
      </tbody>
    </table>
  </div>
  
  <%-- 페이지 번호 출력 --%>
<section class="my-5">	
	<nav aria-label="Page navigation example">
    	<ul class="pagination" style="justify-content: center;">
			<li class="page-item me-2">
				<c:choose>
					<c:when test="${pager.startPage > pager.blockSize }">
						<a href="<c:url value="/event/list"/>?pageNum=${pager.prevPage}">[이전]
							<i class="fa fa-angle-left" aria-hidden="true"></i>
						</a>	
					</c:when>
					<c:otherwise>
						[이전]
					</c:otherwise>
				</c:choose>
			</li>	
				<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }" step="1">
					<c:choose>
						<c:when test="${pager.pageNum != i }">
							<a href="<c:url value="/event/list"/>?pageNum=${i}">[${i}]</a>
						</c:when>
						<c:otherwise>
							[${i}]
						</c:otherwise>
					</c:choose>
				</c:forEach>
				
			<li class="page-item">	
				<c:choose>
					<c:when test="${pager.endPage != pager.totalPage }">
						<a href="<c:url value="/event/list"/>?pageNum=${pager.nextPage}">[다음]
							 <i class="fa fa-angle-right" aria-hidden="true"></i>
						</a>	 
					</c:when>
					<c:otherwise>
						[다음]
					</c:otherwise>
				</c:choose>
			</li>
		</ul>
	</nav>			
</section>
</section>


</div> <!-- element wrapper ends -->

</body>
  