<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<!-- ====================================
———	MY BOOKINGS
===================================== -->
<section class="pb-8 pt-5 bg-light height100vh">
  <div class="container">

    <!-- Breadcrumb -->
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb">
      <h2 class="fw-normal mb-4 mb-md-0">예약 조회</h2>
      <ul class="list-unstyled d-flex p-0 m-0">
        <li class="breadcrumb-item"><a href="<c:url value = '/search/reservation/pre'/>">다가오는 여정</a></li>
        <li class="breadcrumb-item active" aria-current="page">지난 여정</li>
      </ul>
    </nav>

    <!-- My Bookings -->
    
    <c:if test=""></c:if>
    
    <table id="my-booking" class="display nowrap table-data-default" style="width:100%">
      <thead>
        <tr>
          <th  style="padding: 15px; padding-left: 20px;">결제번호</th>
          <th style="padding-left: 20px;">여정</th>
          <th>노선</th>
          <th>출발일</th>
          <th>도착일</th>
          <th>결제금액</th>
          
          <th>상태</th>
        </tr>
      </thead>
      <tbody>

        <c:forEach var="list" items="${searchList1 }">
        <tr>
          <td>
            <span>${list.paymentId }</span>
          </td>
          <td class="text-capitalize" style="padding: 20px;">
            <span>${list.routeDeparture }-${list.routeDestination }</span>
          </td>
          <td class="text-capitalize">
          	<span>${list.routeFlight }</span>
          </td>
          <td class="text-capitalize">
          	<c:set value="${list.scheduleDepartureDate }" var="departure1"/>
          	${fn:substring(departure1,0,10) }
          </td>
          <td class="test-capitalize">
          	<c:set value="${list.scheduleArrivalDate }" var="departure2"/>
          	${fn:substring(departure2,0,10) }
          </td>
          <td class="test-capitalize">
            <fmt:formatNumber value="${list.paymentTotal }" type="number"/>
          </td>
          <td class="test-capitalize">
	          <c:choose>
	          	<c:when test="${list.paymentMethod eq 0}">
	              <span>일반결제</span>
	          	</c:when>
		        <c:otherwise>
		          <span>포인트결제</span>
		        </c:otherwise>
	          </c:choose>
          </td>
        </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
</section>