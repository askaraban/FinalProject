<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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
———	나의 예약
===================================== -->
<section class="pb-8 pt-5 mt-9 height100vh">
  <div class="container">

    <!-- 나의 예약 -->
    <table id="my-booking" class="display nowrap table-data-default" style="width:100%">
      <thead style="text-align:center; border-bottom: 1px solid #dee2e6;">
		<tr>
         <th style="border-bottom: none; font-size: 20px;">제목</th>
	     <th style="border-bottom: none; font-size: 20px;">시작일</th>
	     <th style="border-bottom: none; font-size: 20px;">종료일</th>
	     <th style="border-bottom: none; font-size: 20px;">진행상태</th>
	     <th style="border-bottom: none; font-size: 20px;">편집</th>
        </tr>
      </thead>
     
      <tbody>
	  <%-- 게시글 목록 출력 --%> 
		<c:forEach var="event" items="${eventList}">
	        <tr>
	          <td class="text-capitalize" style="border-top: none; border-bottom: 1px solid #dee2e6; font-size: 18px; padding-top: 10px; padding-bottom: 10px;">${event.eventTitle}</td>
	          <td class="text-capitalize" align="center" style="border-top: none; border-bottom: 1px solid #dee2e6; font-size: 18px;">
	          	<fmt:parseDate var="startDate" value="${event.eventStart}" pattern="yyyy-MM-dd HH:mm:ss" />
               	<fmt:formatDate pattern='yyyy-MM-dd' value='${startDate}' /> 
	          </td>
	          <td class="text-capitalize" align="center" style="border-top: none; border-bottom: 1px solid #dee2e6; font-size: 18px;">
	          	<fmt:parseDate var="endDate" value="${event.eventEnd}" pattern="yyyy-MM-dd HH:mm:ss" />
               	<fmt:formatDate pattern='yyyy-MM-dd' value='${endDate}' /> 
	          </td>
	          <td align="center" style="border-top: none; border-bottom: 1px solid #dee2e6; font-size: 18px;">
	            <span class="badge text-bg-primary px-2 py-1">${event.eventStatus == 0 ? '진행중' : '종료됨'}</span>
	          </td>
	          <td class="td-buttons-2" style="border-top: none; border-bottom: 1px solid #dee2e6; font-size: 18px; text-align: center; vertical-align: middle;">
			    <div style="display: flex; justify-content: center; align-items: center; margin: 10px;"> <!-- 여백을 조정하는 부분입니다. -->
			        <a class="btn btn-outline-primary btn-sm me-lg-3 mb-0" href="<c:url value='/event/modify'/>?eventId=${event.eventId}" style="font-size: 15px;">
			            <i class="fa fa-edit"></i> 수정
			        </a>
			        <a class="btn btn-outline-danger btn-sm mb-0" href="<c:url value='/event/delete'/>?eventId=${event.eventId}" style="font-size: 15px;">
			            <i class="fa fa-times" aria-hidden="true"></i> 삭제
			        </a>
			    </div>
			  </td>
	        </tr>
		</c:forEach>	
      </tbody>
    </table>
  <div class="pb-8"></div>
<%-- 페이지 번호 출력 --%>
<section class="my-5">
  <nav aria-label="Page navigation example">
    <ul class="pagination" style="justify-content: center;">
      <li class="page-item me-2">
        <c:choose>
          <c:when test="${pager.startPage > pager.blockSize}">
            <a class="page-link" href="<c:url value="/event/list"/>?pageNum=${pager.prevPage}">
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
              <a class="page-link" href="<c:url value="/event/list"/>?pageNum=${i}">${i}</a>
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
            <a class="page-link" href="<c:url value="/event/list"/>?pageNum=${pager.nextPage}">
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


</div> <!-- element wrapper ends -->

</body>